class ArmNoneEabiGcc < Formula
  desc "GNU Arm Embedded Toolchain"
  homepage "https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm"
  url "https://github.com/numworks/homebrew-tap/releases/download/gcc-arm-2020-q4/gcc-arm-none-eabi-10-2020-q4-major-mac.tar.bz2"
  version "10-2020q4"
  sha256 "bed12de3565d4eb02e7b58be945376eaca79a8ae3ebb785ec7344e7e2db0bdc0"

  def install
    prefix.install Dir.glob("*")
  end

  test do
    system "#{bin}/arm-none-eabi-gcc --version"
  end
end
