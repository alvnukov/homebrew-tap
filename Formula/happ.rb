class Happ < Formula
  desc "Helm chart and manifest importer/converter for helm-apps"
  homepage "https://github.com/alvnukov/happ"
  url "https://github.com/alvnukov/happ/archive/refs/tags/v1.2.2.tar.gz"
  sha256 "87110972dce786545b2b562b299e79e002b8b4a8f0f47aad313dd7aaab62078f"
  license "Apache-2.0"
  head "https://github.com/alvnukov/happ.git", branch: "main"

  depends_on "rust" => :build
  depends_on "go" => :build

  def install
    ENV["HAPP_GO_BIN"] = (Formula["go"].opt_bin/"go").to_s
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    output = shell_output("#{bin}/happ --help")
    assert_match "happ", output
    assert_match "jq", output
  end
end
