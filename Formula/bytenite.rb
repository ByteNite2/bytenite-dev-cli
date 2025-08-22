class Bytenite < Formula
  desc "ByteNite Development CLI tool"
  homepage "https://github.com/ByteNite2/bytenite-dev-cli"
  version "2025.08.22"
  
  if Hardware::CPU.arm?
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.08.22/bytenite-cli-darwin-arm64"
    sha256 "277c3a4bef95beea3ea8bc4271a259d96138052d80a9c7276f91f538ca304479"
  else
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.08.22/bytenite-cli-darwin-amd64"
    sha256 "71ce3a6a0625749e7725a60bfecb4881be22dafc1ccd9516a90e2c409cccda70"
  end
  
  def install
    bin.install "bytenite-cli-darwin-arm64" => "bytenite" if Hardware::CPU.arm?
    bin.install "bytenite-cli-darwin-amd64" => "bytenite" if Hardware::CPU.intel?
  end
  
  test do
    system "#{bin}/bytenite", "version"
  end
end
