class Zq < Formula
  desc "Standalone jq-compatible query engine with JSON/YAML/TOML/CSV/XML input and output"
  homepage "https://github.com/alvnukov/zq"
  url "https://github.com/alvnukov/zq/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "12f132f6223062134e363c7eef924b17852328942a17e5a767baca2cab50f119"
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
