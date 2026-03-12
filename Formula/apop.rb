class Apop < Formula
  desc "AWS Profile switcher with 1Password integration"
  homepage "https://github.com/itouuuuuuuuu/apop"
  url "https://github.com/itouuuuuuuuu/apop/archive/refs/tags/1.0.1.tar.gz"
  sha256 "8d84cf3e33bf8d13e933d73be0ff64b9463a05897bf29bd3749b131d35b16ec5"
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
