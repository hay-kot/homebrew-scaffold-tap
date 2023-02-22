# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scaffold < Formula
  desc "Scaffold is a tool for creating new projects from pre-defined templates."
  homepage ""
  version "0.0.2"
  license "MIT"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.2/scaffold_Darwin_arm64.tar.gz"
      sha256 "0974f6b930ba636da9a577e149f490d124229016503920bb0553751e48ecf81b"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.2/scaffold_Darwin_x86_64.tar.gz"
      sha256 "97c0a4219732c95f7babfe95a08ab82fc3bc0c24509d780149f75ccf50fe9cfe"

      def install
        bin.install "scaffold"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.2/scaffold_Linux_arm64.tar.gz"
      sha256 "9d68ccd71839ed9b9f381ef52c177c5db2e6e0e5b12d4a5ef8becb84a6c72cd0"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.2/scaffold_Linux_x86_64.tar.gz"
      sha256 "5ac1c5b4de60f4dea73f1c66441feae7e9f15e6c0f8d88bc98a5907e6782982a"

      def install
        bin.install "scaffold"
      end
    end
  end

  test do
    system "#{bin}/scaffold version"
  end
end
