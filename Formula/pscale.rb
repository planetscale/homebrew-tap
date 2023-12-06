# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.168.0"
  license "Apache 2.0"

  depends_on "mysql" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.168.0/pscale_0.168.0_macOS_arm64.tar.gz"
      sha256 "feae8f5879172f11284136d95da6cb9550991db7ecfef8930e55aad460d9d8a7"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.168.0/pscale_0.168.0_macOS_amd64.tar.gz"
      sha256 "1fcd086da9f57ff66663262e2311d276b6e44231a051f274880ba414020f6c74"

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
      url "https://github.com/planetscale/cli/releases/download/v0.168.0/pscale_0.168.0_linux_arm.tar.gz"
      sha256 "9dde17d3c73767d8e55b1dbf6660e355a25ca1c3d9de02aec42d5fcad818699e"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.168.0/pscale_0.168.0_linux_arm64.tar.gz"
      sha256 "bb8867a745bce315106302f9350ed62411bf6d185a988462230849ffc9548a50"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.168.0/pscale_0.168.0_linux_amd64.tar.gz"
      sha256 "4968d946876e6d7991f5557cd3620e2aadc8c3de5e68b4256e2d2d11428090d4"

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
