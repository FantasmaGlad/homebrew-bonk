class Bonk < Formula
  desc "Bootable media writer for USB drives and external disks"
  homepage "https://bonk-os.app"
  version "0.1.3"
  license "MIT"

  conflicts_with "bonk-cli", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.3/bonk-0.1.3-macos-aarch64.tar.gz"
      sha256 "9e33343b50a471d874ad9caa0b95bbfa8ca6b96280974d7ac455a9a724f5168b"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.3/bonk-0.1.3-macos-x86_64.tar.gz"
      sha256 "cdf7d1191b092a03665d6ce3b1ba1015966901602a41f666968202f106477082"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.3/bonk-0.1.3-linux-aarch64.tar.gz"
      sha256 "2bae006d617538fe2cf29a960111a020fe18747da82b94eb6981c389b63983e1"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.3/bonk-0.1.3-linux-x86_64.tar.gz"
      sha256 "24141e569dd73b20940d85b47512292af3e388b06dfb163a01b7e9eec8247c7e"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
