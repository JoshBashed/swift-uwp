// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-uwp",
    products: [
        .library(name: "UWP", type: .dynamic, targets: ["UWP"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/moreSwift/swift-cwinrt",
            .upToNextMinor(from: "0.1.0")
        ),
        .package(
            url: "https://github.com/moreSwift/swift-windowsfoundation",
            .upToNextMinor(from: "0.1.0")
        ),
    ],
    targets: [
        .target(
            name: "UWP",
            dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation"),
            ]
        ),
    ]
)
