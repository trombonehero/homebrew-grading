class Libgrading < Formula
  desc "A library for grading C- and C++-language assignments"
  homepage "https://trombonehero.github.io/libgrading"
  url "https://github.com/trombonehero/libgrading/archive/v0.1.2.tar.gz"
  sha256 "1d0e11cf1adef7bc40df08ef1f984f4f8dcc2172d5bd1bae7a48e0871b546fa7"

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
