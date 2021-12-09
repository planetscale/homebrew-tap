# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.87.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.87.0/pscale_0.87.0_macOS_arm64.tar.gz"
      sha256 "0418ced939bdb9e424a81792aab057e88d7be0856b98d9a427947d7904b3a387"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.87.0/pscale_0.87.0_macOS_amd64.tar.gz"
      sha256 "1d294af0a5f29464cd3d7a6f2d75ad8df14b8d5533fcc50c5b0374142b98ec2c"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.87.0/pscale_0.87.0_linux_amd64.tar.gz"
      sha256 "ad50a1cdd87c420c26fa0c33a095dbb1b4c4e193875ae263c05ce60c21e03178"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.87.0/pscale_0.87.0_linux_arm64.tar.gz"
      sha256 "96769d477b9bdc2cea2077120fe75875c24d2f1275d2462cf864e3ca66bb0471"

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
