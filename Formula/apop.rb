class Apop < Formula
  desc "AWS Profile switcher with 1Password integration"
  homepage "https://github.com/itouuuuuuuuu/apop"
  url "https://github.com/itouuuuuuuuu/apop/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "fd4440805379e31bf9a0ab8f8d4cf3489c78d9ddd1f7c4795db4b179b0a8c59f"
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
