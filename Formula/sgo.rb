class Sgo < Formula
  desc "A simple, fast, and cross-platform static web server with compression, templating, and directory listing."
  homepage "https://github.com/jaywcjlove/sgo-rs"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jaywcjlove/sgo-rs/releases/download/v0.6.0/sgo-x86_64-apple-darwin.zip"
      sha256 "e0f5e31eeb0d6dd2737e2a6fd9afcf6da02c2d249042b91d14180c753dcf2929"

      def install
        bin.install "sgo"
      end
    end

    on_arm do
      url "https://github.com/jaywcjlove/sgo-rs/releases/download/v0.6.0/sgo-aarch64-apple-darwin.zip"
      sha256 "74e7bd880b115276af8a8a76b033d3b79a57961fd84354e82a6654cafa59f6ca"

      def install
        bin.install "sgo"
      end
    end
  end

  test do
    assert_match "sgo", shell_output("#{bin}/sgo --help")
  end
end