class Zq < Formula
  desc "Standalone jq-compatible query engine with JSON/YAML input and JSON/YAML output"
  homepage "https://github.com/alvnukov/zq"
  url "https://github.com/alvnukov/zq/archive/refs/tags/v1.4.1.tar.gz"
  sha256 "cce65dae821bdcd2e33322c4fdfd32c9f6341fcc76716fbb8d8190301c87f9d8"
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
