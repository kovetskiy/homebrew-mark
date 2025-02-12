# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mark < Formula
  desc "Sync your markdown files with Confluence pages."
  homepage "https://github.com/kovetskiy/mark"
  version "12.0.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kovetskiy/mark/releases/download/12.0.1/mark_Darwin_x86_64.tar.gz"
      sha256 "e3f566e97fd909383f2595415b0bfce7d097c62323e78c08648f56d89eca3b84"

      def install
        bin.install "mark"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kovetskiy/mark/releases/download/12.0.1/mark_Darwin_arm64.tar.gz"
      sha256 "0c10c3d6f3054798d5a60e70e5672fdab309f405f9f81ff72d88602d95800dee"

      def install
        bin.install "mark"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kovetskiy/mark/releases/download/12.0.1/mark_Linux_x86_64.tar.gz"
        sha256 "2b011fd0ca559cb4137872858a7b9a2e9968324cafde3afa9e40158edf0617d4"

        def install
          bin.install "mark"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kovetskiy/mark/releases/download/12.0.1/mark_Linux_arm64.tar.gz"
        sha256 "51c20f56b0f2c1c8a480e650e03b9d1d41136f8b15139c1df404ffebd5ecdafd"

        def install
          bin.install "mark"
        end
      end
    end
  end

  test do
    system "#{bin}/program", "version"
  end
end
