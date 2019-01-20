// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftSyntax-issue-ellipsis",
    products: [
        .executable(name: "SwiftSyntax-issue-ellipsis", targets: ["SwiftSyntax-issue-ellipsis"]),
        ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-syntax.git", .exact("0.40200.0")),
        ],
    targets: [
        .target(name: "SwiftSyntax-issue-ellipsis", dependencies: ["SwiftSyntax"]),
        .testTarget(name: "SwiftSyntax-issue-ellipsisTests", dependencies: ["SwiftSyntax-issue-ellipsis"]),
    ]
)


