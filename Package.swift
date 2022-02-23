// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "DiffMatchPatch",
    products: [
        .library(name: "DiffMatchPatch", type: .static, targets: ["diff_match_patch"])
    ],
    targets: [
        .target(name: "diff_match_patch"),
        .target(name: "DiffMatchPatch", dependencies:["diff_match_patch"]),
//        .testTarget(name: "DiffMatchPatchTests", dependencies: ["DiffMatchPatch"])
    ]
)
