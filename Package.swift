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
            targets: ["SCSDKBitmojiKit"]),
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
        .package(url: "https://github.com/pinterest/PINCache",
                 .upToNextMajor(from: Version(2, 3, 0))),
        .package(url: "https://github.com/pinterest/PINOperation",
                 .exact("1.2.1"))
    ],
    targets: [
        .binaryTarget(
            name: "SCSDKBitmojiKit-Internal",
            path: "SCSDKBitmojiKit.xcframework"
        ),
        .binaryTarget(
            name: "SCSDKCoreKit",
            path: "SCSDKBitmojiKit.xcframework"
        ),
        .binaryTarget(
            name: "SCSDKCreativeKit",
            path: "SCSDKCreativeKit.xcframework"
        ),
        .binaryTarget(
            name: "SCSDKLoginKit",
            path: "SCSDKLoginKit.xcframework"
        ),
        .binaryTarget(
            name: "SCSDKStoryKit",
            path: "SCSDKStoryKit.xcframework"
        ),
        .target(name: "SCSDKBitmojiKit",
                dependencies: ["SCSDKBitmojiKit-Internal",
                               "PINCache",
                               "PINOperation"])
    ]
)
