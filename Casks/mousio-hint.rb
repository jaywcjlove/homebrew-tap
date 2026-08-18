cask "mousio-hint" do
  version "1.8.0"
  sha256 "c3879513f5f07dae51aafe2e8d9d20b7ecc1b5e26b12a5e3a09ee1eb50f443d1"

  url "https://github.com/jaywcjlove/mousio-hint/releases/download/v#{version}/MousioHint_v#{version}.zip"
  name "Mousio Hint"
  desc "Mousio Hint, a companion tool for Mousio, displays shortcut hints to enable quick mouse movement and works perfectly with all its control features."
  homepage "https://github.com/jaywcjlove/mousio-hint"

  depends_on macos: :monterey

  app "MousioHint.app"

  zap trash: [
    "~/Library/HTTPStorages/com.wangchujiang.mousiohint",
    "~/Library/WebKit/com.wangchujiang.mousiohint",
    "~/Library/Caches/com.wangchujiang.mousiohint",
    "~/Library/Preferences/com.wangchujiang.mousiohint.plist",
    "~/Library/Application Scripts/group.GR99S2ZJZQ.mousio-hint",
    "~/Library/Group Containers/group.GR99S2ZJZQ.mousio-hint",
    "~/Library/Preferences/group.GR99S2ZJZQ.mousio-hint.plist",
  ]
end