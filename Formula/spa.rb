# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
class Spa < Formula
  desc "Swift Package Add for Xcode GUI projects"
  homepage "https://github.com/jaywcjlove/spa"
  url "https://github.com/jaywcjlove/spa/releases/download/v0.1.4/spa.tar.gz"
  sha256 "aa006026c2a9260634565ed4d386cf4bee72f1b23a39006ab292335e64baf3b1"
  license "MIT"

  def install
    # Install the binary executable directly
    bin.install "spa"
  end

  test do
    # Test that the binary can run and show help
    system bin/"spa", "--help"
  end
end
