class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.3/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "f64775cfba49f8ef1922ee6036029e4b0ede84dcd737c8f04e0f265981032f32"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.3/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "9989ac0067bbd89ca37775e8f02600c2f7504668231babc55c96789ec384577e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.3/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "550426c773c0afde053416adb93dcb4bdf2a2e245240a3bb98b2b5d52261b8ac"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.3/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "888f362817b56de0f6e8bb1713071defb19496c581cefc9e2c77c8831ec643f1"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
