class Impromptu < Formula
  desc "CLI tool for scraping, querying and visualizing Prometheus metrics"
  homepage "https://github.com/lovromazgon/impromptu"
  url "https://github.com/lovromazgon/impromptu/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "799239821a350c67e38815bd42551bd7c58c631db5fab2ec37fa07632c969af5"
  license "MIT"
  head "https://github.com/lovromazgon/impromptu", branch: "main"

  depends_on "go" => :build

  def install
    system "make", "build", "VERSION=v#{version}"
    bin.install "impromptu"
  end

  test do
    assert_match(version.to_s, shell_output("#{bin}/impromptu --version"))
  end
end
