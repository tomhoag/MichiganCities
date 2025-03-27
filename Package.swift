// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MichiganCities",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "MichiganCities",
            targets: ["MichiganCities"]),
    ],
    targets: [
        .target(
            name: "MichiganCities",
            dependencies: []),
        .testTarget(
            name: "MichiganCitiesTests",
            dependencies: ["MichiganCities"]),
    ]
)
