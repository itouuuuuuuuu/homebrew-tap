class Apop < Formula
  desc "AWS Profile switcher with 1Password integration"
  homepage "https://github.com/itouuuuuuuuu/apop"
  url "https://github.com/itouuuuuuuuu/apop/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "7aa8cd8edf07425bb65568e0fd72802c7cbdbaf0df47ef28cc97b2ed1c6c9dd5"
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