class Libdistance < Formula
  desc "compute the distance between two pieces of data"
  homepage "https://monkey.org/~jose/software/libdistance/"
  url "https://github.com/trombonehero/libdistance/archive/v0.2.4-beta2.tar.gz"
  sha256 "4331ec86a88054fe6cbeba9639a84bfc6f144c2626a0954d2ef776b03c73daed"

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
