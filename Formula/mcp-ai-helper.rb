class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.1/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "2dc73ffb434315563c1e0d82c75a416a162aea0556959c1d196ae61ab5d49a8c"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.1/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "20e597c21382344dce386fdd44f157430c174461530178c37b8a0f381d1a0eaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.1/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "1f05bd0226945214972948bf802e3886b2186e0af1fc33b752e1b4f3cc7dd222"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.1/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "89206bc97a509ec0ee423c234ba4255add71c3e74091d68052be0cb50642f064"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
