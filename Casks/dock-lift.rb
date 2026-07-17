cask "dock-lift" do
  version "1.0.0"
  sha256 "d54cb85b481e9d8cf23980a730255c759f364227a34aed80f8398a7be697f932"

  url "https://github.com/jaywcjlove/dock-lift/releases/download/v#{version}/DockLift_v#{version}.zip"
  name "Dock Lift"
  desc "Bring app windows to your current display when clicking Dock icons on macOS."
  homepage "https://github.com/jaywcjlove/dock-lift"

  depends_on macos: ">= :monterey"

  app "DockLift.app"

  zap trash: [
    "~/Library/Application Support/com.wangchujiang.docklift",
    "~/Library/Caches/com.wangchujiang.docklift",
    "~/Library/WebKit/com.wangchujiang.docklift",
    "~/Library/Preferences/com.wangchujiang.docklift.plist",
  ]
end