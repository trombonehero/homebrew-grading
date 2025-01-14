class Libgrading < Formula
  desc "A library for grading C- and C++-language assignments"
  homepage "https://trombonehero.github.io/libgrading"
  url "https://github.com/trombonehero/libgrading/archive/v0.3.2.tar.gz"
  sha256 "60afc4c4455dd3696a19a007478c553a3118c37ae761f9627bd449b4b7731aa1"

  depends_on "cmake" => :build
  depends_on "libdistance" => :build

  def install
    system "cmake", "-B", "build", ".", *std_cmake_args
    system "make", "-C", "build", "install"
  end

  test do
    system "test", "-f", "#{lib}/libgrading.dylib"
  end
end
