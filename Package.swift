// swift-tools-version:5.7

import PackageDescription

let package = Package(
  name: "braze-swift-sdk",
  defaultLocalization: "en",
  platforms: [
    .iOS(.v11),
    .tvOS(.v11)
  ],
  products: [
    .library(
      name: "BrazeKit",
      targets: ["BrazeKit", "BrazeKitResources"]
    ),
    .library(
      name: "BrazeUI",
      targets: ["BrazeUI"]
    ),
    .library(
      name: "BrazeUI-prebuilt",
      targets: ["BrazeUI-prebuilt", "BrazeUIResources"]
    ),
    .library(
      name: "BrazeLocation",
      targets: ["BrazeLocation"]
    ),
    .library(
      name: "BrazeNotificationService",
      targets: ["BrazeNotificationService"]
    ),
    .library(
      name: "BrazePushStory",
      targets: ["BrazePushStory"]
    ),
    .library(
      name: "BrazeKitCompat",
      targets: ["BrazeKitCompat"]
    ),
    .library(
      name: "BrazeUICompat",
      targets: ["BrazeUICompat"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.13.2"),
    /* ${dependencies-start} */
    /* ${dependencies-end} */
  ],
  targets: [
    .binaryTarget(
      name: "BrazeKit",
      url: "https://github.com/hokstuff/braze-swift-sdk/releases/download/6.6.0/BrazeKit.zip",
      checksum: "e0c60bdf823ebabd6c0d5bc8fe5dab0f4b998b2c3cd738466b4a58193e42670e"
    ),
    .target(
      name: "BrazeKitResources",
      resources: [
        .process("Resources"),
      ]
    ),
    .target(
      name: "BrazeUI",
      dependencies: [
        .target(name: "BrazeKit"),
      ],
      resources: [.process("Resources")]
    ),
    .binaryTarget(
      name: "BrazeUI-prebuilt",
      url: "https://github.com/hokstuff/braze-swift-sdk/releases/download/6.6.0/BrazeUI-prebuilt.zip",
      checksum: "d189decc34e7d3462d08af586f2754898ecd20ccbfb9b2bb1aacb469852103b7"
    ),
    .target(
      name: "BrazeUIResources",
      resources: [
        .process("Resources"),
      ]
    ),
    .binaryTarget(
      name: "BrazeLocation",
      url: "https://github.com/hokstuff/braze-swift-sdk/releases/download/6.6.0/BrazeLocation.zip",
      checksum: "76af76fc3ae0cfc2db0b6d7891061a2335507239c1903691561d61431bf3c738"
    ),
    .binaryTarget(
      name: "BrazeNotificationService",
      url: "https://github.com/hokstuff/braze-swift-sdk/releases/download/6.6.0/BrazeNotificationService.zip",
      checksum: "29a11d0e5354ad8c8e59122f406d0e47528ac1013f11186d1c21f23c993c371a"
    ),
    .binaryTarget(
      name: "BrazePushStory",
      url: "https://github.com/hokstuff/braze-swift-sdk/releases/download/6.6.0/BrazePushStory.zip",
      checksum: "c25b6f3bd7f9bfd0eea992e112afcc065dc564dfcbe2887ec5fa63aea8c6f196"
    ),
    .target(
      name: "BrazeKitCompat",
      dependencies: [
        .target(name: "BrazeKit"),
        .target(name: "BrazeLocation"),
      ]
    ),
    .target(
      name: "BrazeUICompat",
      dependencies: [
        "BrazeKitCompat",
        "SDWebImage",
      ],
      resources: [
        .process("ABKNewsFeed/Resources"),
        .process("ABKInAppMessage/Resources"),
        .process("ABKContentCards/Resources")
      ],
      publicHeadersPath: "include/AppboyUI"
    ),
  ]
)
