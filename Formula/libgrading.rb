class Libgrading < Formula
  desc "A library for grading C- and C++-language assignments"
  homepage "https://trombonehero.github.io/libgrading"
  url "https://github.com/trombonehero/libgrading/archive/v0.3.0.tar.gz"
  sha256 "c6dfb11ae19ebff0a982a720b536d62bcd13de10b05bada2837e687ea70cd213"

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
