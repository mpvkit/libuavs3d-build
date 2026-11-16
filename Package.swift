// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libuavs3d",
    platforms: [.macOS(.v12), .iOS(.v15), .tvOS(.v15)],
    products: [
        .library(
            name: "Libuavs3d",
            targets: ["_Libuavs3d"]
        ),
    ],
    targets: [
        // Need a dummy target to embedded correctly.
        // https://github.com/apple/swift-package-manager/issues/6069
        .target(
            name: "_Libuavs3d",
            dependencies: ["Libuavs3d"],
            path: "Sources/_Dummy"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libuavs3d",
            url: "https://github.com/mpvkit/libuavs3d-build/releases/download/1.2.0/Libuavs3d.xcframework.zip",
            checksum: "de4c7c82d27de27ba0457385f12739bc1bc0cc8bbd4d9754a3561a90d4873ebd"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
