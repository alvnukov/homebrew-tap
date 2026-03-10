class Happ < Formula
  desc "Helm chart and manifest importer/converter for helm-apps"
  homepage "https://github.com/alvnukov/happ"
  url "https://github.com/alvnukov/happ/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "bbe1485be826865042c80e83a9141f30fc7fe3b821e7eef9e2f474f5185ddbca"
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
