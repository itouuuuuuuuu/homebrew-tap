cask "zmk-battery-bar" do
  version "1.5.2"
  sha256 "9ec9bc2a37afa23fe609dd7fc13e72174e4c89d961da730e3456156aa92fe6e4"

  url "https://github.com/itouuuuuuuuu/zmk-battery-bar/releases/download/v#{version}/ZMKBatteryBar-#{version}.zip"
  name "ZMK Battery Bar"
  desc "Menu bar app that displays battery levels from ZMK split keyboards via BLE"
  homepage "https://github.com/itouuuuuuuuu/zmk-battery-bar"

  depends_on macos: :sonoma

  app "ZMK Battery Bar.app"

  zap trash: "~/Library/Preferences/com.zmk-battery-bar.app.plist"
end
