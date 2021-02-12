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
    ]
)
