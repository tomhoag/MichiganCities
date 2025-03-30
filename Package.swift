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
    dependencies: [],
    targets: [
        .target(
            name: "MichiganCities",
            dependencies: []
        )
    ]
)
