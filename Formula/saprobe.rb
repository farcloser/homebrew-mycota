class Saprobe < Formula
  desc "Audio decoding cli"
  homepage "https://github.com/farcloser/saprobe"
  license "Apache-2.0"
  head "https://github.com/farcloser/saprobe.git", branch: "main"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/saprobe"
  end

  test do
    system bin/"saprobe", "--version"
  end
end
