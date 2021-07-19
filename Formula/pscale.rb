# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.59.0"
  license "Apache 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.59.0/pscale_0.59.0_macOS_amd64.tar.gz"
      sha256 "bc40ab546d11c20ce2a8b4166f4c1eae90beb3940cc855ec47eeea6d2fa1f2ec"
    end
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.59.0/pscale_0.59.0_macOS_arm64.tar.gz"
      sha256 "6ce9f5aece3970e4e920ed22ec7f56769b41bc48bfc6bfce824c531cc7c47aeb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.59.0/pscale_0.59.0_linux_amd64.tar.gz"
      sha256 "c7c271abbc9417027d195588efbddc9b86e4fcb6fed1b424b59156273b732a9f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.59.0/pscale_0.59.0_linux_arm64.tar.gz"
      sha256 "2857247c6e10260e60acc2ac2e91aabc7a5f0f794a7c362b7f9f9b8def768ef4"
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
