// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "JsonBuildExample",
  platforms: [.iOS(.v16)],
  products: [
    .library(name: "JsonBuildExample", targets: ["JsonBuildExample"]),
  ],
  targets: [
    .target(name: "JsonBuildExample", plugins: ["JsonPlugin"]),
    .executableTarget(name: "ConstantExec"),
    .plugin(name: "JsonPlugin", capability: .buildTool(), dependencies: ["ConstantExec"])
  ]
)
