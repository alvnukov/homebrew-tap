class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.4/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "5e1207f468f7242d3a6b783a66a08768e17418a764fa1d512c9b194ad9c94f86"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.4/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "b836f4884a1cbe3fc18aed5390851f88458a6897cebaf1746a9dcc3bf0f46dd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.4/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "9809e0e91a2f379f9e4aa30108a6bb172e0eb1981db87445cfcbe63978f66fab"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.4/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "d7b0675c53db6ca8e1832eb7ba5553051fe3064ff195885f509337e9a1ddf808"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
