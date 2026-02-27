# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
class Appi18n < Formula
  desc "Lightweight CLI tool for unifying and optimizing the internationalization (i18n) workflow across multiple apps."
  homepage "https://github.com/jaywcjlove/app-i18n"
  url "https://github.com/jaywcjlove/app-i18n/releases/download/v1.1.1/appi18n.tar.gz"
  sha256 "bff0f394b8a506a12d879b43731d6a4398293ff5fa20edaa3977be86ea287a3a"
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
