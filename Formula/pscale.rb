# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.1.17"
  license "Apache 2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/planetscale/go-releaser-test/releases/download/v0.1.17/go-releaser-test_0.1.17_macOS_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "d3151ab174fec55f43dafa6dfef19d8ef1e4101140ca1c653cb7c1d1a6e9cc9f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/planetscale/go-releaser-test/releases/download/v0.1.17/go-releaser-test_0.1.17_linux_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "9ef089fdc9d3f44dc3ed057b9248156dec714f1c1a1f8f8ebe5868a37a75ab3a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/planetscale/go-releaser-test/releases/download/v0.1.17/go-releaser-test_0.1.17_linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "df652167f59c990ab3a5cdfcd1ababfccc1bf58785cba0baaaa457eda1170ccf"
  end

  depends_on "mysql" => :optional

  def install
    bin.install "pscale"
  end

  test do
    system "#{bin}/pscale --version"
  end
end
