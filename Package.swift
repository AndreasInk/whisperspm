// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "whisper",
    products: [
        .library(
            name: "whisper",
            targets: ["whisper"])
    ],
    targets: [
        .target(name: "whisper", dependencies:[], cSettings: [.unsafeFlags(["-O3", "-DGGML_USE_ACCELERATE=1"])])
    ],
    cxxLanguageStandard: CXXLanguageStandard.cxx11
)
