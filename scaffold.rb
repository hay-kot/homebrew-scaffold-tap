# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scaffold < Formula
  desc "Scaffold is a tool for creating new projects from pre-defined templates."
  homepage ""
  version "0.0.8"
  license "MIT"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.8/scaffold_Darwin_x86_64.tar.gz"
      sha256 "a724fc2ad426ddebe6ddd4705eef95400bc0a845140e3f30bf96efa7fdc22591"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.8/scaffold_Darwin_arm64.tar.gz"
      sha256 "7fd353fece82c92435ab7fed04d9445c07db7fc84d43b18e3010949fee6c296d"

      def install
        bin.install "scaffold"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.8/scaffold_Linux_arm64.tar.gz"
      sha256 "6fdf1af26bf21e99db1162c8cda9462c85d80961f8bdc2f418a30b6c1d73f7cf"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.8/scaffold_Linux_x86_64.tar.gz"
      sha256 "e0e93c9969cf076a4eb0d7d0d6a0e4c716b996b834eb91c13322c3cd7fcae51a"

      def install
        bin.install "scaffold"
      end
    end
  end

  test do
    system "#{bin}/scaffold version"
  end
end
