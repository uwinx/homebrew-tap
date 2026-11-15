class Ringabell < Formula
  desc "Fire confetti, play a sound, and send notifications from the terminal"
  homepage "https://github.com/uwinx/ringabell"
  version "1.3.0"
  license "MIT"

  depends_on :macos

  url "https://github.com/uwinx/ringabell/releases/download/v1.3.0/ringabell-macos-arm64.tar.gz"
  sha256 "855bd2280389fdf72756f5c20e6b814bf4f31432a2d6436ee0f80756174050dc"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    prefix.install "ringabell.app"
    bin.install_symlink prefix/"ringabell.app/Contents/MacOS/ringabell"
  end

  def caveats
    <<~EOS
      macOS will prompt you to allow notifications on first run.
    EOS
  end

  test do
    system "#{bin}/ringabell", "--help"
  end
end
