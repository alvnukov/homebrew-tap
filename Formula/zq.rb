class Zq < Formula
  desc "Standalone jq-compatible query engine with JSON/YAML input and JSON/YAML output"
  homepage "https://github.com/alvnukov/zq"
  url "https://github.com/alvnukov/zq/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "e15376d2183f11ce8808970bf44c042d5936c454eab6b0eeac5b0d0b0156a1cb"
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
