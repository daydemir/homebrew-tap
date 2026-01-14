# typed: false
# frozen_string_literal: true

class Ralph < Formula
  desc "Autonomous plan execution engine built on GSD planning"
  homepage "https://github.com/daydemir/ralph"
  version "0.4.0-alpha.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/daydemir/ralph/releases/download/v0.4.0-alpha.1/ralph_0.4.0-alpha.1_darwin_amd64.tar.gz"
      sha256 "7a24fab4ee20a4bdbd7029351fb263f02ebc75f59f5f31232576c689da4fc299"

      def install
        bin.install "ralph"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/daydemir/ralph/releases/download/v0.4.0-alpha.1/ralph_0.4.0-alpha.1_darwin_arm64.tar.gz"
      sha256 "969393d69c4080b705e60f41f9f06e94ab19826201fcba34752b83a9f4ed0dd7"

      def install
        bin.install "ralph"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/daydemir/ralph/releases/download/v0.4.0-alpha.1/ralph_0.4.0-alpha.1_linux_amd64.tar.gz"
      sha256 "f60aecf8b5418614c778035639b7df4698465902383378b4e101fa9e7c26586f"
      def install
        bin.install "ralph"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/daydemir/ralph/releases/download/v0.4.0-alpha.1/ralph_0.4.0-alpha.1_linux_arm64.tar.gz"
      sha256 "ee14059f09675e985be6105f8114b0bcec154b1f648cc5701f98520cbd3447fb"
      def install
        bin.install "ralph"
      end
    end
  end

  test do
    system "#{bin}/ralph", "--version"
  end
end
