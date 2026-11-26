class BonkCli < Formula
  desc "Bonk without a window: bootable media writer, command line only"
  homepage "https://bonk-os.app"
  version "0.1.3"
  license "MIT"

  conflicts_with "bonk", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.3/bonk-cli-0.1.3-macos-aarch64.tar.gz"
      sha256 "868c062ba64adff346dd37239e58022f201b8c31d801bbe751b6ed654206cd09"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.3/bonk-cli-0.1.3-macos-x86_64.tar.gz"
      sha256 "d67d1e83acb6e14e38a5b54965e48597bdfe30b9d8009d8170852a5395259ef0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.3/bonk-cli-0.1.3-linux-aarch64.tar.gz"
      sha256 "634dbe7c3b5d83d8b953cfc07c02de37a7714027de6ea31b14728843d89cd0db"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.3/bonk-cli-0.1.3-linux-x86_64.tar.gz"
      sha256 "6a0de71421d4970329f2cab84fbfa1ec9d96de18e8c0002a1caa1a78cb045a75"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
