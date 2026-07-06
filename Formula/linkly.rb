# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
class Linkly < Formula
  desc "A Swift command-line tool that generates beautiful, responsive link aggregation pages (like Linktree) from a single linkly.json config file."
  homepage "https://github.com/jaywcjlove/linkly"
  url "https://github.com/jaywcjlove/linkly/releases/download/v1.1.8/linkly.tar.gz"
  sha256 "50fff26fe4c689653d944df520d3e90f30e0670e65b794f92a4d84958f5e318d"
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
