class EpsilonSdk < Formula
  include Language::Python::Virtualenv
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

  resource "lz4" do
    url "https://files.pythonhosted.org/packages/d9/c5/080234f5b6b698f56339edf7715d9256eca4eb3d35b36893227c399e69f9/lz4-3.1.3.tar.gz"
    sha256 "081ef0a3b5941cb03127f314229a1c78bd70c9c220bb3f4dd80033e707feaa18"
  end

  resource "pypng" do
    url "https://files.pythonhosted.org/packages/ac/56/8b9d4ba9290bb6bd0b0824fd6f4ce8a852126f203f3edcef8b7abfbd8937/pypng-0.0.21-py3-none-any.whl"
    sha256 "76f8a1539ec56451da7ab7121f12a361969fe0f2d48d703d198ce2a99d6c5afd"
  end

  resource "stringcase" do
    url "https://files.pythonhosted.org/packages/f3/1f/1241aa3d66e8dc1612427b17885f5fcd9c9ee3079fc0d28e9a3aeeb36fa3/stringcase-1.2.0.tar.gz"
    sha256 "48a06980661908efe8d9d34eab2b6c13aefa2163b3ced26972902e3bdfd87008"
  end

  def install
    virtualenv_install_with_resources
    bin.mkpath
  end

  test do
    system "python", "-c", "'import lz4'"
    system "python", "-c", "'import png'"
    system "python", "-c", "'import stringcase'"
  end
end
