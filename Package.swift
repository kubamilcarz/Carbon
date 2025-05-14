// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Carbon",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Carbon",
            targets: ["Carbon"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/mixpanel/mixpanel-swift.git", "4.1.0"..<"5.0.0"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", "11.0.0"..<"12.0.0"),
        .package(url: "https://github.com/TelemetryDeck/SwiftClient.git", "2.8.0"..<"3.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Carbon",
            dependencies: [
                .product(name: "Mixpanel", package: "mixpanel-swift"),
                .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
                .product(name: "TelemetryDeck", package: "SwiftClient"),
                .product(name: "TelemetryClient", package: "SwiftClient")
            ]
        ),
        .testTarget(
            name: "CarbonTests",
            dependencies: ["Carbon"]
        ),
    ]
)


