cask "zmk-battery-bar" do
  version "1.3.2"
  sha256 "671f539fd298e3e89949a2b29f45619f4f82901de12e1f6b99384b103aaaf02c"

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
