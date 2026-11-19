class BonkCli < Formula
  desc "Bonk without a window: bootable media writer, command line only"
  homepage "https://bonk-os.app"
  version "0.1.1"
  license "MIT"

  conflicts_with "bonk", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.1/bonk-cli-0.1.1-macos-aarch64.tar.gz"
      sha256 "6681caf12bcddcd221d559b334bc0e37359ad2d3fc9153e84ca62fde28e3c728"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.1/bonk-cli-0.1.1-macos-x86_64.tar.gz"
      sha256 "c35842b0352bf59180e964f27b6d735f65d964efa155bc8d344616b23e42241e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.1/bonk-cli-0.1.1-linux-aarch64.tar.gz"
      sha256 "5a7541e1c924a35a8cbec76836ec098cd63d03fdf9ab71ee847991052bf915a4"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.1/bonk-cli-0.1.1-linux-x86_64.tar.gz"
      sha256 "8930a1bf9b5ccafd2ea4ac598576b9b4235d3a4fc303122f2dc20780b6bd6f24"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
