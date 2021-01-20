// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "libtesseract",
  platforms: [
    .iOS(.v11),
  ],
  products: [
    .library(
      name: "libtesseract",
      targets: ["libtesseract"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/SwiftyTesseract/libtesseract.git", from: "0.1.0")
  ],
  targets: [
    .target(
      name: "libtesseract",
      dependencies: ["libtesseract"],
      linkerSettings: [.linkedLibrary("z"), .linkedLibrary("c++")]
    ),
  ]
)
