// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Japx",
    platforms: [.macOS(.v10_12), .iOS(.v10)],
    products: [
        .library(name: "Japx", targets: ["Japx"]),
        .library(name: "JapxAlamofire", targets: ["JapxAlamofire"])
    ],
    dependencies: [
       .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0"))
    ],
    targets: [
        .target(name: "Japx", path: "Japx/Classes/Core"),
        .target(name: "JapxAlamofire", dependencies: ["Japx", "Alamofire"], path: "Japx/Classes/Alamofire"),
    ]
)
