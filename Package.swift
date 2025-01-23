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
			url: "https://github.com/BradPatras/MWPhotoBrowser/releases/download/v3.0.0/MWPhotoBrowser.xcframework.zip",
			checksum: "f04d895f8e80897d71622e3d4a36e935364c6686af8fb325c14171500f90d3f5"
		)
	]
)
