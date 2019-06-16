class Libgrading < Formula
  desc "A library for grading C- and C++-language assignments"
  homepage "https://trombonehero.github.io/libgrading"
  url "https://github.com/trombonehero/libgrading/archive/v0.1.8.tar.gz"
  sha256 "2a65c2ec9ed35d8f2035844c71004dbf42eec9827204e9a31b9addbcd0456763"

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
