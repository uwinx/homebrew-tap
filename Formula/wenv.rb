class Wenv < Formula
  desc "Load env files and run stuff"
  homepage "https://github.com/uwinx/wenv"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/uwinx/wenv/releases/download/v0.1.0/wenv-macos-arm64.tar.gz"
    sha256 "8e5f707f6cb44392b436128c8f888b89f5801ea6ecfd8c03410b552576a03b58"
  end

  on_linux do
    url "https://github.com/uwinx/wenv/releases/download/v0.1.0/wenv-linux-x64.tar.gz"
    sha256 "f21916918d57156584a4668554120c3e3d0212b5d7b4629387f93a0d52b04e82"
  end

  def install
    bin.install "wenv"
  end

  test do
    system "#{bin}/wenv", "--help"
  end
end
