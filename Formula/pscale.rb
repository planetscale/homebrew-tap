# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.78.0"
  license "Apache 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.78.0/pscale_0.78.0_macOS_amd64.tar.gz"
      sha256 "22c7c70117d315715a6de693f0f9ddc317c41fec6381f0c3c8bb9f0b041565f5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/planetscale/cli/releases/download/v0.78.0/pscale_0.78.0_macOS_arm64.tar.gz"
      sha256 "3df321e6a09195755e795a986bb099453793b2c5b3e117f445957ffdc82efdcb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/planetscale/cli/releases/download/v0.78.0/pscale_0.78.0_linux_amd64.tar.gz"
      sha256 "5cd4298f2c5ecab97d875c7fe69db741746a842757ed8cfc84f728a5afe6bfaa"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/planetscale/cli/releases/download/v0.78.0/pscale_0.78.0_linux_arm64.tar.gz"
      sha256 "c1ca90009d339667bf5123248c18d12c93fcb6e8f7c267b4a71fdd1e2397c841"
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
