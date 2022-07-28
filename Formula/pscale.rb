# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.112.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.112.0/pscale_0.112.0_macOS_arm64.tar.gz"
      sha256 "64fc349689fcf7715964c8eddb9ff5c28d01c0d727b4c9d4f609581c82a5291c"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.112.0/pscale_0.112.0_macOS_amd64.tar.gz"
      sha256 "dff7505aae240f6581fbda22fa2bfcf9e8a8afa4c2ddafd616a442e318108c75"

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
      url "https://github.com/planetscale/cli/releases/download/v0.112.0/pscale_0.112.0_linux_armv6.tar.gz"
      sha256 "42c43cad3cef344208e9682144a2aa85d05edd644ca664e820d7fbe06d421310"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.112.0/pscale_0.112.0_linux_amd64.tar.gz"
      sha256 "7cfe1eaa935f90cc19b430f5af1022b3ebb58558ff4a05e1f34604a474c5da77"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.112.0/pscale_0.112.0_linux_arm64.tar.gz"
      sha256 "045c830fb70f7dfb1636bf63b8a40e7f6b3f9afbf6db3c03646760a727753f68"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
  end

  depends_on "mysql" => :optional

  test do
    system "#{bin}/pscale --version"
  end
end
