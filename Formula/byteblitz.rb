class Byteblitz < Formula
  desc "A CLI-tool for viewing binary files."
  homepage "https://github.com/noahra/byteblitz"
  url "https://github.com/noahra/byteblitz/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "c0732a455572585c9951d02000eafa4225cd7fc564aeddbe638564b7ba931a70"
  license "GPL-3.0"


  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/byteblitz"
  end

  test do
    system "#{bin}/byteblitz"
  end
end
