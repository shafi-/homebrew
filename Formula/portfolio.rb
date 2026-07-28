class Portfolio < Formula
  desc "Local-first project inventory and knowledge platform"
  homepage "https://github.com/shafi-/portfolio"
  version "0.2.2"

  if Hardware::CPU.arm?
    url "https://github.com/shafi-/portfolio/releases/download/v0.2.2/portfolio-darwin-arm64"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  else
    url "https://github.com/shafi-/portfolio/releases/download/v0.2.2/portfolio-darwin-amd64"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
