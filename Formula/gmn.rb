class Gmn < Formula
  desc "A lightweight, non-interactive Gemini CLI written in Go"
  homepage "https://github.com/tomohiro-owada/gmn"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomohiro-owada/gmn/releases/download/v#{version}/gmn_#{version}_darwin_arm64.tar.gz"
      sha256 "f8daab189082f0b00b5793d1670b549686da1cc87d88632b7f0a3b0ce1ac56c2"
    else
      url "https://github.com/tomohiro-owada/gmn/releases/download/v#{version}/gmn_#{version}_darwin_amd64.tar.gz"
      sha256 "51407f16cc9703b3820eed058fbeb4316a30c7c3979fb663fdc711d7cd5a89f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomohiro-owada/gmn/releases/download/v#{version}/gmn_#{version}_linux_arm64.tar.gz"
      sha256 "9f471a8ae09d325b849d10dc80eb3162b4cf615b850ea0bcbbeaf045400ce72f"
    else
      url "https://github.com/tomohiro-owada/gmn/releases/download/v#{version}/gmn_#{version}_linux_amd64.tar.gz"
      sha256 "8b3de283eafaed2601ddc517848f1a88fa700a128956a95e9b761dafae0237e4"
    end
  end

  def install
    bin.install "gmn"
  end

  test do
    assert_match "gmn version", shell_output("#{bin}/gmn --version")
  end
end
