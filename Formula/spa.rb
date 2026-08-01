# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
class Spa < Formula
  desc "Swift Package Add for Xcode GUI projects"
  homepage "https://github.com/jaywcjlove/spa"
  url "https://github.com/jaywcjlove/spa/releases/download/v0.1.8/spa.tar.gz"
  sha256 "548fabaa208fb475c9898f4c3ef5d89bd42688c7cbff880b7f2755618ccdb996"
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
