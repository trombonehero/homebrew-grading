class Libdistance < Formula
  desc "compute the distance between two pieces of data"
  homepage "https://monkey.org/~jose/software/libdistance/"
  url "https://github.com/trombonehero/libdistance/archive/v0.2.4-beta3.tar.gz"
  sha256 "d4824ead7416a36138654183f54660ba10d044de4578558b85f866bf55a21ffa"

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
