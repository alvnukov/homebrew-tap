class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.2/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "8d73141d1a934ef83361284436ea3750528b646a9e5598dee5b5489f6caf12e4"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.2/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "54856627d9d92d97c28995fdfa6d4ba606ebea7ac11631a75c265204c2657abe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.2/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "dc5645790be785a241bbbaaf0f522a36ec2fb28a88d6ecf9ea7b91dba1ba50dc"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.2/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "e4c846ffb667be6e6b349c6272adfe55cc8d9232208207d460117b8101ba2d10"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
