# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
class Linkly < Formula
  desc "A Swift command-line tool that generates beautiful, responsive link aggregation pages (like Linktree) from a single linkly.json config file."
  homepage "https://github.com/jaywcjlove/linkly"
  url "https://github.com/jaywcjlove/linkly/releases/download/v1.1.7/linkly.tar.gz"
  sha256 "d8117dc018b7d08777ea940f029980a482900c3746e90875388e78fd224bba52"
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
