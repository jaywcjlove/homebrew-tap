# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
class Linkly < Formula
  desc "A Swift command-line tool that generates beautiful, responsive link aggregation pages (like Linktree) from a single linkly.json config file."
  homepage "https://github.com/jaywcjlove/linkly"
  url "https://github.com/jaywcjlove/linkly/releases/download/v1.1.7/linkly.tar.gz"
  sha256 "94bdbd160e7a77c7427dfbaa996e8b3e5f951a7492036bed9c76bda8b48e5c3f"
  license "MIT"

  def install
    # Install the binary executable directly
    bin.install "linkly"
  end

  test do
    # Test that the binary can run and show help
    system bin/"linkly", "--help"
  end
end
