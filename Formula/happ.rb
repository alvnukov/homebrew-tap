class Happ < Formula
  desc "Helm chart and manifest importer/converter for helm-apps"
  homepage "https://github.com/alvnukov/happ"
  url "https://github.com/alvnukov/happ/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "e30c7727d3ca817ca873b67284e927f5f371ad4193c4ee813f935e0ac9eb7982"
  license "Apache-2.0"
  head "https://github.com/alvnukov/happ.git", branch: "main"
  revision 2

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
