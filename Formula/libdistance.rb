class Libdistance < Formula
  desc "compute the distance between two pieces of data"
  homepage "https://monkey.org/~jose/software/libdistance/"
  url "https://github.com/trombonehero/libdistance/archive/v0.2.3.tar.gz"
  sha256 "5f488394adcc72a490097ee6b87e4e0f5dbedd2e8d54902a4a4a8b970889756c"

  def install
    system "make"
    system "make", "-C", "test"

    include.install "distance.h"
    lib.install "libdistance.a"

    mkdir "#{prefix}/test"
    cp "test/test", "#{prefix}/test/"
  end

  test do
    system "#{prefix}/test/test"
  end
end
