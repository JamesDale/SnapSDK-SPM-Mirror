// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SnapSDK-SPM-Mirror",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SCSDKBitmojiKit",
            targets: ["SCSDKBitmojiKitTargets"]),
        .library(
            name: "SCSDKLoginKit",
            targets: ["SCSDKCoreKit", "SCSDKLoginKit"]),
        .library(
            name: "SCSDKCreativeKit",
            targets: ["SCSDKCoreKit", "SCSDKCreativeKit"]),
        .library(
            name: "SCSDKStoryKit",
            targets: ["SCSDKCoreKit", "SCSDKStoryKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pinterest/PINCache", .branch("master")),
        .package(url: "https://github.com/pinterest/PINOperation",
                 .exact("1.2.1")),
    ],
    targets: [
        .binaryTarget(
            name: "SCSDKBitmojiKit",
            path: "Sources/SCSDKBitmojiKit/SCSDKBitmojiKit.xcframework"
        ),
        .binaryTarget(
            name: "SCSDKCoreKit",
            path: "Sources/SCSDKCoreKit/SCSDKCoreKit.xcframework"
        ),
        .binaryTarget(
            name: "SCSDKCreativeKit",
            path: "Sources/SCSDKCreativeKit/SCSDKCreativeKit.xcframework"
        ),
        .binaryTarget(
            name: "SCSDKLoginKit",
            path: "Sources/SCSDKLoginKit/SCSDKLoginKit.xcframework"
        ),
        .binaryTarget(
            name: "SCSDKStoryKit",
            path: "Sources/SCSDKStoryKit/SCSDKStoryKit.xcframework"
        ),
        .target(name: "SCSDKBitmojiKitTargets",
                dependencies: [
                    .target(name: "SCSDKBitmojiKit"),
                    .product(name: "PINCache", package: "PINCache"),
                    .product(name: "PINOperation", package: "PINOperation")
                ],
                path: "Sources/SCSDKBitmojiKitTargets")
    ]
)
