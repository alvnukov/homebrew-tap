class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.5/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "7f89f63b17bbb443af1f5efbeab5f7ae45be91e093c7a1b699e0fb2fd8bc1b47"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.5/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "0b7a2fe50f312095475c2dfa6a5cab465794bac428c527c686ec1b5a20f63f82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.5/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "92b57c04a148b4d9cb4b197a46b27f2da715fa1517547c138dd8a07c8174d874"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.5/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "ff72afa9b8fb7a27d83aca95c411ce8c2a5d4a4f482c4abdf31d9b04b156258d"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
