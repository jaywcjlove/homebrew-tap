class Sgo < Formula
  desc "A simple, fast, and cross-platform static web server with compression, templating, and directory listing."
  homepage "https://github.com/jaywcjlove/sgo-rs"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jaywcjlove/sgo-rs/releases/download/v0.5.0/sgo-x86_64-apple-darwin.zip"
      sha256 "aead532bc8912fd2df62569fdef1068ff3cedad4cf8b46b746421656e50cf720"

      def install
        bin.install "sgo"
      end
    end

    on_arm do
      url "https://github.com/jaywcjlove/sgo-rs/releases/download/v0.5.0/sgo-aarch64-apple-darwin.zip"
      sha256 "48a5ca895cf482222ca4a39eb43dd09818f83d99969a35a0a5b29a7bd82576e3"

      def install
        bin.install "sgo"
      end
    end
  end

  test do
    assert_match "sgo", shell_output("#{bin}/sgo --help")
  end
end