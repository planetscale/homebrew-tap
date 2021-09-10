# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.71.0"
  license "Apache 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.71.0/pscale_0.71.0_macOS_amd64.tar.gz"
      sha256 "45dbe9804e11d65539feb1f6370c1da7421e3aee5b29cea617c8aecc6d388913"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.71.0/pscale_0.71.0_linux_amd64.tar.gz"
      sha256 "23e7670bf5947b4efd308bcd7f6a466ac5d8e7c1cb8e4740b1a6c672e55f5738"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.71.0/pscale_0.71.0_linux_arm64.tar.gz"
      sha256 "07d22fdc1bf348bfdb6862ddfe82a66cd1c8f9f186cab5805d2e863e7d04a8cb"
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
