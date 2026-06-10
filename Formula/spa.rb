# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
class Spa < Formula
  desc "SPA is a small Swift command for adding a Swift Package dependency to an Xcode GUI project."
  homepage "https://github.com/jaywcjlove/spa"
  url "https://github.com/jaywcjlove/spa/releases/download/v0.1.1/spa.tar.gz"
  sha256 "9b581f36e6536bb98271c7f3a723cda34839c0481df5cf364de609efdd08fa38"
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
