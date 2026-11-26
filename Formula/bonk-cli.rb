class BonkCli < Formula
  desc "Bonk without a window: bootable media writer, command line only"
  homepage "https://bonk-os.app"
  version "0.1.4"
  license "MIT"

  conflicts_with "bonk", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.4/bonk-cli-0.1.4-macos-aarch64.tar.gz"
      sha256 "029e68686c369ba4480c73ef6e21f63bd5691d294ed45da923bf8921cf035862"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.4/bonk-cli-0.1.4-macos-x86_64.tar.gz"
      sha256 "2b70eb0089a1e7ee662132bbde3c7275d7bba5b97df51aa82f197a186a2767b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.4/bonk-cli-0.1.4-linux-aarch64.tar.gz"
      sha256 "63adf7fa8202973937358b3ca1498cbf3e5180bb86d5d11c33ac0f9e58d78a43"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.4/bonk-cli-0.1.4-linux-x86_64.tar.gz"
      sha256 "1fa447056f0c5c317a04890f1a98674dc02dc5540e323ef7d5fd95f8df240014"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
