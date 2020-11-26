class ArmNoneEabiGcc < Formula
  desc "GNU Arm Embedded Toolchain"
  homepage "https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm"
  url "https://github.com/numworks/homebrew-tap/releases/download/gcc-arm-2020-q2/gcc-arm-none-eabi-9-2020-q2-update-mac.tar.bz2"
  version "9-2020q2"
  sha256 "bbb9b87e442b426eca3148fa74705c66b49a63f148902a0ea46f676ec24f9ac6"

  def install
    prefix.install Dir.glob("*")
  end

  test do
    system "#{bin}/arm-none-eabi-gcc --version"
  end
end
