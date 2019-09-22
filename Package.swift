// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppKitUtil",
    platforms: [
        .macOS(.v10_11)
    ],
    products: [
        .library(name: "AppKitUtil", targets: ["AppKitUtil"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "AppKitUtil", dependencies: ["Tree2"]),
        .testTarget(name: "AppKitUtilTests", dependencies: ["AppKitUtil"]),
    ]
)
