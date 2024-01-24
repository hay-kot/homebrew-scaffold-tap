# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scaffold < Formula
  desc "Scaffold is a tool for creating new projects from pre-defined templates."
  homepage ""
  version "0.0.74"
  license "MIT"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.74/scaffold_Darwin_x86_64.tar.gz"
      sha256 "74c3ddce4851c4e0b9a7edda0e33b4ac2d069041cdea8f65244aa64852fd218f"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.74/scaffold_Darwin_arm64.tar.gz"
      sha256 "83898552282c4b9cfb2332158870c44b47be0ad1d464f583795801c254e33ea3"

      def install
        bin.install "scaffold"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.74/scaffold_Linux_arm64.tar.gz"
      sha256 "eb89e9eb97e894226161846980b8ee6b52e244185a87a6eabdc594dfa03c5089"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.74/scaffold_Linux_x86_64.tar.gz"
      sha256 "720ad2e05f3dbe70fa31bc27cd0fa154c8dc5d31234d6318758a58415f0023fe"

      def install
        bin.install "scaffold"
      end
    end
  end

  test do
    system "#{bin}/scaffold version"
  end
end
