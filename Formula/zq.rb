class Zq < Formula
  desc "Standalone jq-compatible query engine with JSON/YAML input and JSON/YAML output"
  homepage "https://github.com/alvnukov/zq"
  url "https://github.com/alvnukov/zq/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "42ce8a7dbd0c318ae1cad00b9427a6263f7c782ca82673a3f736f082a2a81d08"
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
