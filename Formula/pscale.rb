# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.213.0"
  license "Apache 2.0"

  depends_on "mysql" => :optional

  on_macos do
    on_intel do
      url "https://github.com/planetscale/cli/releases/download/v0.213.0/pscale_0.213.0_macOS_amd64.tar.gz"
      sha256 "46cf9a1dbfc11c14d36a38d795aafc4ecf2bbefe7214e79d6dd84ab1f931d10b"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    on_arm do
      url "https://github.com/planetscale/cli/releases/download/v0.213.0/pscale_0.213.0_macOS_arm64.tar.gz"
      sha256 "edb0e4e8b3ca0c4c606673738ea1dd5dce3b7c40147cec02d7fb6404b719f049"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/planetscale/cli/releases/download/v0.213.0/pscale_0.213.0_linux_amd64.tar.gz"
        sha256 "ceaf4f51efb3f3fd67f0fa1885c0c635bab5e0a0a83f00ad4f0e205a8a900e56"

        def install
          bin.install "pscale"
          bash_completion.install "completions/pscale.bash" => "pscale"
          zsh_completion.install "completions/pscale.zsh" => "_pscale"
          fish_completion.install "completions/pscale.fish"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/planetscale/cli/releases/download/v0.213.0/pscale_0.213.0_linux_arm.tar.gz"
        sha256 "4382d71ea5d65a5c667e628eaa27e22c8cd253a202ad92bfb5363fff72ca80f1"

        def install
          bin.install "pscale"
          bash_completion.install "completions/pscale.bash" => "pscale"
          zsh_completion.install "completions/pscale.zsh" => "_pscale"
          fish_completion.install "completions/pscale.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/planetscale/cli/releases/download/v0.213.0/pscale_0.213.0_linux_arm64.tar.gz"
        sha256 "3e25f1210afadb3a0142b53aa5430496d83f62b88548075d6b133dea53c5e1b3"

        def install
          bin.install "pscale"
          bash_completion.install "completions/pscale.bash" => "pscale"
          zsh_completion.install "completions/pscale.zsh" => "_pscale"
          fish_completion.install "completions/pscale.fish"
        end
      end
    end
  end

  test do
    system "#{bin}/pscale --version"
  end
end
