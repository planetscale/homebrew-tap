# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.209.0"
  license "Apache 2.0"

  depends_on "mysql" => :optional

  on_macos do
    on_intel do
      url "https://github.com/planetscale/cli/releases/download/v0.209.0/pscale_0.209.0_macOS_amd64.tar.gz"
      sha256 "b21f93721a609004651847cdc0402e88f7b5af06c0e65840e5201615e7c9b231"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    on_arm do
      url "https://github.com/planetscale/cli/releases/download/v0.209.0/pscale_0.209.0_macOS_arm64.tar.gz"
      sha256 "da783cd8f9d44d0aa4eb2c8ba5cb371d6d3c6ca084c8559230f0ca0f3f6c0059"

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
        url "https://github.com/planetscale/cli/releases/download/v0.209.0/pscale_0.209.0_linux_amd64.tar.gz"
        sha256 "97781364bf208cbcbdbd9983a16abcfd68e560a07f7e4f48b7c07d4232095953"

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
        url "https://github.com/planetscale/cli/releases/download/v0.209.0/pscale_0.209.0_linux_arm.tar.gz"
        sha256 "9062ab61230f3e3d14dff2b4302a82ea1804b02b74b54e1b25d9c4046dda7810"

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
        url "https://github.com/planetscale/cli/releases/download/v0.209.0/pscale_0.209.0_linux_arm64.tar.gz"
        sha256 "090c04d4fbaf1f1f6224d07dc2010aed4c7488371f0f70d9eba4c6ad93cb17e7"

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
