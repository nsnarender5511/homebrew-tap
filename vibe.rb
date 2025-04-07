# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vibe < Formula
  desc "A tool for managing and synchronizing Cursor rules across multiple projects"
  homepage "https://github.com/nsnarender5511/vibe"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nsnarender5511/vibe/releases/download/v0.0.3/vibe_darwin_amd64.tar.gz"
      sha256 "2e82ea59ddb218cae5429117b5b84c107a21f171b7febe5dc7e26f3a8cb1d6ea"

      def install
        bin.install "vibe"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nsnarender5511/vibe/releases/download/v0.0.3/vibe_darwin_arm64.tar.gz"
      sha256 "dd1fc242c36231989ebe938c287dd3d82a12820542adb0b3aecfee68994e6966"

      def install
        bin.install "vibe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nsnarender5511/vibe/releases/download/v0.0.3/vibe_linux_amd64.tar.gz"
        sha256 "33e3f2e9fdfbf0871127c5dd5507d9ed6f87c922f52e97e1982954c7082629f8"

        def install
          bin.install "vibe"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nsnarender5511/vibe/releases/download/v0.0.3/vibe_linux_arm64.tar.gz"
        sha256 "884e47e6a5828fbbd92b6ece54b25501c13a5f3745a9ff43e4e9f48b3396ae74"

        def install
          bin.install "vibe"
        end
      end
    end
  end

  test do
    system "#{bin}/vibe --version"
  end
end
