class Ringabell < Formula
  desc "Fire confetti, play a sound, and send notifications from the terminal"
  homepage "https://github.com/uwinx/ringabell"
  version "1.1.0"
  license "MIT"

  depends_on :macos

  url "https://github.com/uwinx/ringabell/releases/download/v1.1.0/ringabell-macos-arm64.tar.gz"
  sha256 "4f9f0920146313f733a6a121a2d3b53161a9dfb5823fa4aabeecfad81c96521f"

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
