cask "autoraise" do
  version "5.7"
  sha256 "f22061720bb143d8c9fa96ce3c51cdd0bcc7e1820ff5fae3c40bf830036bb06f"

  url "https://github.com/sbmpost/AutoRaise/releases/download/v#{version}/AutoRaise.dmg"
  name "AutoRaise"
  desc "Raise and focus a window when hovering over it with the mouse"
  homepage "https://github.com/sbmpost/AutoRaise"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "AutoRaise.app"

  zap trash: "~/Library/Preferences/com.sbmpost.AutoRaise.plist"
end
