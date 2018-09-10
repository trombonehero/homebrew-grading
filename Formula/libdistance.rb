class Libdistance < Formula
  desc "compute the distance between two pieces of data"
  homepage "https://monkey.org/~jose/software/libdistance/"
  url "http://monkey.org/~jose/software/libdistance/libdistance-0.2.3.tar.gz"
  sha256 "0565fda09ab9130c404fc4cb23d86bd7c775f0b326c1c9fbb6951361e59c35ad"

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
