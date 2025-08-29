class Bytenite < Formula
  desc "ByteNite Development CLI tool"
  homepage "https://github.com/ByteNite2/bytenite-dev-cli"
  version "2025.08.29"
  
  if Hardware::CPU.arm?
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.08.29/bytenite-cli-darwin-arm64"
    sha256 "d1a84fffb131a08cfee4a6994516bd50701771b6463298fe2173b59981614f04"
  else
    url "https://github.com/ByteNite2/bytenite-dev-cli/releases/download/bytenite_cli_v2025.08.29/bytenite-cli-darwin-amd64"
    sha256 "e6e916f5bded60d55b2de7550ac001de5f1eed7c7c67ce06bb73d869b3c087d9"
  end
  
  def install
    bin.install "bytenite-cli-darwin-arm64" => "bytenite" if Hardware::CPU.arm?
    bin.install "bytenite-cli-darwin-amd64" => "bytenite" if Hardware::CPU.intel?
  end
  
  test do
    system "#{bin}/bytenite", "version"
  end
end
