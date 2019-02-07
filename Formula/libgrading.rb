class Libgrading < Formula
  desc "A library for grading C- and C++-language assignments"
  homepage "https://trombonehero.github.io/libgrading"
  url "https://github.com/trombonehero/libgrading/archive/v0.1.6.tar.gz"
  sha256 "718505a49a1a1a0040ce9de4b40fa3c4b6e5975cb42a056708ea52ef89ac3c64"

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
