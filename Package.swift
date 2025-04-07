// swift-tools-version:6.0
import PackageDescription

let package = Package(
  name: "Mad",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "Mad", targets: ["MadTarget"]),
  ],
  dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "11.12.0"),
        .package(url: "https://github.com/myTargetSDK/mytarget-ios-spm", exact: "5.26.0"),
        .package(url: "https://github.com/yandexmobile/yandex-ads-sdk-ios", exact: "7.12.0"),
  ],
  targets: [
    .target(
      name: "MadTarget",
      dependencies: [
        .target(name: "Mad"),
        .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
        .product(name: "MyTargetSDK", package: "mytarget-ios-spm"),
        .product(name: "YandexMobileAdsPackage", package: "yandex-ads-sdk-ios"),
      ]
    ),
    .binaryTarget(
      name: "Mad",
      url: "https://github.com/abinchy/mad/releases/download/1.0.3/Mad_1.0.3.zip",
      checksum: "f64db501195001a82b9132efaa81199fa23496d4e9df950745be0cf25ab2b33c"
    ),
  ]
)
