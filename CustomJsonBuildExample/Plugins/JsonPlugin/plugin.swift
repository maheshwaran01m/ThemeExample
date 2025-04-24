import PackagePlugin
import Foundation

@main
struct JsonPlugin: BuildToolPlugin {
  
  func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
    
    guard let target = target as? SourceModuleTarget else {
      return []
    }
    return try target.sourceFiles(withSuffix: "json")
      .map { asset in
        
        let base = asset.url.lastPathComponent.split(separator: ".")[0]
        let inputURL = asset.url
        
        let outputURL = context.pluginWorkDirectoryURL.appending(path: "\(base).swift")
        print("[Plugin] Output URL - \(outputURL.path())")
        
        return .buildCommand(
          displayName: "Generating constants for \(base)",
          executable: try context.tool(named: "ConstantExec").url,
          arguments: [inputURL.path(), outputURL.path()],
          inputFiles: [inputURL],
          outputFiles: [outputURL]
        )
      }
  }
}
