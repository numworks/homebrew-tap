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
  depends_on "python3"
  depends_on "libusb"

  resource "lz4" do
    url "https://files.pythonhosted.org/packages/d9/c5/080234f5b6b698f56339edf7715d9256eca4eb3d35b36893227c399e69f9/lz4-3.1.3.tar.gz"
    sha256 "081ef0a3b5941cb03127f314229a1c78bd70c9c220bb3f4dd80033e707feaa18"
  end

  resource "pypng" do
   url "https://files.pythonhosted.org/packages/bc/fb/f719f1ac965e2101aa6ea6f54ef8b40f8fbb033f6ad07c017663467f5147/pypng-0.0.20.tar.gz"
   sha256 "1032833440c91bafee38a42c38c02d00431b24c42927feb3e63b104d8550170b"
 end

  resource "stringcase" do
    url "https://files.pythonhosted.org/packages/f3/1f/1241aa3d66e8dc1612427b17885f5fcd9c9ee3079fc0d28e9a3aeeb36fa3/stringcase-1.2.0.tar.gz"
    sha256 "48a06980661908efe8d9d34eab2b6c13aefa2163b3ced26972902e3bdfd87008"
  end

  def install
    site_packages = libexec/Language::Python.site_packages("python3")
    ENV.prepend_create_path "PYTHONPATH", site_packages
    resources.each do |r|
      r.stage do
        system "python3", *Language::Python.setup_install_args(libexec)
      end
    end
    xy = Language::Python.major_minor_version "python3"
    (lib/"python#{xy}/site-packages/homebrew-epsilon-sdk.pth").write "#{site_packages}\n"

    bin.mkpath
  end

  test do
    %w[lz4 pypng stringcase].each do |r|
      system "python3", "-c", "'import "+ r +"'"
    end
  end
end
