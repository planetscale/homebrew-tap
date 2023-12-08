# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.174.0"
  license "Apache 2.0"

  depends_on "mysql" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.174.0/pscale_0.174.0_macOS_arm64.tar.gz"
      sha256 "06a42f27a2510bdb2dd474b675f4c42b5e10614013352d65273b8fb675892a84"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.174.0/pscale_0.174.0_macOS_amd64.tar.gz"
      sha256 "80ef6f0e3001ff8b77f14a7c34781f062e0127a575db9ed1d9d18f8f5a3d175a"

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
      url "https://github.com/planetscale/cli/releases/download/v0.174.0/pscale_0.174.0_linux_arm.tar.gz"
      sha256 "1be40e8d549b3ca44783029db8a4fcfab0be3f723f47d9b0f5b8c36b78bd1cd1"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.174.0/pscale_0.174.0_linux_arm64.tar.gz"
      sha256 "103626ac2373d9a5a750f6104c750c6de19a52e6c1cac57a9c50de7ff548d422"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.174.0/pscale_0.174.0_linux_amd64.tar.gz"
      sha256 "e5b6809a2bb45cae1d1144bec54f9410699baa00316d1efa144ed4d04837233e"

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
