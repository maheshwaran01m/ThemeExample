// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "BuildPluginExample",
  platforms: [.iOS(.v16)],
  products: [
    .library(name: "BuildPluginExample", targets: ["BuildPluginExample"]),
  ],
  targets: [
    .target(name: "BuildPluginExample", dependencies: [], plugins: ["AssetConstants"]),
    .executableTarget(name: "AssetConstantsExec"),
    .plugin(name: "AssetConstants", capability: .buildTool(), dependencies: ["AssetConstantsExec"]),
  ]
)
