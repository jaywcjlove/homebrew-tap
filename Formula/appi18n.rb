# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
class Appi18n < Formula
  desc "Lightweight CLI tool for unifying and optimizing the internationalization (i18n) workflow across multiple apps."
  homepage "https://github.com/jaywcjlove/app-i18n"
  url "https://github.com/jaywcjlove/app-i18n/releases/download/v1.5.0/appi18n.tar.gz"
  sha256 "91b336abf8656f91cd02bf6af772ee9862fe7fee374427d15b06967f4128d2e8"
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
