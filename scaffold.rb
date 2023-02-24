# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scaffold < Formula
  desc "Scaffold is a tool for creating new projects from pre-defined templates."
  homepage ""
  version "0.0.12"
  license "MIT"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.12/scaffold_Darwin_x86_64.tar.gz"
      sha256 "61d4949b33467104a267238db6085cb00ab64bf1c08ebe8c98c82615173c6e1b"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.12/scaffold_Darwin_arm64.tar.gz"
      sha256 "ae970ff6131ba8fabe3b992860c16eda597ae1b4e5d2e91603150ab908e42680"

      def install
        bin.install "scaffold"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.12/scaffold_Linux_arm64.tar.gz"
      sha256 "0cfc432b1a144d36ef0b12d88678940f262f07f270108d10163ada234c7da268"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.12/scaffold_Linux_x86_64.tar.gz"
      sha256 "174a05959545b8c704dfae1ea1b7c36191a714603c541752e02a8fb8f8e08fb8"

      def install
        bin.install "scaffold"
      end
    end
  end

  test do
    system "#{bin}/scaffold version"
  end
end
