class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.0.0/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "4072992655cbb7c163182b6261a380b915660b84babe0fbf90989e51491b9e2b"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.0.0/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "a9ba4f599bc5bead7854aab5cc488cc91ec6e353404dae7a70d462807b5fa2ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.0.0/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "18b6042f5b029b7c8c8b519b5b8d06aec80fa7aac51b87c8332d46df28ca0022"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.0.0/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "a190fb7be4bb46a53cab470381c855b3baad09dfeabaa14ab0d526f778fcca6e"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
