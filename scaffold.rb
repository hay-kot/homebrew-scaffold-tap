# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scaffold < Formula
  desc "Scaffold is a tool for creating new projects from pre-defined templates."
  homepage ""
  version "0.0.68"
  license "MIT"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.68/scaffold_Darwin_arm64.tar.gz"
      sha256 "48e23eacd6f1c506da64b04d4d41e38a8675f33521f7e3e7a1fddfce93b21535"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.68/scaffold_Darwin_x86_64.tar.gz"
      sha256 "aa4aba091ab3b9f72c51d00ac51566539f250ea1f55efaf2c79ed66cdcf77fd2"

      def install
        bin.install "scaffold"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.68/scaffold_Linux_arm64.tar.gz"
      sha256 "55711160ad3ba96d0c5cfe5ef3f4c1dae82278458c3d6f71014e9e176821a683"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.68/scaffold_Linux_x86_64.tar.gz"
      sha256 "cc8f47b1d6f50822716de967a63dc289cffe3d94bd408a20d4e5e52b553a8a3f"

      def install
        bin.install "scaffold"
      end
    end
  end

  test do
    system "#{bin}/scaffold version"
  end
end
