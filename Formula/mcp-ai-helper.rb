class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.0.1/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "ddbb5bb2d095c599252bca2c4b690af0451158a2f72b6f679962ce944a2bcfdd"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.0.1/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "93ce69006c784f570909413ee91f664c898a265b06aa75c4ecec862ed4ee9083"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.0.1/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "f8ea6a9a9fbd9d42634884bbc4b6e4242946b09ae46cc1a5256c6e90f4ccaec0"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.0.1/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "7a9b720ac33655bbf77f3005502cb2889d9cfafb1d63c93c597f34f4adb41280"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
