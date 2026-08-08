class Zq < Formula
  desc "Standalone jq-compatible query engine with JSON/YAML/TOML/CSV/XML input and output"
  homepage "https://github.com/alvnukov/zq"
  url "https://github.com/alvnukov/zq/archive/refs/tags/v1.5.4.tar.gz"
  sha256 "709a9bfc912bdf00885323fa242083107a6c7a8fc46f585e111a06bf5e92b74e"
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
