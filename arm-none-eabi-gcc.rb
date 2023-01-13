class ArmNoneEabiGcc < Formula
  desc "GNU Arm Embedded Toolchain"
  homepage "https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm"
  on_intel do
    url "https://github.com/numworks/homebrew-tap/releases/download/gcc-arm-2022-12-22/arm-gnu-toolchain-12.2.rel1-darwin-x86_64-arm-none-eabi.tar.xz"
    sha256 "00c0eeb57ae92332f216151ac66df6ba17d2d3b306dac86f4006006f437b2902"
  end
  on_arm  do
    url "https://github.com/numworks/homebrew-tap/releases/download/gcc-arm-2022-12-22/arm-gnu-toolchain-12.2.rel1-darwin-arm64-arm-none-eabi.tar.xz"
    sha256 "21a9e875250bcb0db8df4cb23dd43c94c00a1d3b98ecba9cdd6ed51586b12248"
  end
  version "2022.12.22"

  def install
    prefix.install Dir.glob("*")
  end

  test do
    system "#{bin}/arm-none-eabi-gcc --version"
  end
end
