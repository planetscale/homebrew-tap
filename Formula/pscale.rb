# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.108.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.108.0/pscale_0.108.0_macOS_arm64.tar.gz"
      sha256 "614fa732d289eabdd993ec9b3d1e3708f4ca4aadacb8c1966609c190335f3d25"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.108.0/pscale_0.108.0_macOS_amd64.tar.gz"
      sha256 "aa2844bfb8d74a9ad675a743baf9afa3576c74942ec001f705c0e389264f62ca"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.108.0/pscale_0.108.0_linux_arm64.tar.gz"
      sha256 "7a7eca051f04e9ae409e30d817dc391a8ae29e0084c130599224dabef654b46e"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.108.0/pscale_0.108.0_linux_armv6.tar.gz"
      sha256 "24f84b093459db08ddb7c73df7d8585e45c5eb8bd06a41564a3c90f493dfc73a"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.108.0/pscale_0.108.0_linux_amd64.tar.gz"
      sha256 "8c24cd2baa0b31ebe73ef24705f807aab4c89edb9714ad3041d625b1b70a3ab6"

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
