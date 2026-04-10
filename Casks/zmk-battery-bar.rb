cask "zmk-battery-bar" do
  version "1.1.4"
  sha256 "0ff90c7b8b35606020c457f3f1440f57df7405e183a70588e53dd7501e1f93f6"

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
