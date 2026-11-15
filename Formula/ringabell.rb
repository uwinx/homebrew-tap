class Ringabell < Formula
  desc "Fire confetti, play a sound, and send notifications from the terminal"
  homepage "https://github.com/uwinx/ringabell"
  version "1.6.0"
  license "MIT"

  depends_on :macos

  url "https://github.com/uwinx/ringabell/releases/download/v1.6.0/ringabell-macos-arm64.tar.gz"
  sha256 "8bad94be81f70ba7f276db22b3a408e0086891c16065643be617c7c2cb390650"

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
