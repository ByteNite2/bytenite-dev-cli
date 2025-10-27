class Bytenite < Formula
  desc "ByteNite Development CLI tool"
  homepage "https://github.com/ByteNite2/bytenite-dev-cli"
  version "2025.10.27"
  
  if Hardware::CPU.arm?
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.10.27/bytenite-cli-darwin-arm64"
    sha256 "7898be400fb20fcc3b5559d381e14ef212ef7059ab647d7b346f47ac15e5f684"
  else
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.10.27/bytenite-cli-darwin-amd64"
    sha256 "726ee3032f8416c34344976371ef01feb30b8e9c5c5d71e00de06e01d06c579b"
  end
  
  def install
    bin.install "bytenite-cli-darwin-arm64" => "bytenite" if Hardware::CPU.arm?
    bin.install "bytenite-cli-darwin-amd64" => "bytenite" if Hardware::CPU.intel?
  end
  
  test do
    system "#{bin}/bytenite", "version"
  end
end
