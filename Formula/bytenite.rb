class Bytenite < Formula
  desc "ByteNite Development CLI tool"
  homepage "https://github.com/ByteNite2/bytenite-dev-cli"
  version "2025.05.02"
  
  if Hardware::CPU.arm?
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.05.02/bytenite-cli-darwin-arm64"
    sha256 "b0aeacef25359586f7d251f22d16509adf5b027b576664a4fed462ceb69589d4"
  else
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.05.02/bytenite-cli-darwin-amd64"
    sha256 "88766cd1f544038e5a70b0066635db9a9f0bd1d9e8d492e33da58c913dc20012"
  end
  
  def install
    bin.install "bytenite-cli-darwin-arm64" => "bytenite" if Hardware::CPU.arm?
    bin.install "bytenite-cli-darwin-amd64" => "bytenite" if Hardware::CPU.intel?
  end
  
  test do
    system "#{bin}/bytenite", "version"
  end
end