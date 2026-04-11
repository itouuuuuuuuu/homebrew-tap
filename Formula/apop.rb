class Apop < Formula
  desc "AWS Profile switcher with 1Password integration"
  homepage "https://github.com/itouuuuuuuuu/apop"
  url "https://github.com/itouuuuuuuuu/apop/archive/refs/tags/v1.2.2.tar.gz"
  sha256 "e147bed9e17aed9ca5211fd6c5c90a9ab38ba5458b6fad3dbe2615e474b268cb"
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
