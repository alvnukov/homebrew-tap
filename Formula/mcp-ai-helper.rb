class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.0/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "2bce1d7ed493824571aaafe153aacc6ff0adf1b8961797eb6a78e75c4ce28f82"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.0/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "6ed0e283e453bb885623b8980b4d977f3dea3bb36bee84d6667f9369d33bd3d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.0/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "3dfd6eaf60b0fa0c0f681fd7dd69be2a4df3f5397bb3342f975d516f23f22ccc"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.0/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "b42d1a0327cdd018f24ca73fd28775fd1fdab8c0bfce039380808a3c53a761f7"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
