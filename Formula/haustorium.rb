class Haustorium < Formula
  desc "Audio quality analysis tool for music defect detection"
  homepage "https://github.com/farcloser/haustorium"
  license "Apache-2.0"
  head "https://github.com/farcloser/haustorium.git", branch: "main"

  depends_on "go" => :build
  # Hard dependency short term for convenience
  depends_on "ffmpeg"
  # Make it optional later when hypha is there
  # depends_on "ffmpeg" => :optional

  def install
    system "make", "build"
    bin.install "bin/haustorium"
    bin.install "bin/hau-report"
  end

  test do
    system bin/"haustorium", "--version"
  end
end
