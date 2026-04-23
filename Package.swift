// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libuavs3d",
    platforms: [.macOS(.v11), .iOS(.v14), .tvOS(.v14)],
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
            url: "https://github.com/mpvkit/libuavs3d-build/releases/download/1.0.0/Libuavs3d.xcframework.zip",
            checksum: "beb74c7447a1d5bebf2b38bbd9f24a455cb36444dc2a8b896ddb2354565413ab"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
