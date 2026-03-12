class Numii < Formula
  desc "Interactive wrapper for numi-cli smart calculator"
  homepage "https://github.com/itouuuuuuuuu/numii"
  url "https://github.com/itouuuuuuuuu/numii/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "bc3f7f9d68bcccaecf7f4dc10ccb972ba6c328a2656b1bf0098f4a9187f4d780"
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
