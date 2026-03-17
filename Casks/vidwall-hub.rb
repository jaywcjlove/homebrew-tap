cask "vidwall-hub" do
  version "1.6.1"
  sha256 "3af25bca90a5b87b2d643bfe1ff373cee811cb883809e026713bafdc22ad4753"

  url "https://github.com/jaywcjlove/vidwall-hub/releases/download/v#{version}/VidwallHub_v#{version}.zip"
  name "Vidwall Hub"
  desc "Tool that allows you to easily import videos into the system wallpaper service and use them as lock screen animations"
  homepage "https://github.com/jaywcjlove/vidwall-hub"

  depends_on macos: ">= :monterey"

  app "VidwallHub.app"

  zap trash: [
    "~/Library/Application Support/com.wangchujiang.VidwallHub",
    "~/Library/Caches/com.wangchujiang.VidwallHub",
    "~/Library/Preferences/com.wangchujiang.VidwallHub.plist",
  ]
end