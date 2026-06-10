cask "zmk-battery-bar" do
  version "1.3.3"
  sha256 "2cb228ee2ce8f59ecbb9a4e62cced98e01040df319a8b39649f112add83f1e29"

  url "https://github.com/itouuuuuuuuu/zmk-battery-bar/releases/download/v#{version}/ZMKBatteryBar-#{version}.zip"
  name "ZMK Battery Bar"
  desc "macOS menu bar app that displays battery levels from ZMK split keyboards via BLE"
  homepage "https://github.com/itouuuuuuuuu/zmk-battery-bar"

  depends_on macos: :sonoma

  app "ZMK Battery Bar.app"

  zap trash: [
    "~/Library/Preferences/com.zmk-battery-bar.app.plist",
  ]
end
