# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.169.0"
  license "Apache 2.0"

  depends_on "mysql" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.169.0/pscale_0.169.0_macOS_amd64.tar.gz"
      sha256 "aeedce6ba39d031341c55d14d9cd55c2a42007558adff209d57167b768db0ae6"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.169.0/pscale_0.169.0_macOS_arm64.tar.gz"
      sha256 "365ad9ef0d2ce448fe9eda4114f91d0bb553b0c89d85e2172ab15c01298549ef"

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
      url "https://github.com/planetscale/cli/releases/download/v0.169.0/pscale_0.169.0_linux_arm.tar.gz"
      sha256 "cf329d836bdb69dc9feb81ebe56a88678114853b52d43d2f4172cf6cdb4b99ac"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.169.0/pscale_0.169.0_linux_arm64.tar.gz"
      sha256 "e324d884feabb780f45018d78218807260952078c58deea9fe662a4526783d18"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.169.0/pscale_0.169.0_linux_amd64.tar.gz"
      sha256 "629fa78ac31425061ac31b66c3cf54f714292e0bddeb3d6710e98c9c718e78a5"

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
