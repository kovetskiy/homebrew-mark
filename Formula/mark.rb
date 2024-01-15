# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mark < Formula
  desc "Sync your markdown files with Confluence pages."
  homepage "https://github.com/kovetskiy/mark"
  version "9.11.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kovetskiy/mark/releases/download/9.11.1/mark_Darwin_arm64.tar.gz"
      sha256 "c745e368c4420e1a596c335f386e141e34f6197d574eb37c6c19db0e54c29a3e"

      def install
        bin.install "mark"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kovetskiy/mark/releases/download/9.11.1/mark_Darwin_x86_64.tar.gz"
      sha256 "fe363c639f003337a09ff875f906a9a67f866ab05a91685691c91cb7914a924e"

      def install
        bin.install "mark"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kovetskiy/mark/releases/download/9.11.1/mark_Linux_arm64.tar.gz"
      sha256 "f84ac5dc94e9a9ddb97855d08762febf575477623ad61277e6ca9fc800ee0fbe"

      def install
        bin.install "mark"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kovetskiy/mark/releases/download/9.11.1/mark_Linux_x86_64.tar.gz"
      sha256 "be4f780af872652a99b40af2281a3a791472767b1805e823565170fa14b84124"

      def install
        bin.install "mark"
      end
    end
  end

  test do
    system "#{bin}/program", "version"
  end
end
