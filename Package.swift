// swift-tools-version:6.0
import PackageDescription

let package = Package(
  name: "Mad",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "Mad", targets: ["MadTarget"]),
  ],
  targets: [
    .target(
      name: "MadTarget",
      dependencies: [
        .target(name: "Mad")
      ]
    ),
    .binaryTarget(
      name: "Mad",
      url: "https://github.com/abinchy/mad/releases/download/1.0.2/Mad_1.0.2.zip",
      checksum: "f64db501195001a82b9132efaa81199fa23496d4e9df950745be0cf25ab2b33c"
    ),
  ]
)
