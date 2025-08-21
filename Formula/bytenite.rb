class Bytenite < Formula
  desc "ByteNite Development CLI tool"
  homepage "https://github.com/ByteNite2/bytenite-dev-cli"
  version "2025.08.21"
  
  if Hardware::CPU.arm?
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.08.21/bytenite-cli-darwin-arm64"
    sha256 "07da18f9fc71b84fd4c5175cd3b8d6db44996a75b31ba2f78d24a629644c90c0"
  else
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.08.21/bytenite-cli-darwin-amd64"
    sha256 "4c1fd2bd38c58e91752e8a27861f4b529244eadc11b4ae6c1126cc0aa0ccf613"
  end
  
  def install
    bin.install "bytenite-cli-darwin-arm64" => "bytenite" if Hardware::CPU.arm?
    bin.install "bytenite-cli-darwin-amd64" => "bytenite" if Hardware::CPU.intel?
  end
  
  test do
    system "#{bin}/bytenite", "version"
  end
end
