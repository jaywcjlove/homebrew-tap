# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
class Spa < Formula
  desc "Swift Package Add for Xcode GUI projects"
  homepage "https://github.com/jaywcjlove/spa"
  url "https://github.com/jaywcjlove/spa/releases/download/v0.2.0/spa.tar.gz"
  sha256 "c32fcb74ffc483bd1aca53bf77c97e77e31292a6ac3863197a4f1dce0c17d18e"
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
