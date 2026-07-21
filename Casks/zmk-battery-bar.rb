cask "zmk-battery-bar" do
  version "1.5.1"
  sha256 "b8bfddcfda13d5185bbdc72566154d776b3b8b192318a4abf4c55f9147d09585"

  url "https://github.com/itouuuuuuuuu/zmk-battery-bar/releases/download/v#{version}/ZMKBatteryBar-#{version}.zip"
  name "ZMK Battery Bar"
  desc "Menu bar app that displays battery levels from ZMK split keyboards via BLE"
  homepage "https://github.com/itouuuuuuuuu/zmk-battery-bar"

  depends_on macos: :sonoma

  app "ZMK Battery Bar.app"

  zap trash: "~/Library/Preferences/com.zmk-battery-bar.app.plist"
end
