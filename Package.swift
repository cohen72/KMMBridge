// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/cohen72/KMMBridge/co/yehuda/allshared-kmmbridge/0.1.1/allshared-kmmbridge-0.1.1.zip"
let remoteKotlinChecksum = "7e2518515d05fb8c0334cc33e0f5d67a1b20fbb4b29c86dce025514323c2364b"
let packageName = "allshared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)