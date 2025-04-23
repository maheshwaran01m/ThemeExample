import Foundation

let arguments = ProcessInfo().arguments

if arguments.count < 3 {
  print("missing arguments")
  exit(1)
}

let (input, output) = (arguments[1], arguments[2])

var generatedCode = """
    
    import Foundation
    import SwiftUI
    
    private typealias PlatformColor = UIColor
    
    public struct AppColor: Sendable {
      
      public let light: String
      public let dark: String
    
      public init(light: String, dark: String) {
        self.light = light
        self.dark = dark
      }
    
    
    """

struct AppColors: Decodable {
  
  let results: [Result]
  
  struct Result: Decodable {
    let name: String
    let light: String
    let dark: String
  }
}

let contentsJsonURL = URL(fileURLWithPath: "\(input)")

let jsonData = try Data(contentsOf: contentsJsonURL)

let decodedColors = try JSONDecoder().decode(AppColors.self, from: jsonData)

decodedColors.results.forEach { i in
  generatedCode.append(" public static let \(i.name) = AppColor(light: \"\(i.light)\", dark: \"\(i.dark)\") \n\n")
}

generatedCode += #"""
  
  }
  
  extension AppColor: View {
    
    public var body: some View {
      PreviewColor(appColor: self)
    }
  
    private struct PreviewColor: View {
     
       @SwiftUI.Environment(\.colorScheme) private var colorScheme
  
       let appColor: AppColor
  
       var body: some View {
         let value = colorScheme == .dark ? appColor.dark : appColor.light
         SwiftUI.Color(uiColor: .init(hex: value) ?? .black)
       }
    }
  }
  
  
  // MARK: - Helper
  
  public extension PlatformColor {
    
    convenience init?(hex: String) {
  
      var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
      hexSanitized = hexSanitized.hasPrefix("#") ? String(hexSanitized.dropFirst()) : hexSanitized
      
      var rgb: UInt64 = 0
      guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }
      
      let r, g, b: CGFloat
      switch hexSanitized.count {
      case 6:
        r = CGFloat((rgb & 0xFF0000) >> 16) / 255
        g = CGFloat((rgb & 0x00FF00) >> 8) / 255
        b = CGFloat(rgb & 0x0000FF) / 255
        self.init(red: r, green: g, blue: b, alpha: 1.0)
        
      default:
        return nil
      }
    }
  }
  
  """#

try generatedCode.write(to: URL(fileURLWithPath: output), atomically: true, encoding: .utf8)
