cask "zmk-battery-bar" do
  version "1.2.0"
  sha256 "1218ef531e82d7bc01493c1cba0f75390f8a8c4bf36b1b5631fcc291a7f0fa08"

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
