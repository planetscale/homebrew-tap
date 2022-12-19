# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.126.0"
  license "Apache 2.0"

  depends_on "mysql" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.126.0/pscale_0.126.0_macOS_arm64.tar.gz"
      sha256 "8a08fbde61198147ac108b8d0071cfb66c9355b55fb26c36c26af90ecb265c5c"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.126.0/pscale_0.126.0_macOS_amd64.tar.gz"
      sha256 "86abc6f8d389160775cf0b21946e3504a64045c4b60be2a5b5d3904d50f39d1d"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.126.0/pscale_0.126.0_linux_armv6.tar.gz"
      sha256 "0b6cd396aac373efa3ea45fd2da90604aa6418041406653b50164e532502563b"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.126.0/pscale_0.126.0_linux_arm64.tar.gz"
      sha256 "3327d7623b0b69dd5a97c9a4adf017956140436f2445ad58a3a81f4b91d3fe98"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.126.0/pscale_0.126.0_linux_amd64.tar.gz"
      sha256 "657cac6a64a5e03eb035f5b906bbe767883a7253632e66f13fcaa3979d5c8179"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
  end

  test do
    system "#{bin}/pscale --version"
  end
end
