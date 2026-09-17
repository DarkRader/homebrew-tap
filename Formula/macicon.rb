class Macicon < Formula
  desc "Generate, customize, and apply Apple continuous-curvature squircle app icons on macOS"
  homepage "https://github.com/DarkRader/macicon"
  version "0.3.0"
  license "MIT"
  depends_on :macos

  url "https://github.com/DarkRader/macicon/releases/download/v#{version}/macicon-v#{version}-macos-universal.tar.gz"
  sha256 "946a2a49e80e3f5ba7d79af2dc63ada0bc530ba4763e181d582b24557631e80b"

  def install
    bin.install "macicon"
  end

  test do
    assert_match "macicon #{version}", shell_output("#{bin}/macicon --version")
  end
end
