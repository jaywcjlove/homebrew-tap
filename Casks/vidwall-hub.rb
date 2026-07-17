cask "vidwall-hub" do
  version "1.6.3"
  sha256 "60b3eca171b0f616f083da37edcdf86b10a920e31237110e883a40354313a495"

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