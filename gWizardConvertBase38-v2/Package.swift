// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "gWizardConvertBase38",
    products: [
        .library(name: "gWizardConvertBase38", targets: ["gWizardConvertBase38"]),
    ],
    targets: [
        .target(name: "gWizardConvertBase38", path: "Sources/gWizardConvertBase38"),
        .testTarget(name: "gWizardConvertBase38Tests", dependencies: ["gWizardConvertBase38"], path: "Tests/gWizardConvertBase38Tests")
    ]
)
