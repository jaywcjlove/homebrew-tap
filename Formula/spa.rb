# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
class Spa < Formula
  desc "Swift Package Add for Xcode GUI projects"
  homepage "https://github.com/jaywcjlove/spa"
  url "https://github.com/jaywcjlove/spa/releases/download/v0.1.8/spa.tar.gz"
  sha256 "b77e7e551315bd584eb0058445ec65d4cf561802a68a5606ba9e6bf593783ac4"
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
