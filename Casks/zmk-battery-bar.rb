cask "zmk-battery-bar" do
  version "1.4.0"
  sha256 "d208f7d38b4f2ed2e2e98e2f953727e39fb1b771370908d30208dd97ce40106a"

  url "https://github.com/itouuuuuuuuu/zmk-battery-bar/releases/download/v#{version}/ZMKBatteryBar-#{version}.zip"
  name "ZMK Battery Bar"
  desc "Menu bar app that displays battery levels from ZMK split keyboards via BLE"
  homepage "https://github.com/itouuuuuuuuu/zmk-battery-bar"

  depends_on macos: :sonoma

  app "ZMK Battery Bar.app"

  zap trash: "~/Library/Preferences/com.zmk-battery-bar.app.plist"
end
