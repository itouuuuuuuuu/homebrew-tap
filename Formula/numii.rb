class Numii < Formula
  desc "Interactive wrapper for numi-cli smart calculator"
  homepage "https://github.com/itouuuuuuuuu/numii"
  url "https://github.com/itouuuuuuuuu/numii/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b69039e44805d3ad026e297f490043d8cf64287f1dc6f7196028834b2e0cada6"
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
