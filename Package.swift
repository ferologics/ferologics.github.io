// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "www.ferologics.com",
    dependencies: [
      .package(name: "Html", url: "https://github.com/pointfreeco/swift-html.git", from: "0.3.0"),
      .package(url: "https://github.com/apple/swift-system", from: "0.0.1")
    ],
    targets: [
        .target(
            name: "web",
            dependencies: [
              .product(name: "Html", package: "Html"),
              .product(name: "SystemPackage", package: "swift-system")
            ],
            path: "Sources/www.ferologics.com/"
        )
    ]
)
