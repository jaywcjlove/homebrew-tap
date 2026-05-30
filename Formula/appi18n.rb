# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
class Appi18n < Formula
  desc "Lightweight CLI tool for unifying and optimizing the internationalization (i18n) workflow across multiple apps."
  homepage "https://github.com/jaywcjlove/app-i18n"
  url "https://github.com/jaywcjlove/app-i18n/releases/download/v1.6.0/appi18n.tar.gz"
  sha256 "94bdbd160e7a77c7427dfbaa996e8b3e5f951a7492036bed9c76bda8b48e5c3f"
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
