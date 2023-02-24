# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scaffold < Formula
  desc "Scaffold is a tool for creating new projects from pre-defined templates."
  homepage ""
  version "0.0.9"
  license "MIT"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.9/scaffold_Darwin_x86_64.tar.gz"
      sha256 "630ca1c91f3e56c9dfcd2ab36d4007e58c95f465b42daab371369ded063668a0"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.9/scaffold_Darwin_arm64.tar.gz"
      sha256 "3bd128580eb0293c2c75ff7fbc5d542876eaa7e4ae5d25bf95eeb9309b4bbd36"

      def install
        bin.install "scaffold"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.9/scaffold_Linux_x86_64.tar.gz"
      sha256 "6b7c491d0e0e1ee6d356ac8f2d41fb64bd7af0bc6f8b43caadd393fc114f2edc"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.9/scaffold_Linux_arm64.tar.gz"
      sha256 "ac43bdc6cee9ab9201ba580593ef377e35d65ff85cedec42fc2be9f06978b515"

      def install
        bin.install "scaffold"
      end
    end
  end

  test do
    system "#{bin}/scaffold version"
  end
end
