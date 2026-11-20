class BonkCli < Formula
  desc "Bonk without a window: bootable media writer, command line only"
  homepage "https://bonk-os.app"
  version "0.1.2"
  license "MIT"

  conflicts_with "bonk", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.2/bonk-cli-0.1.2-macos-aarch64.tar.gz"
      sha256 "2b44426e3b559aecddda9420af73ef04de3c8a7b5e61cb5a41300d9d31b439fc"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.2/bonk-cli-0.1.2-macos-x86_64.tar.gz"
      sha256 "b1882698f0b0d0e1fc053c30e9bffc61eccf053b9a02103b9476ebc12cb748fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.2/bonk-cli-0.1.2-linux-aarch64.tar.gz"
      sha256 "14db3aff18507e802ab26ba967179e3dd3f8f55babdcbf20fc93a050bc4c7864"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.2/bonk-cli-0.1.2-linux-x86_64.tar.gz"
      sha256 "05edab04ce8d220988f66cf3ace3b1a57c7d7016229bd7660108f549b7f429da"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
