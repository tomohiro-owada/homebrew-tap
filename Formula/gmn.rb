class Gmn < Formula
  desc "A lightweight, non-interactive Gemini CLI written in Go"
  homepage "https://github.com/tomohiro-owada/gmn"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomohiro-owada/gmn/releases/download/v#{version}/gmn_#{version}_darwin_arm64.tar.gz"
      sha256 "3ebd1501affc426e8ee049ca23e86a1d4cc51a8c6dda4a6c59e70e3acce31291"
    else
      url "https://github.com/tomohiro-owada/gmn/releases/download/v#{version}/gmn_#{version}_darwin_amd64.tar.gz"
      sha256 "1bad2297da7b9e5601e20719ee30ca800e31cb5a93c469ef32a89379222b1bab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomohiro-owada/gmn/releases/download/v#{version}/gmn_#{version}_linux_arm64.tar.gz"
      sha256 "ff6c067200cd8495a729c80e9879f3641861b5f3dc94fa512ba9381964a2f716"
    else
      url "https://github.com/tomohiro-owada/gmn/releases/download/v#{version}/gmn_#{version}_linux_amd64.tar.gz"
      sha256 "8951e48012a511c38fe9cb55a7ece18c3ad173f6ebf20c8fcf3d688daa7565ab"
    end
  end

  def install
    bin.install "gmn"
  end

  test do
    assert_match "gmn version", shell_output("#{bin}/gmn --version")
  end
end
