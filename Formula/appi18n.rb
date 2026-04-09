# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
class Appi18n < Formula
  desc "Lightweight CLI tool for unifying and optimizing the internationalization (i18n) workflow across multiple apps."
  homepage "https://github.com/jaywcjlove/app-i18n"
  url "https://github.com/jaywcjlove/app-i18n/releases/download/v1.5.1/appi18n.tar.gz"
  sha256 "193004aa6b28468debf667386c63115ed96c7760d4cc3d3ce8162d285e8fcd7d"
  license "MIT"

  def install
    # Install the binary executable directly
    bin.install "appi18n"
  end

  test do
    # Test that the binary can run and show help
    system bin/"appi18n", "--help"
  end
end
