class Bytenite < Formula
  desc "ByteNite Development CLI tool"
  homepage "https://github.com/ByteNite2/bytenite-dev-cli"
  version "2025.10.06"
  
  if Hardware::CPU.arm?
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.10.06/bytenite-cli-darwin-arm64"
    sha256 "526155c4ade511f3c0526cefeed6514a8d3eb6d1e803d7f86c71300bd432e0f7"
  else
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.10.06/bytenite-cli-darwin-amd64"
    sha256 "5401226ad2069a034fde65e46c666b27cf1c7e7c399cd2b09c71c8f6c7392fb8"
  end
  
  def install
    bin.install "bytenite-cli-darwin-arm64" => "bytenite" if Hardware::CPU.arm?
    bin.install "bytenite-cli-darwin-amd64" => "bytenite" if Hardware::CPU.intel?
  end
  
  test do
    system "#{bin}/bytenite", "version"
  end
end
