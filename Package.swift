// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "RealtimeOpenAI",
    platforms: [
        .iOS(.v17),
        .tvOS(.v17),
        .macOS(.v14),
        .watchOS(.v10),
        .visionOS(.v1),
        .macCatalyst(.v17),
    ],
    products: [
        .library(name: "RealtimeOpenAI", type: .static, targets: ["RealtimeOpenAI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/stasel/WebRTC.git", branch: "latest"),
    ],
    targets: [
        .target(name: "RealtimeOpenAI", dependencies: ["WebRTC"], path: "./src"),
    ]
)
