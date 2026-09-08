cask "vidwall-hub" do
  version "2.0.0"
  sha256 "d75759151ce97f91ff82a6fdc64bb76994a49df140b0223011f384b3dcf196a9"

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