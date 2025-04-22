// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ficfacfoe-wasm",
    products: [
        .executable(name: "ficfacfoe-wasm", targets: ["gWizardConvertBase38"]),
    ],
    targets: [
        .executableTarget(
            name: "gWizardConvertBase38",
            path: "Sources/gWizardConvertBase38"
        )
    ]
)
