// swift-tools-version:5.3

import PackageDescription

import PackageDescription

let package = Package(
  name: "AwesomePackage",
  platforms: [
    .iOS(.v11),
  ],
  products: [
    .library(
      name: "AwesomePackage",
      targets: ["AwesomePackage"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/SwiftyTesseract/libtesseract.git", from: "0.1.0")
  ],
  targets: [
    .target(
      name: "AwesomePackage",
      dependencies: ["libtesseract"],
      linkerSettings: [.linkedLibrary("z"), .linkedLibrary("c++")]
    ),
  ]
)
