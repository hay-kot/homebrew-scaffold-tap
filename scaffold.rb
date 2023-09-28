# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scaffold < Formula
  desc "Scaffold is a tool for creating new projects from pre-defined templates."
  homepage ""
  version "0.0.52"
  license "MIT"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.52/scaffold_Darwin_x86_64.tar.gz"
      sha256 "239c9b370e1a0c07625ad741b9c4edda094d5a3a97b12c10caa7a0e67c1bce13"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.52/scaffold_Darwin_arm64.tar.gz"
      sha256 "ff2d5b21f5ee888424e22269f655ced7683f0c27d043ee9be497486b989b31c3"

      def install
        bin.install "scaffold"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.52/scaffold_Linux_x86_64.tar.gz"
      sha256 "3e4e8db0c1d176d1c3aea870543e0c75fb1bd80880078e428902d08a8f94fae4"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.52/scaffold_Linux_arm64.tar.gz"
      sha256 "37d3dd1f12d51a9b37c2d633128e0c1dbea9373b6e4a37ad9cc72981bae51d6f"

      def install
        bin.install "scaffold"
      end
    end
  end

  test do
    system "#{bin}/scaffold version"
  end
end
