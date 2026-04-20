cask "zmk-battery-bar" do
  version "1.3.1"
  sha256 "4ec314351a25aee0d23b674ef53b11ab8a4cdb0040671e04288b71f0eb586886"

  url "https://github.com/itouuuuuuuuu/zmk-battery-bar/releases/download/v#{version}/ZMKBatteryBar-#{version}.zip"
  name "ZMK Battery Bar"
  desc "macOS menu bar app that displays battery levels from ZMK split keyboards via BLE"
  homepage "https://github.com/itouuuuuuuuu/zmk-battery-bar"

  depends_on macos: ">= :sonoma"

  app "ZMK Battery Bar.app"

  zap trash: [
    "~/Library/Preferences/com.zmk-battery-bar.app.plist",
  ]
end
