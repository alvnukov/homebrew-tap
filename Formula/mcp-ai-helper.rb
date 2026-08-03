class McpAiHelper < Formula
  desc "Policy-first MCP server for bounded AI-assisted repository work"
  homepage "https://github.com/alvnukov/mcp-ai-helper"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.0/mcp-ai-helper_darwin_arm64.tar.gz"
      sha256 "5b0f3a4966ddf58afe1aad676c23179047c9abd4f70e0c34ab38a79d7011aeec"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.0/mcp-ai-helper_darwin_amd64.tar.gz"
      sha256 "4e113b116b3a86a14343b3e31b2067f505e6abfb91b2f4d51accc88b435b4f12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.0/mcp-ai-helper_linux_arm64.tar.gz"
      sha256 "ccbad5113e93d6683463065b029f3212bf541eed331776fe6b2c82e207fce16d"
    else
      url "https://github.com/alvnukov/mcp-ai-helper/releases/download/v1.1.0/mcp-ai-helper_linux_amd64.tar.gz"
      sha256 "4e6f655b63b067ad5484bc15d8ac18300c79d9433bba8655e3b1624c12c809b6"
    end
  end

  def install
    bin.install "mcp-ai-helper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ai-helper --version")
  end
end
