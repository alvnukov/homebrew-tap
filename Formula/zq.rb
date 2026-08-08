class Zq < Formula
  desc "Standalone jq-compatible query engine with JSON/YAML/TOML/CSV/XML input and output"
  homepage "https://github.com/alvnukov/zq"
  url "https://github.com/alvnukov/zq/archive/refs/tags/v1.5.3.tar.gz"
  sha256 "2c22608d0d156f86a94fab08a270b929141010d7239d749d187c031cec7d9d8b"
  license "Apache-2.0"
  head "https://github.com/alvnukov/zq.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    (testpath/"in.json").write("{\"a\":1}")
    assert_equal "1", shell_output("#{bin}/zq -r '.a' < #{testpath}/in.json").strip
  end
end
