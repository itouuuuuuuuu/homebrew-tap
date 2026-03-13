class Numii < Formula
  desc "Interactive wrapper for numi-cli smart calculator"
  homepage "https://github.com/itouuuuuuuuu/numii"
  url "https://github.com/itouuuuuuuuu/numii/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "1edf7283c9487e0b524b2f1ad40d13dace8192f63b4c5734a8df4834757f8efb"
  license "MIT"

  depends_on "nikolaeu/numi/numi-cli"
  depends_on :macos

  def install
    bin.install "numii"
  end

  test do
    assert_equal "5", shell_output("#{bin}/numii '2+3'").strip
  end
end
