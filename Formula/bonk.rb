class Bonk < Formula
  desc "Bootable media writer for USB drives and external disks"
  homepage "https://bonk-os.app"
  version "0.1.6"
  license "MIT"

  conflicts_with "bonk-cli", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.6/bonk-0.1.6-macos-aarch64.tar.gz"
      sha256 "8f05bf60d9449360ff68c7392bf80f5ff9084495cae639fab0e043b1508b4b36"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.6/bonk-0.1.6-macos-x86_64.tar.gz"
      sha256 "4fb988d15434081eee51f56431f43eb42ca6bbda5d5939782ce2c0138390276d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.6/bonk-0.1.6-linux-aarch64.tar.gz"
      sha256 "4660a462fb8bd941de035f684c317a6cbd67d1b57fc3a24285c44051eac15e53"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.6/bonk-0.1.6-linux-x86_64.tar.gz"
      sha256 "dc10efb0be56dcfd4496adc0f6791754dd7ebd0bbe5852a191816a05acb94387"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
