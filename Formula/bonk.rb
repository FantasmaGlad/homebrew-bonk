class Bonk < Formula
  desc "Bootable media writer for USB drives and external disks, with a graphical and a command-line interface."
  homepage "https://github.com/FantasmaGlad/Bonk"
  version "0.0.6"
  license "MIT"

  conflicts_with "bonk-cli", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.6/bonk-0.0.6-macos-aarch64.tar.gz"
      sha256 "75178534cb29c36e801efbd47555f995c4cf13787ea0408cf25a667265bcb04d"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.6/bonk-0.0.6-macos-x86_64.tar.gz"
      sha256 "18f21a22feea39fe502cb9472e832dbb322a95752611a10fc5620f838e073c1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.6/bonk-0.0.6-linux-aarch64.tar.gz"
      sha256 "4ca9b0f38a03c01a5b29e555f34719d4cb8b2534eb116913e4dc855606adade7"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.6/bonk-0.0.6-linux-x86_64.tar.gz"
      sha256 "2daa48e292ac500d339779851f7305bfad82f52da50de91e0bd57c2790869b2b"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
