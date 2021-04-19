# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.17.0"
  license "Apache 2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/planetscale/cli/releases/download/v0.17.0/pscale_0.17.0_macOS_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "f13a4cc898ec524ece308c167109d063de91c873f1b8c1f679a62d11f64b9686"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/planetscale/cli/releases/download/v0.17.0/pscale_0.17.0_macOS_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "9f09390c402199b56156472f23f065cbe85d14a6915665320583b39a634f180c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/planetscale/cli/releases/download/v0.17.0/pscale_0.17.0_linux_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "94729840eab7a9c1f95d7e55198b607a55e4c5880b9ba5ca688cb7b31ccc1f67"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/planetscale/cli/releases/download/v0.17.0/pscale_0.17.0_linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "294daac68cb2d93169b23d313dbcae5050f418578a3d0b1700fd1ffac4882ca1"
  end

  depends_on "mysql" => :optional

  def install
    bin.install "pscale"
  end

  test do
    system "#{bin}/pscale --version"
  end
end
