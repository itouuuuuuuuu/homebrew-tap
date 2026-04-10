class Apop < Formula
  desc "AWS Profile switcher with 1Password integration"
  homepage "https://github.com/itouuuuuuuuu/apop"
  url "https://github.com/itouuuuuuuuu/apop/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "bf3c21a280e35144d63b098aa1e9af5912b2ab98f5f382020c3b39a081a23272"
  license "MIT"

  depends_on "jq"
  depends_on "fzf"

  def install
    (share/"apop").install "apop.sh"
  end

  def caveats
    <<~EOS
      Add the following to your ~/.zshrc:
        source "$(brew --prefix)/share/apop/apop.sh"
    EOS
  end

  test do
    assert_match "apop", shell_output("bash -c 'source #{share}/apop/apop.sh && apop --version'")
  end
end
