class ArmNoneEabiGcc < Formula
  desc "GNU Arm Embedded Toolchain"
  homepage "https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm"
  url "https://github.com/numworks/homebrew-tap/releases/download/gcc-arm-2019-q3/gcc-arm-none-eabi-8-2019-q3-update-mac.tar.bz2"
  version "8-2019q3-update"
  sha256 "fc235ce853bf3bceba46eff4b95764c5935ca07fc4998762ef5e5b7d05f37085"

  def install
    prefix.install Dir.glob("*")
  end

  test do
    system "#{bin}/arm-none-eabi-gcc --version"
  end
end
