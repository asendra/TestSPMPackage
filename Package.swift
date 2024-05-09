// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestSPMPackage",
    products: [
        .library(
            name: "TestSPMPackage",
            targets: ["TestSPMPackage"]),
    ],
    targets: [
//		.binaryTarget(
//			name: "Library",
//			path: "your-framework-local-path"
//		),
//		.binaryTarget(
//			name: "Library",
//			url: "your-framework-url",
//			checksum: "desired-checksum"
//		),
        .target(
            name: "TestSPMPackage",
			dependencies: [
				"Library"
			]
		),
        .testTarget(
            name: "TestSPMPackageTests",
            dependencies: ["TestSPMPackage"]),
    ]
)
