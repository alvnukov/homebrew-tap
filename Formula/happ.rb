class Happ < Formula
  desc "Helm chart and manifest importer/converter for helm-apps"
  homepage "https://github.com/alvnukov/happ"
  url "https://github.com/alvnukov/happ/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "455d93d3741ce9a395841ce0a6559d0adfea4d02b3e6fbdd4d0fb65c768fbd32"
  license "Apache-2.0"
  head "https://github.com/alvnukov/happ.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    output = shell_output("#{bin}/happ --help")
    assert_match "happ", output
    assert_match "jq", output
  end
end
