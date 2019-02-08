class Libgrading < Formula
  desc "A library for grading C- and C++-language assignments"
  homepage "https://trombonehero.github.io/libgrading"
  url "https://github.com/trombonehero/libgrading/archive/v0.1.7.tar.gz"
  sha256 "8d7d35a2bdb7ad74be2be3886f1d9616e938ba52045d22c0534bd7d620640040"

  depends_on "cmake" => :build
  depends_on "libdistance" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "test", "-f", "#{lib}/libgrading.dylib"
  end
end
