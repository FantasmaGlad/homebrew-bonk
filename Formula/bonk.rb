class Bonk < Formula
  desc "Bootable media writer for USB drives and external disks"
  homepage "https://bonk-os.app"
  version "0.1.2"
  license "MIT"

  conflicts_with "bonk-cli", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.2/bonk-0.1.2-macos-aarch64.tar.gz"
      sha256 "9a2c73eb85f424037d8ea8213ce86e0229579ed2ed033747c7fa742b51f25fd2"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.2/bonk-0.1.2-macos-x86_64.tar.gz"
      sha256 "ad3c1b18d92cffac4d3e326346922a6a442ed2d39018728a715e389f6955e639"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.2/bonk-0.1.2-linux-aarch64.tar.gz"
      sha256 "51914fff6a61912b43206ec0c108a31abc7908ef5cf11662ea8a981284d62c9b"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.2/bonk-0.1.2-linux-x86_64.tar.gz"
      sha256 "88197f6e69fae9e209273e33d8d296afbdd87be332601c50da13840a985335ca"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
