class ArmNoneEabiGcc < Formula
  desc "GNU Arm Embedded Toolchain"
  homepage "https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm"
  url "https://github.com/numworks/homebrew-tap/releases/download/gcc-arm-2019-q4/gcc-arm-none-eabi-9-2019-q4-major-mac.tar.bz2"
  version "9-2019q4-update"
  sha256 "1249f860d4155d9c3ba8f30c19e7a88c5047923cea17e0d08e633f12408f01f0"

  def install
    prefix.install Dir.glob("*")
  end

  test do
    system "#{bin}/arm-none-eabi-gcc --version"
  end
end
