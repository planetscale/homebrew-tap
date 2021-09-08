# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.70.0"
  license "Apache 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.70.0/pscale_0.70.0_macOS_amd64.tar.gz"
      sha256 "e022fb3682e040b101a9da1a861516121249a948ca96bcf2f6c517393bfba2f2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.70.0/pscale_0.70.0_macOS_arm64.tar.gz"
      sha256 "0b67cdba9a03e8fdc57e0c5a0291526c75a6850cea9455bb7b47ad6c066bf81c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.70.0/pscale_0.70.0_linux_amd64.tar.gz"
      sha256 "39fe9f8d76ea992f46e15611d07b5d6b96c887fbc8c3f96f301b126c65e3f946"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.70.0/pscale_0.70.0_linux_arm64.tar.gz"
      sha256 "061c17abc31b8a3b205073efa2ae4b26eeac74b1e6eddcb2cceacebbd5b8e762"
    end
  end

  depends_on "mysql" => :optional

  def install
    bin.install "pscale"
    bash_completion.install "completions/pscale.bash" => "pscale"
    zsh_completion.install "completions/pscale.zsh" => "_pscale"
    fish_completion.install "completions/pscale.fish"
  end

  test do
    system "#{bin}/pscale --version"
  end
end
