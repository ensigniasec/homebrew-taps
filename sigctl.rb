# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sigctl < Formula
  desc ""
  homepage "https://github.com/ensigniasec/sigctl"
  version "0.2.8"

  on_macos do
    url "https://github.com/ensigniasec/sigctl/releases/download/v0.2.8/sigctl_Darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "9cd29829789d3eaa68e3c899f60eef704ec7f6d835ace91c7cd3b40b61009996"

    def install
      bin/sigctl
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ensigniasec/sigctl/releases/download/v0.2.8/sigctl_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7b979d6db3014c4fb89c66a295cc665e163ee836f522622868b2a903a387b53a"

      def install
        bin/sigctl
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ensigniasec/sigctl/releases/download/v0.2.8/sigctl_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "02514130c742b1786b00aea42484ac8776da9282cbbbed3be1489ecc45d276d9"

      def install
        bin/sigctl
      end
    end
  end
end
