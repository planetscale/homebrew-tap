# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.211.0"
  license "Apache 2.0"

  depends_on "mysql" => :optional

  on_macos do
    on_intel do
      url "https://github.com/planetscale/cli/releases/download/v0.211.0/pscale_0.211.0_macOS_amd64.tar.gz"
      sha256 "13af20984c1eb20c84b351f3dee5e7cec14fb40a29c681616d802db255573fce"

      def install
        bin.install "pscale"
        bash_completion.install "completions/pscale.bash" => "pscale"
        zsh_completion.install "completions/pscale.zsh" => "_pscale"
        fish_completion.install "completions/pscale.fish"
      end
    end
    on_arm do
      url "https://github.com/planetscale/cli/releases/download/v0.211.0/pscale_0.211.0_macOS_arm64.tar.gz"
      sha256 "8c88a56dc5b971f14a8c0c9f3167c73a444069784fb12e405c1cd8e393f244b4"

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
        url "https://github.com/planetscale/cli/releases/download/v0.211.0/pscale_0.211.0_linux_amd64.tar.gz"
        sha256 "2f29e9e2905307ae6cf2dcd0c5f103accaef1fd95a489408e2eac7a96b7a769a"

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
        url "https://github.com/planetscale/cli/releases/download/v0.211.0/pscale_0.211.0_linux_arm.tar.gz"
        sha256 "02483a6318de2e2d799f63766d7e644866c3041cb19c74921832c839e12319cf"

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
        url "https://github.com/planetscale/cli/releases/download/v0.211.0/pscale_0.211.0_linux_arm64.tar.gz"
        sha256 "d122d80cb6dc5d5224273d5baa17278953af38dab4aff9371eb6fd2fcb78d7d5"

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
