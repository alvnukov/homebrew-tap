class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.1/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "0bf0b7aa777669692cd1341d1068620009452b72ea31922b7515778e1663e687"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.1/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "9b86cfc143765af062e783b99097e968ae7f75e1365dc259944627ee2a15f0d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.1/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "fe77dd4561b1f82f85455eb307f6b1585b48591620919ccc2fb1a3a1203b0f88"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.1/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "af183cc804b1392cb9ccf087dfb984420e64180d11ce265ab9aa71fc04189f94"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
