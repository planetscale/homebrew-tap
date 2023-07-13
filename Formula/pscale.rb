# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.150.0"
  license "Apache 2.0"

  depends_on "mysql" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.150.0/pscale_0.150.0_macOS_arm64.tar.gz"
      sha256 "ff876343b1518ca8f0f31b060272f4f82305a53aa766c8f7268ad134305afca3"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.150.0/pscale_0.150.0_macOS_amd64.tar.gz"
      sha256 "0ef70b483cd3eb46104ac5444dce1bae7e9daeeb77303fa4fc2378f3a0c828a7"

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
      url "https://github.com/planetscale/cli/releases/download/v0.150.0/pscale_0.150.0_linux_armv6.tar.gz"
      sha256 "ebe105bec3eefc38dc087c1a4c9dd4e22afac15257c8c9d54cc5936bd8cfc0a7"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.150.0/pscale_0.150.0_linux_arm64.tar.gz"
      sha256 "f4c379bc4db8a0c5ff2a3307bde528a3180acf823682ee9da1506184eefeeeec"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.150.0/pscale_0.150.0_linux_amd64.tar.gz"
      sha256 "1c377db1bedcc8ea0df3c58cde1fdfa3ec37fbaf80ba3accc7e8cffcc94fc388"

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
