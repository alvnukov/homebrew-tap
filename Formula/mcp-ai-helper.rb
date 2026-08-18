class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.4/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "ae0ba8e03967cb936062e41984efbee87aa42add2104c5ead5d4244eb5586e97"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.4/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "36c0456af89ebba0892a3bd71924f9acc928f6dd9759cad60ee4f96eec1132f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.4/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "d47d8f2c5d068320fbac06d11ee2786a634f093afd61c534ce86c1fde5b6fb4d"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.4/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "b1df8d6d56b2f4f45897f237438d75ff62c7bddd7ddd148f199b84bf7738e20f"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
