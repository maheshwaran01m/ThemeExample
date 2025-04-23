// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CustomJsonBuildExample",
  platforms: [.iOS(.v16)],
  products: [
    .library(name: "CustomJsonBuildExample", targets: ["CustomJsonBuildExample"]),
  ],
  targets: [
    .target(name: "CustomJsonBuildExample", plugins: ["JsonPlugin"]),
    .executableTarget(name: "ConstantExec"),
    .plugin(name: "JsonPlugin", capability: .buildTool(), dependencies: ["ConstantExec"])
  ]
)
