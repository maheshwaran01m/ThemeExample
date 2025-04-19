// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CommandPluginExample",
  products: [
    .library(name: "CommandPluginExample", targets: ["CommandPluginExample"]),
  ],
  targets: [
    .target(name: "CommandPluginExample"),
  ]
)
