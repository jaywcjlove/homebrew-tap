# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
class Spa < Formula
  desc "SPA is a small Swift command for adding a Swift Package dependency to an Xcode GUI project."
  homepage "https://github.com/jaywcjlove/spa"
  url "https://github.com/jaywcjlove/spa/releases/download/v0.1.2/spa.tar.gz"
  sha256 "f94ffea1400378cc8c1bebbe93431d504c5a411f16c3841ae4158180def13a2a"
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
