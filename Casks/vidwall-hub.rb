cask "vidwall-hub" do
  version "1.6.2"
  sha256 "b3a5aa2ceb94430d41dafa379d29e5f84b4329f47da767ac907961f45a1d55c3"

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