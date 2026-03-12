class Numii < Formula
  desc "Interactive wrapper for numi-cli smart calculator"
  homepage "https://github.com/itouuuuuuuuu/numii"
  url "https://github.com/itouuuuuuuuu/numii/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "4cfa2f1538711600d53f41668443c1ec557855c0943695d33a7c8eeff875487e"
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
