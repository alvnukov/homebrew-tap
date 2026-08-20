class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.0/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "f668b24f3175459a4e3d0321c9fdcae96e08b79f961a079583e6f32648502217"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.0/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "c34f0f9aeac13aed438f56c8cb4777258479cb7090ed45044d6eef97b959861a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.0/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "38989ebeafcf0695c3e595907c8f0ee6df6aa3c978d732fbeba5372e3b0a2780"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.0/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "c356defc56e485d1f0ac5c906c28db6e05245c93863d8563af8c93166357790a"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
