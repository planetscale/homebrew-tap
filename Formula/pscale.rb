# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.89.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.89.0/pscale_0.89.0_macOS_amd64.tar.gz"
      sha256 "b84c11ba2193918aec9cb787531c0be2fa3ff1ae36886ff46d0ba7b908e3a56c"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.89.0/pscale_0.89.0_macOS_arm64.tar.gz"
      sha256 "c5841a961f361da442c2c82d13e18bdb42967629bc18bb066c418fe55d6b0bd8"

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
      url "https://github.com/planetscale/cli/releases/download/v0.89.0/pscale_0.89.0_linux_arm64.tar.gz"
      sha256 "fbba79b3b3f09b98aced086271524b4eadac6d4933eea21416bf57f96929470a"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.89.0/pscale_0.89.0_linux_amd64.tar.gz"
      sha256 "3ef1399b3235e7f19009d27b2be309edc4edc5548e1ef9ece65befc0e91012a3"

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
