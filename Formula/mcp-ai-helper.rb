class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.2/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "27272b2da083c69707e44843adab235d099e92af7b13dc07a605730a6991b531"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.2/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "ee83e602cccad1cfbfb57a3048288264f7e833c586d3a5382572f7337d4925b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.2/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "d09a16f2fb2e8724eaa14da3cfc33fa5b494e4bf7a0d479a1dc58974b8ac2d89"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.2/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "1bbb36a1964cd215cd092151d58d7510a8bf56a84aaf27ea6ef21691ba837a3f"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
