class EpsilonSdk < Formula
  desc "Epsilon SDK"
  homepage "https://www.numworks.com/resources/engineering/software/"
  url "file:///dev/null"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  version "1.0"

  depends_on "numworks/tap/arm-none-eabi-gcc"
  depends_on "freetype"
  depends_on "imagemagick"
  depends_on "libpng"
  depends_on "pkg-config"
  depends_on "python"
  depends_on "libusb"

  def install
    bin.mkpath
  end
end
