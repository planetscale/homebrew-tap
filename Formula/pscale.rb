# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Pscale < Formula
  desc "The PlanetScale CLI"
  homepage "https://planetscale.com/"
  version "0.21.1"
  license "Apache 2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/planetscale/cli/releases/download/v0.21.1/pscale_0.21.1_macOS_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "38884bf20e912902c7bf5393f564787fa4c102807c17499d4f3064ee785376a7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/planetscale/cli/releases/download/v0.21.1/pscale_0.21.1_macOS_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "21d6d3c0566084bf2ec3a364e17cf243a548916ea5b29bc76dad89fcd83bdf23"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/planetscale/cli/releases/download/v0.21.1/pscale_0.21.1_linux_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "bb9c28db6606fdd7fdbbce06c06e1acfbebfa38b93244914e1cc663cdc199cd9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/planetscale/cli/releases/download/v0.21.1/pscale_0.21.1_linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "394cb015028d7feac4dd9b2b004247b7f7710cf0657dbe90aeac5a9565203e01"
  end

  depends_on "mysql" => :optional

  def install
    bin.install "pscale"
  end

  test do
    system "#{bin}/pscale --version"
  end
end
