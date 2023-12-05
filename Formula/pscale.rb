# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.163.0"
  license "Apache 2.0"

  depends_on "mysql" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.163.0/pscale_0.163.0_macOS_arm64.tar.gz"
      sha256 "02bb57496db2c73acc68629f4dabb9affe24af5d9304910d0ebeaecadefe69ff"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.163.0/pscale_0.163.0_macOS_amd64.tar.gz"
      sha256 "b003810abe3601bb0971754b36134b8e94d17a76ef944aa3f4833d5903e1ae04"

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
      url "https://github.com/planetscale/cli/releases/download/v0.163.0/pscale_0.163.0_linux_arm.tar.gz"
      sha256 "fc8577787d70c4dc715e2640faaeaedc2f7446d16d5cf45f47c73877f4f3453f"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.163.0/pscale_0.163.0_linux_arm64.tar.gz"
      sha256 "63d7351098dca144cb89ef56f93ed1816719e47dac6221c754b20f22a76cdd11"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.163.0/pscale_0.163.0_linux_amd64.tar.gz"
      sha256 "33f67ddd426a1ecb960e34502ebd799fee578cfbb6a9de3c5181e42f2a7521ad"

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
