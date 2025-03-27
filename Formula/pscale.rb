# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.234.0"
  license "Apache 2.0"

  depends_on "mysql" => :optional

  on_macos do
    on_intel do
      url "https://github.com/planetscale/cli/releases/download/v0.234.0/pscale_0.234.0_macOS_amd64.tar.gz"
      sha256 "2bbd2e4faa08e79000ac7d096ae81c5a82db4e500eea58f5c4c5843ef62bfc0a"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    on_arm do
      url "https://github.com/planetscale/cli/releases/download/v0.234.0/pscale_0.234.0_macOS_arm64.tar.gz"
      sha256 "22dbd4150256baa814eb11ef84cb739537e1c1edd3539b8b5993f8f67252fa94"

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
        url "https://github.com/planetscale/cli/releases/download/v0.234.0/pscale_0.234.0_linux_amd64.tar.gz"
        sha256 "fb86abf027e16688dd74b288908956a68a71bf4ae8e34795aa30c93bdc7f03d3"

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
        url "https://github.com/planetscale/cli/releases/download/v0.234.0/pscale_0.234.0_linux_arm.tar.gz"
        sha256 "88d7a000a07d2e399f7c741035f3090e8d1aba799b12329057f956dc67d979c3"

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
        url "https://github.com/planetscale/cli/releases/download/v0.234.0/pscale_0.234.0_linux_arm64.tar.gz"
        sha256 "f95d1ba76ab12060d6f44f359ff9212322f4db91c80e7164829391eb11ff845d"

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
