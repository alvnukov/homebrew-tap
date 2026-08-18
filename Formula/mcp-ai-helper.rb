class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.3/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "65198b6b5be75e3c8c22bcc3adcbb7ff6782f5a6c34541315c45ba0590bc9ffe"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.3/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "a548b73928731c8db8d370d8ea5e69489ba3e80eb338c66f779d0761c556dded"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.3/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "e39a88472038663cdda31f2729b849d7ec0f580f50de29c407047bc287542bff"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.3/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "2ce5f3ec2ed135552b37d6f5f783e5eeea27798ecbb9aa2e7498e2fde706108a"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
