class Bytenite < Formula
  desc "ByteNite Development CLI tool"
  homepage "https://github.com/ByteNite2/bytenite-dev-cli"
  version "2025.08.21"
  
  if Hardware::CPU.arm?
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.08.21/bytenite-cli-darwin-arm64"
    sha256 "73b4ae80bce2480773c448be98a7eb3db7539c72ee94a6ef0ad84c763799dc28"
  else
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.08.21/bytenite-cli-darwin-amd64"
    sha256 "86bf724bd0ecf242e758be65b1e76c8a5a134c52069e2e06ca6d20f39ae4e8eb"
  end
  
  def install
    bin.install "bytenite-cli-darwin-arm64" => "bytenite" if Hardware::CPU.arm?
    bin.install "bytenite-cli-darwin-amd64" => "bytenite" if Hardware::CPU.intel?
  end
  
  test do
    system "#{bin}/bytenite", "version"
  end
end
