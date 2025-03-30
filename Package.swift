// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "MichiganCities",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
    ],
    products: [
        .library(
            name: "MichiganCities",
            targets: ["MichiganCities"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/tomhoag/SwiftLintPlugin.git", branch: "main")
    ],
    targets: [
        .target(
            name: "MichiganCities",
            dependencies: [],
            plugins: [
                .plugin(name: "SwiftLintPlugin", package: "SwiftLintPlugin")
            ]
        )
    ]
)
