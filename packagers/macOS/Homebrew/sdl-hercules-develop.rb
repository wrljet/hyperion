# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST
class SdlHerculesDevelop < Formula
  desc "SDL-Hercules-390 Develop Branch, under The Q Public License"
  homepage "https://github.com/SDL-Hercules-390/hyperion"
# URL to binaries tarball is of this form:
# https://github.com/wrljet/hyperion/releases/download/4.7.0.11167-SDL-DEV-g6aec5b66/sdl-hercules-binaries-macOS-4.7.0.11167-SDL-DEV-g6aec5b66.tar.gz
  url "https://github.com/wrljet/hyperion/releases/download/4.7.0.11167-SDL-DEV-g6aec5b66/sdl-hercules-binaries-macOS-4.7.0.11167-SDL-DEV-g6aec5b66.tar.gz"
  sha256 "9ff289bb5f24d21942de63740df0ad287b113c15827723a04a4f0b3b44e24cb9"
  license "QPL-1.0"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    puts "prefix = #{prefix}"
    puts "buildpath = #{buildpath}"
    puts "Beginning SDL-Hercules-390 installation"
    bin.install "bin/cckd2ckd"
    bin.install "bin/cckd642ckd"
    bin.install "bin/cckdcdsk"
    bin.install "bin/cckdcdsk64"
    bin.install "bin/cckdcomp"
    bin.install "bin/cckdcomp64"
    bin.install "bin/cckddiag"
    bin.install "bin/cckddiag64"
    bin.install "bin/cckdmap"
    bin.install "bin/cckdswap"
    bin.install "bin/cckdswap64"
    bin.install "bin/cfba2fba"
    bin.install "bin/cfba642fba"
    bin.install "bin/ckd2cckd"
    bin.install "bin/ckd2cckd64"
    bin.install "bin/convto64"
    bin.install "bin/dasdcat"
    bin.install "bin/dasdconv"
    bin.install "bin/dasdconv64"
    bin.install "bin/dasdcopy"
    bin.install "bin/dasdcopy64"
    bin.install "bin/dasdinit"
    bin.install "bin/dasdinit64"
    bin.install "bin/dasdisup"
    bin.install "bin/dasdlist"
    bin.install "bin/dasdload"
    bin.install "bin/dasdload64"
    bin.install "bin/dasdls"
    bin.install "bin/dasdpdsu"
    bin.install "bin/dasdseq"
    bin.install "bin/dasdser"
    bin.install "bin/dmap2hrc"
    bin.install "bin/fba2cfba"
    bin.install "bin/fba2cfba64"
    bin.install "bin/hercifc"
    bin.install "bin/herclin"
    bin.install "bin/hercules"
    bin.install "bin/hetget"
    bin.install "bin/hetinit"
    bin.install "bin/hetmap"
    bin.install "bin/hetupd"
    bin.install "bin/maketape"
    bin.install "bin/tapecopy"
    bin.install "bin/tapemap"
    bin.install "bin/tapesplt"
    bin.install "bin/vmfplc2"
    prefix.install Dir["lib"]
    prefix.install Dir["share"]
    puts "Completed install"
  end
end
