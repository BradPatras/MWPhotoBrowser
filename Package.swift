// swift-tools-version: 5.6

import PackageDescription

let package = Package(
	name: "MWPhotoBrowser",
	platforms: [.iOS(.v16)],
	products: [
		.library(
			name: "MWPhotoBrowser",
			targets: ["MWPhotoBrowser"]
		)
	],
	targets: [
		.binaryTarget(
			name: "MWPhotoBrowser",
			url: "https://github.com/BradPatras/MWPhotoBrowser/releases/download/v3.0.1/MWPhotoBrowser.xcframework.zip",
			checksum: "14abedc3b24dff9da4d6b77d182baa0d250451d7c495ce9978445c95f2fa0308"
		)
	]
)
