class Bytenite < Formula
  desc "ByteNite Development CLI tool"
  homepage "https://github.com/ByteNite2/bytenite-dev-cli"
  version "2025.10.27"
  
  if Hardware::CPU.arm?
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.10.27/bytenite-cli-darwin-arm64"
    sha256 "fb7588f70ec06c0ee0a727ef622e13686c4aa26ab33811de6b87dd457c1c0632"
  else
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.10.27/bytenite-cli-darwin-amd64"
    sha256 "7c8053bd18e9e486dfc5adec3193478fc672b1ee773d17160b263955344dd20c"
  end
  
  def install
    bin.install "bytenite-cli-darwin-arm64" => "bytenite" if Hardware::CPU.arm?
    bin.install "bytenite-cli-darwin-amd64" => "bytenite" if Hardware::CPU.intel?
  end
  
  test do
    system "#{bin}/bytenite", "version"
  end
end
