cask "dock-lift" do
  version "1.1.0"
  sha256 "4e85997abc9574b64ce0e8a7d2c9a438d5fef8f19330cfb8a1dc4cccf838c9b0"

  url "https://github.com/jaywcjlove/dock-lift/releases/download/v#{version}/DockLift_v#{version}.zip"
  name "Dock Lift"
  desc "Bring app windows to your current display when clicking Dock icons on macOS."
  homepage "https://github.com/jaywcjlove/dock-lift"

  depends_on macos: :monterey

  app "DockLift.app"

  zap trash: [
    "~/Library/Application Support/com.wangchujiang.docklift",
    "~/Library/Caches/com.wangchujiang.docklift",
    "~/Library/WebKit/com.wangchujiang.docklift",
    "~/Library/Preferences/com.wangchujiang.docklift.plist",
  ]
end