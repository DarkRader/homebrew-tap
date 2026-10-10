class Macicon < Formula
  desc "Generate, customize, and apply Apple continuous-curvature squircle app icons on macOS"
  homepage "https://github.com/DarkRader/macicon"
  version "0.3.1"
  license "MIT"
  depends_on :macos

  url "https://github.com/DarkRader/macicon/releases/download/v#{version}/macicon-v#{version}-macos-universal.tar.gz"
  sha256 "a2b0276c85e158a2ea8a1f4ed6caf1f11742a7715cc5f7c41ba0bb84dd9a5653"

  def install
    bin.install "macicon"
  end

  test do
    assert_match "macicon #{version}", shell_output("#{bin}/macicon --version")
  end
end
