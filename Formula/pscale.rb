# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.7.0"
  license "Apache 2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/planetscale/cli/releases/download/v0.7.0/pscale_0.7.0_macOS_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "2806a844a0477a253511171908d7b37ca3e34af91afa4895a7a2d7946927a63b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/planetscale/cli/releases/download/v0.7.0/pscale_0.7.0_macOS_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "7883bc6e641ad6cba28cc51c602b2151efdfee1280f47dd0f457173175ab4140"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/planetscale/cli/releases/download/v0.7.0/pscale_0.7.0_linux_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "f7bcfa14f89300996622de91f299eb0350d0aeb3efd45b58cfa94e1bdc02d452"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/planetscale/cli/releases/download/v0.7.0/pscale_0.7.0_linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "9bb2fdf95f335447ed056c4b8b6f997eedebc70b8eb59ef0a9db2e44378c2de7"
  end

  depends_on "mysql" => :optional

  def install
    bin.install "pscale"
  end

  test do
    system "#{bin}/pscale --version"
  end
end
