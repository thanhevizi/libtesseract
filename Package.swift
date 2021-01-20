// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "AwesomePackage",
  platforms: [
    // These are the minimum versions libtesseract supports
    .macOS(.v10_13),
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
