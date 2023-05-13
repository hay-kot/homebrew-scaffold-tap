# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scaffold < Formula
  desc "Scaffold is a tool for creating new projects from pre-defined templates."
  homepage ""
  version "0.0.37"
  license "MIT"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.37/scaffold_Darwin_x86_64.tar.gz"
      sha256 "93ddcea2822c63f2dbc0d7094acf9cddc71e2766653e915d428e5830b11872b8"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.37/scaffold_Darwin_arm64.tar.gz"
      sha256 "a3ca301200a1f43c99c27e18747101c3fd6f835c144ca6c2fe68813c0aa9eb94"

      def install
        bin.install "scaffold"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.37/scaffold_Linux_arm64.tar.gz"
      sha256 "b11dd9f3ed05c7b4e48fdd52aad0ea48ff95769d3daecd77e7f1d93a06d5cc91"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.37/scaffold_Linux_x86_64.tar.gz"
      sha256 "c803f34a9500ce828d4e941ac77f7fedab5e64d9948bd1c4e596966cce36f282"

      def install
        bin.install "scaffold"
      end
    end
  end

  test do
    system "#{bin}/scaffold version"
  end
end
