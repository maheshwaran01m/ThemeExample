import PackagePlugin

struct AssetConstant: BuildToolPlugin {
  
  func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
    guard let target = target as? SourceModuleTarget else {
      return []
    }
    
    return try target.sourceFiles(withSuffix: "xcassets").map { asset in
      let base = asset.url.path()
      let input = asset.url

      let output = context.pluginWorkDirectoryURL.appending(component: "\(base).swift")
      
      return .buildCommand(
        displayName: "Generating constants for \(base)",
        executable: try context.tool(named: "AssetConstantsExec").url,
        arguments: [input.path(), output.path()],
        inputFiles: [input],
        outputFiles: [output])
    }
  }
}
