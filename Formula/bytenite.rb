class Bytenite < Formula
  desc "ByteNite Development CLI tool"
  homepage "https://github.com/ByteNite2/bytenite-dev-cli"
  version "2025.06.10"
  
  if Hardware::CPU.arm?
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.06.10/bytenite-cli-darwin-arm64"
    sha256 "b6724f63482b4f89d77b91fe4fec99f24b74cbcb4e5965a8027e608de94699a2"
  else
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.06.10/bytenite-cli-darwin-amd64"
    sha256 "50c08e7ce8f6c4809f08d76673db1730c26497d1debb84588c9efd2168fe06c7"
  end
  
  def install
    bin.install "bytenite-cli-darwin-arm64" => "bytenite" if Hardware::CPU.arm?
    bin.install "bytenite-cli-darwin-amd64" => "bytenite" if Hardware::CPU.intel?
  end
  
  test do
    system "#{bin}/bytenite", "version"
  end
end
