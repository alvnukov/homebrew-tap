class Happ < Formula
  desc "Helm chart and manifest importer/converter for helm-apps"
  homepage "https://github.com/alvnukov/happ"
  url "https://github.com/alvnukov/happ/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "0f89bc22d8f4b7967bf01e1f2d2be0356501f46eeaf16ada3a2f6d01fec27d15"
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
