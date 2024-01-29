# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.181.0"
  license "Apache 2.0"

  depends_on "mysql" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.181.0/pscale_0.181.0_macOS_amd64.tar.gz"
      sha256 "8970483e898af274344826845d5907f82fde0c23cc922fa0f3ba1b6df64d6a49"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.181.0/pscale_0.181.0_macOS_arm64.tar.gz"
      sha256 "fcd124564b91c6bc62dad77f18d8ef3eb663cbd21f34c892096b2cd143e8c2af"

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
      url "https://github.com/planetscale/cli/releases/download/v0.181.0/pscale_0.181.0_linux_arm.tar.gz"
      sha256 "6f371a8bb1ab9988c225cdd18c240af95e9219e52bb6b9dc7f77c2789f7d3b94"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.181.0/pscale_0.181.0_linux_amd64.tar.gz"
      sha256 "ee401a1c4d0b2fbfd968132e9772dd351214d6196fadc01192d8593762c69201"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.181.0/pscale_0.181.0_linux_arm64.tar.gz"
      sha256 "10508c96b5f543fc3080822dd2f2d5464ae70a3389b52d4900a4e8b2c8218703"

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
