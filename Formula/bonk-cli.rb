class BonkCli < Formula
  desc "Bonk without a window: bootable media writer, command line only"
  homepage "https://bonk-os.app"
  version "0.0.5"
  license "MIT"

  conflicts_with "bonk", because: "both install the bonk command"

  on_macos do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.5/bonk-cli-0.0.5-macos-aarch64.tar.gz"
      sha256 "3441cf2afdbfc5108151602ce927f1f7d3f3c5ae7834ebc08191853db2780389"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.5/bonk-cli-0.0.5-macos-x86_64.tar.gz"
      sha256 "bb8266d34de751fa41b14e46bebae01af67423cb11204196f3bd948a315e26b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.5/bonk-cli-0.0.5-linux-aarch64.tar.gz"
      sha256 "68d2216519cc14d188a163d0f886ebf885479ab75d4dcb1afde94a6d68583184"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.5/bonk-cli-0.0.5-linux-x86_64.tar.gz"
      sha256 "9a644b12bc33c68348cd3f6075c47d13edca39b82c72dcb3eafce8a63bda1290"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
