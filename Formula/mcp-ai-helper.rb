class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.0/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "c74b4ef6b3646f952042e55d5886f7366924436331bb28d30be7fc979cec77ab"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.0/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "5df91eebe624e89182b802eb878bba3acaae06cbf43164eda67f8224e5d6165e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.0/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "bdcb5cb69dcec053245dc4b08d1f5a3f84440a0a4e5a77f67cfb60343020f3d1"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.3.0/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "37981c991ff76bae7ec7aed4b1ec96f8a24ee280d44f9a436051e95be44d265d"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
