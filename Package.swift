// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "APSSPMediationMaio",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "APSSPMediationMaio", targets: ["APSSPMediationMaio"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IGAWorksDev/ap-APSSPSDK-SPM.git", from: "3.4.0"),
        .package(url: "https://github.com/imobile/MaioSDK-v2-iOS.git", exact: "2.2.1"),
    ],
    targets: [
        .target(name: "APSSPMediationMaio",
                dependencies: [
                    .product(name: "APSSPSDK", package: "ap-APSSPSDK-SPM"),
                    .product(name: "MaioSDK", package: "MaioSDK-v2-iOS"),
                ],
                path: "Sources/MediationMaio"),
    ]
)
