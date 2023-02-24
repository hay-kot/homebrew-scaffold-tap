# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scaffold < Formula
  desc "Scaffold is a tool for creating new projects from pre-defined templates."
  homepage ""
  version "0.0.17"
  license "MIT"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.17/scaffold_Darwin_x86_64.tar.gz"
      sha256 "b50123a2b95406ff5af3d680c32a54fb6cb89c45548766fdf3474708057070bc"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.17/scaffold_Darwin_arm64.tar.gz"
      sha256 "b55ccc97e0f32e190006b1500bf4f985f84030d8e33ca5f04454ff7e01805893"

      def install
        bin.install "scaffold"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.17/scaffold_Linux_x86_64.tar.gz"
      sha256 "5044c66f5bd5b9af8f10c9872e685d0964a4966f00e7c730b7485f3aae0d2061"

      def install
        bin.install "scaffold"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hay-kot/scaffold/releases/download/v0.0.17/scaffold_Linux_arm64.tar.gz"
      sha256 "23c3076564ef4a5f140dd60c399e0d32f18a9e4271b6da4530de60df693666fc"

      def install
        bin.install "scaffold"
      end
    end
  end

  test do
    system "#{bin}/scaffold version"
  end
end
