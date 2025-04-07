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
      url: "https://github.com/abinchy/mad/releases/download/1.0.1/Mad_1.0.1.zip",
      checksum: "025dd011719316968a7e70e567dbc6c18533571551166b712b95ee89b3950b5c"
    ),
  ]
)
