class Bytenite < Formula
  desc "ByteNite Development CLI tool"
  homepage "https://github.com/ByteNite2/bytenite-dev-cli"
  version "2025.06.16"
  
  if Hardware::CPU.arm?
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.06.16/bytenite-cli-darwin-arm64"
    sha256 "33afc22a316913522f632b57e604acf398969ff2dfd055961bf4b3e0520460e1"
  else
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.06.16/bytenite-cli-darwin-amd64"
    sha256 "ba351089399f826a1a465b15404d8ae6738ec264ac871f83beac564d4c098fd3"
  end
  
  def install
    bin.install "bytenite-cli-darwin-arm64" => "bytenite" if Hardware::CPU.arm?
    bin.install "bytenite-cli-darwin-amd64" => "bytenite" if Hardware::CPU.intel?
  end
  
  test do
    system "#{bin}/bytenite", "version"
  end
end
