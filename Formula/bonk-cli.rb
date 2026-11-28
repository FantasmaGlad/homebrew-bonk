class BonkCli < Formula
  desc "Bonk without a window: bootable media writer, command line only"
  homepage "https://bonk-os.app"
  version "0.1.6"
  license "MIT"

  conflicts_with "bonk", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.6/bonk-cli-0.1.6-macos-aarch64.tar.gz"
      sha256 "d299ca50d2414db07715052c23f25d64d147cf6a6e91261e714bb75ca3181305"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.6/bonk-cli-0.1.6-macos-x86_64.tar.gz"
      sha256 "6e1beeb1daa403c53b2255b485d5a0fa641e8b15070a211a260ee50eb817d0d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.6/bonk-cli-0.1.6-linux-aarch64.tar.gz"
      sha256 "3487b22b375c322ef5396fd9f80ad4a7f65451d64a97dc1beee0ee9334a793c3"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.6/bonk-cli-0.1.6-linux-x86_64.tar.gz"
      sha256 "1a33a6ea4de48a79c6e707a1b1266b8ceead7550760a083de13a55e2a0342b27"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
