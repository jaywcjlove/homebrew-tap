# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
class Appi18n < Formula
  desc "Lightweight CLI tool for unifying and optimizing the internationalization (i18n) workflow across multiple apps."
  homepage "https://github.com/jaywcjlove/app-i18n"
  url "https://github.com/jaywcjlove/app-i18n/releases/download/v1.1.0/appi18n.tar.gz"
  sha256 "c36bcdec04ca201f782b8ea5496320d9945b890e5a542f6de234b813923ef76c"
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
