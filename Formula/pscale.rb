# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.57.0"
  license "Apache 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.57.0/pscale_0.57.0_macOS_amd64.tar.gz"
      sha256 "70032b655106169a2c67dcfb62d0c125cfb0ada4d55b90c38eca42558804b18a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.57.0/pscale_0.57.0_macOS_arm64.tar.gz"
      sha256 "e80e1b26b7524f6ef8e6e038a4dfbb62d1792ab0e567c4760a1378b684ddd114"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.57.0/pscale_0.57.0_linux_amd64.tar.gz"
      sha256 "2f822fc00adcb0c18b5c547bfc1c28cd81971bc454472835f7a6df492297d0f8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.57.0/pscale_0.57.0_linux_arm64.tar.gz"
      sha256 "8843fc88ff15b18018ee73b47e23f1cf3926d0cab0e3fba16081405ccf57fd73"
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
