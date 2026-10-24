cask "zmk-battery-bar" do
  version "1.6.0"
  sha256 "01cfdc1d78f551f33ceb094ae3ceb373fc1c74cad71d7bb8becedf55adbfba7e"

  url "https://github.com/itouuuuuuuuu/zmk-battery-bar/releases/download/v#{version}/ZMKBatteryBar-#{version}.zip"
  name "ZMK Battery Bar"
  desc "Menu bar app that displays battery levels from ZMK split keyboards via BLE"
  homepage "https://github.com/itouuuuuuuuu/zmk-battery-bar"

  depends_on macos: :sonoma

  app "ZMK Battery Bar.app"

  zap trash: "~/Library/Preferences/com.zmk-battery-bar.app.plist"
end
