// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FetchNodeDetails",
    platforms: [.iOS(.v13), .macOS(.v10_12)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "FetchNodeDetails",
            targets: ["FetchNodeDetails"]),
    ],
    dependencies: [
        .package(url: "https://github.com/argentlabs/web3.swift", branch: "develop"),
        .package(url: "https://github.com/mxcl/PromiseKit", from: "6.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "FetchNodeDetails" ,dependencies: ["web3.swift", "PromiseKit"], path: "Sources",resources: [.process("FetchNodeDetails/Resources/abi.json")]),
        .testTarget(
            name: "FetchNodeDetailsTests",
            dependencies: ["FetchNodeDetails"]),
    ]
)
