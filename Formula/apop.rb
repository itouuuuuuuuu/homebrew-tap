class Apop < Formula
  desc "AWS Profile switcher with 1Password integration"
  homepage "https://github.com/itouuuuuuuuu/apop"
  url "https://github.com/itouuuuuuuuu/apop/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "572e5f660e7d43d35f66645d2cdb8458d04e91d2ad59b3d5a179b5b448030af2"
  license "MIT"

  depends_on "fzf"
  depends_on "jq"
  depends_on :macos

  def install
    (share/"apop").install "apop.sh"
  end

  def caveats
    <<~EOS
      To activate apop, add the following to your ~/.zshrc:
        source "$(brew --prefix)/share/apop/apop.sh"

      You also need to install the following manually:
        brew install awscli
        brew install --cask 1password-cli
    EOS
  end

  test do
    output = shell_output("bash -c 'source #{share}/apop/apop.sh && apop --version'")
    assert_match "apop", output
  end
end
