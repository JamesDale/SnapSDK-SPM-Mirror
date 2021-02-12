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
            targets: ["SCSDKCoreKit", "SCSDKBitmojiKit"]),
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
        
    ],
    targets: [
        .binaryTarget(
            name: "SCSDKBitmojiKit",
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
        )
    ]
)
