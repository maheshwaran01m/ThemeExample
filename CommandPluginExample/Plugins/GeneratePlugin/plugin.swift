//
//  plugin.swift
//  CommandPluginExample
//
//  Created by MAHESHWARAN on 19/04/25.
//

import PackagePlugin
import Foundation

@main
struct GeneratePlugin: CommandPlugin {
  
  func performCommand(
    context: PluginContext,
    arguments: [String]
  ) async throws {
    
    let process = Process()
    process.executableURL = URL(fileURLWithPath: "/usr/bin/git")
    process.arguments = ["log", "--pretty=format:- %an <%ae>%n"]
    
    let outputPipe = Pipe()
    process.standardOutput = outputPipe
    try process.run()
    process.waitUntilExit()
    
    let outputData = outputPipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(decoding: outputData, as: UTF8.self)
    
    let contributors = Set(output.components(separatedBy: CharacterSet.newlines)).sorted().filter { !$0.isEmpty }
    try contributors.joined(separator: "\n").write(toFile: "CONTRIBUTORS.txt", atomically: true, encoding: .utf8)
  }
}
