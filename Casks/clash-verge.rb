cask "clash-verge" do
  arch arm: "aarch64", intel: "x64"
  version "1.3.1"
  sha256 "67360bbbfb06fb55ed0c3660d56b7244a1894f16a9ed842518af9bf85df83d2a"

  url "https://github.com/zzzgydi/clash-verge/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg"
  name "Clash Verge"
  desc "A Clash GUI based on tauri. Supports Windows, macOS and Linux."
  homepage "https://github.com/zzzgydi/clash-verge"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash Verge.app"

  zap trash: [
    "~/.config/clash-verge",
    "~/Library/Preferences/top.gydi.clashverge.plist",
    "~/Library/Saved Application State/top.gydi.clashverge.savedState",
  ]
end
