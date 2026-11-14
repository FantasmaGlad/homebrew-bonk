class BonkCli < Formula
  desc "Bonk without a window: bootable media writer, command line only"
  homepage "https://bonk-os.app"
  version "0.0.7"
  license "MIT"

  conflicts_with "bonk", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.7/bonk-cli-0.0.7-macos-aarch64.tar.gz"
      sha256 "1b8692be6c0e7046923a5e8b0f1667519406c6a2c38813e73f493fd0afac814e"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.7/bonk-cli-0.0.7-macos-x86_64.tar.gz"
      sha256 "f3add03f5f42afae5300762526b12a280dbf18ceb692ef7d8583d4e7bb07e6b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.7/bonk-cli-0.0.7-linux-aarch64.tar.gz"
      sha256 "9f57795ba849d7e5a0e57813a8b130a3b88945db2482656de343e075939d0446"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.7/bonk-cli-0.0.7-linux-x86_64.tar.gz"
      sha256 "05535677dd3be67883af3d02ab7a849dacbc05cf7e7d3fbda8361b2cc4b16124"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
