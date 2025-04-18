// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ColorExample",
  platforms: [.iOS(.v16)],
  products: [
    .library(name: "ColorExample", targets: ["ColorExample"]),
  ],
  dependencies: [
    .package(url: "https://github.com/SwiftGen/SwiftGenPlugin", from: "6.6.0")
  ],
  targets: [
    .target(
      name: "ColorExample",
      plugins: [.plugin(name: "SwiftGenPlugin", package: "SwiftGenPlugin")]
    ),
  ]
)
