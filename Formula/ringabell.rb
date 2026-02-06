class Ringabell < Formula
  desc "Fire confetti, play a sound, and send notifications from the terminal"
  homepage "https://github.com/uwinx/ringabell"
  version "1.0.1"
  license "MIT"

  depends_on :macos

  url "https://github.com/uwinx/ringabell/releases/download/v1.0.1/ringabell-macos-arm64.tar.gz"
  sha256 "5f44f8c077609fe7e929ebf7d15e63ada2c64a831caffc236b8d704351f3df68"

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
