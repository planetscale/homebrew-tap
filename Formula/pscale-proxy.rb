# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class PscaleProxy < Formula
  desc "The PlanetScale SQL Proxy"
  homepage "https://planetscale.com/"
  version "0.1.2"
  license "Apache 2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/planetscale/sql-proxy/releases/download/v0.1.2/pscale-proxy_0.1.2_macOS_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "ea43eb66f9bdc107d147026f947117605cd5298e6ac7c153fa40a661bd677f79"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/planetscale/sql-proxy/releases/download/v0.1.2/pscale-proxy_0.1.2_linux_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "5c8b1fbf4aa361fc76397b9613f4e2ce123fc8ba6eac23a15c39a08185a4c9af"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/planetscale/sql-proxy/releases/download/v0.1.2/pscale-proxy_0.1.2_linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "b042c1a38adcb40eab184bac31a2b21d86b13bb95c26451e1ec6a5e3637acbed"
  end

  def install
    bin.install "pscale-proxy"
  end

  test do
    system "#{bin}/pscale-proxy --version"
  end
end
