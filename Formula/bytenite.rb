class Bytenite < Formula
  desc "ByteNite Development CLI tool"
  homepage "https://github.com/ByteNite2/bytenite-dev-cli"
  version "2025.05.21"
  
  if Hardware::CPU.arm?
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.05.21/bytenite-cli-darwin-arm64"
    sha256 "725b746e2eb0848683a03b7f5597ec2c3874bf92a9ccba1c75b9fe1b9ca71f04"
  else
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.05.21/bytenite-cli-darwin-amd64"
    sha256 "22ddafeb4399332f7506e450b55e32d51bfb9c378b7cb86b75cf6acd06d3f766"
  end
  
  def install
    bin.install "bytenite-cli-darwin-arm64" => "bytenite" if Hardware::CPU.arm?
    bin.install "bytenite-cli-darwin-amd64" => "bytenite" if Hardware::CPU.intel?
  end
  
  test do
    system "#{bin}/bytenite", "version"
  end
end
