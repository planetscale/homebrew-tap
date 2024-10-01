# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.210.0"
  license "Apache 2.0"

  depends_on "mysql" => :optional

  on_macos do
    on_intel do
      url "https://github.com/planetscale/cli/releases/download/v0.210.0/pscale_0.210.0_macOS_amd64.tar.gz"
      sha256 "f8dbafe7761b157f63d770ad057601c1e7701ed1858263e01bc191ae67ea9096"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    on_arm do
      url "https://github.com/planetscale/cli/releases/download/v0.210.0/pscale_0.210.0_macOS_arm64.tar.gz"
      sha256 "6ddbfa3c85090ee8555d03775258ca9ef2275c7a3faf2d5ee9eae7e95501449f"

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
        url "https://github.com/planetscale/cli/releases/download/v0.210.0/pscale_0.210.0_linux_amd64.tar.gz"
        sha256 "225153fc0d3de822f9ac3698840fc2b70724a51aa36a42a8884bba10dceff670"

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
        url "https://github.com/planetscale/cli/releases/download/v0.210.0/pscale_0.210.0_linux_arm.tar.gz"
        sha256 "6bd251a6fc36bfc7c0678407cea17bb31ff6c7a2a438c479ed6b9d16554b476e"

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
        url "https://github.com/planetscale/cli/releases/download/v0.210.0/pscale_0.210.0_linux_arm64.tar.gz"
        sha256 "53df6122b5bfef02426079ea29a26782907d21209d1171470fc622277a2ee571"

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
