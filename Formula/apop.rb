class Apop < Formula
  desc "AWS Profile switcher with 1Password integration"
  homepage "https://github.com/itouuuuuuuuu/apop"
  url "https://github.com/itouuuuuuuuu/apop/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "b7f2536e43e144ef2b56c4d3d8e5c4903d8aed744ac0a9cdd049f7c74bac22cc"
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
