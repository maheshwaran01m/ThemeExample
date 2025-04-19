import Foundation

let arguments = ProcessInfo().arguments

if arguments.count < 3 {
  print("missing arguments")
  exit(1)
}
let (input, output) = (arguments[1], arguments[2])

struct Contents: Decodable {
  let images: [Image]
}

struct Image: Decodable {
  let filename: String?
}

var generatedCode = """
    import Foundation
    import SwiftUI
    
    public struct ImageConstant {
    
    public init() {}
    
    
    """

try FileManager.default.contentsOfDirectory(atPath: input).forEach { dirent in
  guard dirent.hasSuffix("imageset") else {
    return
  }
  
  let contentsJsonURL = URL(fileURLWithPath: "\(input)/\(dirent)/Contents.json")
  let jsonData = try Data(contentsOf: contentsJsonURL)
  
  let assetcatalogContents = try JSONDecoder().decode(Contents.self, from: jsonData)
  let hasImage = assetcatalogContents.images.filter { $0.filename != nil }.isEmpty == false
  
  if hasImage {
    let basename = contentsJsonURL.deletingLastPathComponent().deletingPathExtension().lastPathComponent
    
    generatedCode.append(" public static let \(basename) = Image(\"\(basename)\", bundle: .module)\n\n")
  }
}

generatedCode += """
  
  }
  """

try generatedCode.write(to: URL(fileURLWithPath: output), atomically: true, encoding: .utf8)
