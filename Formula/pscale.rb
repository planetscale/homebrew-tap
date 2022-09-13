# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.116.0"
  license "Apache 2.0"

  depends_on "mysql" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.116.0/pscale_0.116.0_macOS_arm64.tar.gz"
      sha256 "fc3677ce40022548e2cfb89588041e90423c56f734e54d366fd11d2ee7e81ba7"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.116.0/pscale_0.116.0_macOS_amd64.tar.gz"
      sha256 "73daa2b16d95c1553aeaa5db5e0cb147e7b97d41b3c781f842d88108daab4a3f"

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
      url "https://github.com/planetscale/cli/releases/download/v0.116.0/pscale_0.116.0_linux_armv6.tar.gz"
      sha256 "ded279f7bf52475689effe92a2fc8d02ddd4bacb954e2ab4934927cc82f50b95"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.116.0/pscale_0.116.0_linux_amd64.tar.gz"
      sha256 "39b471e1c56707af052e693bfc02d92e591bbbc7bc95c5e9d8c7bd7a5647e344"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.116.0/pscale_0.116.0_linux_arm64.tar.gz"
      sha256 "ed5691c4e460b19dad8038126c9a3d8977597b0466f4ebadae31e574168c7226"

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
