# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scaffold < Formula
  desc "Scaffold is a tool for creating new projects from pre-defined templates."
  homepage ""
  version "0.0.86"
  license "MIT"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.86/scaffold_Darwin_x86_64.tar.gz"
      sha256 "667062ad31930463b1354addba62fe9cee5e51f451a8e1006e362529bf770cf9"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.86/scaffold_Darwin_arm64.tar.gz"
      sha256 "c94b5f3c92aa543794857a80fa1531eb887c9c3311cd1e7def0d5b29f251c099"

      def install
        bin.install "scaffold"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.86/scaffold_Linux_x86_64.tar.gz"
      sha256 "de53f0343560fce49ac1c4dfc7f2c33dd7cf2ffee912702dee25fe2ae27a38e3"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.86/scaffold_Linux_arm64.tar.gz"
      sha256 "6774fcca6a191601c6a7cbc98ecc4b5bf35d7b2ca028fcc51b2079583ff98dc7"

      def install
        bin.install "scaffold"
      end
    end
  end

  test do
    system "#{bin}/scaffold version"
  end
end
