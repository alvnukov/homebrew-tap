class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.2/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "526b61e374516247958c600c86f7f10bee4c30591041f33e5b98c9d9020eac09"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.2/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "97f4caaed17a65969331cd959609d56ee1e52195ce74a6e197d134eab9439c6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.2/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "b9d85721e8ced268bc6469c5e78a6df50cac8ca77b1135afa56b1800822d968c"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.2.2/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "e65581ee132e934d7ea69801cf9d3b7ba86c04dd71e7d612bf15ccd3555a6717"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
