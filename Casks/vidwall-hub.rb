cask "vidwall-hub" do
  version "2.0.1"
  sha256 "ee535b52e1623eff9f2e8b5998c1725e795dd2873f7606b67d621fcb72e100a5"

  url "https://github.com/jaywcjlove/vidwall-hub/releases/download/v#{version}/VidwallHub_v#{version}.zip"
  name "Vidwall Hub"
  desc "Tool that allows you to easily import videos into the system wallpaper service and use them as lock screen animations"
  homepage "https://github.com/jaywcjlove/vidwall-hub"

  depends_on macos: :monterey

  app "VidwallHub.app"

  zap trash: [
    "~/Library/Application Support/com.wangchujiang.vidwall.hub",
    "~/Library/Application Scripts/group.GR99S2ZJZQ.vidwall",
    "~/Library/Group Containers/group.GR99S2ZJZQ.vidwall",
    "~/Library/Caches/com.wangchujiang.vidwall.hub",
    "~/Library/WebKit/com.wangchujiang.vidwall.hub",
    "~/Library/Preferences/com.wangchujiang.vidwall.hub.plist",
  ]
end