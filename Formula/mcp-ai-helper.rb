class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.1/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "16d7f9420112ccce37824d93107e85fee530ea6d55461296045da8f3dd29b727"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.1/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "258afc7b0e4fca1b20b37edf265b95623e8babec898fdf9f0698b4d3352d3a55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.1/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "dbdd737e60962888954352baf51fb9c5a2713d9421f3209a7add697305996f28"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.1/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "d1e43921be3e6ac1dbaa455cd3378c41bce7a1b5b75070c75adfd8df4d048c82"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
