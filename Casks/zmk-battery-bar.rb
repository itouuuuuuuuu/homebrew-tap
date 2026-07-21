cask "zmk-battery-bar" do
  version "1.5.1"
  sha256 "2959384f72df2a53d4e87d4acf903013a8487a0750544f0dd7f79910a4530e89"

  url "https://github.com/itouuuuuuuuu/zmk-battery-bar/releases/download/v#{version}/ZMKBatteryBar-#{version}.zip"
  name "ZMK Battery Bar"
  desc "Menu bar app that displays battery levels from ZMK split keyboards via BLE"
  homepage "https://github.com/itouuuuuuuuu/zmk-battery-bar"

  depends_on macos: :sonoma

  app "ZMK Battery Bar.app"

  zap trash: "~/Library/Preferences/com.zmk-battery-bar.app.plist"
end
