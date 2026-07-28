class Portfolio < Formula
  desc "Local-first project inventory and knowledge platform"
  homepage "https://github.com/shafi-/portfolio"
  version "0.2.2"

  if Hardware::CPU.arm?
    url "https://github.com/shafi-/portfolio/releases/download/v0.2.2/portfolio-darwin-arm64"
    sha256 "d6d94b059189b88c13e6506c587ed6ad6b9ebfbd68b4258ed5af92c4f1cf38fc"
  else
    url "https://github.com/shafi-/portfolio/releases/download/v0.2.2/portfolio-darwin-amd64"
    sha256 "d6d94b059189b88c13e6506c587ed6ad6b9ebfbd68b4258ed5af92c4f1cf38fc"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "portfolio-darwin-arm64" => "portfolio"
    else
      bin.install "portfolio-darwin-amd64" => "portfolio"
    end
  end

  test do
    system "#{bin}/portfolio", "--version"
  end
end
