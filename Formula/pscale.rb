# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.172.0"
  license "Apache 2.0"

  depends_on "mysql" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.172.0/pscale_0.172.0_macOS_arm64.tar.gz"
      sha256 "79287de4d22244b599638019a733217be9f5d01a698bff55d31427ab31b05bc6"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.172.0/pscale_0.172.0_macOS_amd64.tar.gz"
      sha256 "13aeaf04ac72a40edd0f8e5a9bcd92ba02da3644bf34fc7445a49bebca837f82"

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
      url "https://github.com/planetscale/cli/releases/download/v0.172.0/pscale_0.172.0_linux_arm.tar.gz"
      sha256 "6fd11dbab4a52ead1f7616ab74a8015f3be8f7f4b5a2b520cc15b34313c9df93"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.172.0/pscale_0.172.0_linux_arm64.tar.gz"
      sha256 "51c02cba657bbd1341851fb63290d443cceb8c27a6cd3860ca57dd50df87dcda"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.172.0/pscale_0.172.0_linux_amd64.tar.gz"
      sha256 "80bb791ea4175715f50a2bb95f018c007af78814135218aabe71112452c16b8a"

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
