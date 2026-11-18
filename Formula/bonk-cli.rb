class BonkCli < Formula
  desc "Bonk without a window: bootable media writer, command line only"
  homepage "https://bonk-os.app"
  version "0.1.0"
  license "MIT"

  conflicts_with "bonk", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.0/bonk-cli-0.1.0-macos-aarch64.tar.gz"
      sha256 "5b5686da603ace577df2e6b6402ffac4d4678176cd4ef68dcfdef41937bf8d37"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.0/bonk-cli-0.1.0-macos-x86_64.tar.gz"
      sha256 "0edd33e8d9d38643ee79b4cddc274b509320536ee25fcca9ba35035eee3b9a5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.0/bonk-cli-0.1.0-linux-aarch64.tar.gz"
      sha256 "27f3b2b5d2e4504a041c43743b29dba5aabf58fe6202a401e35d17e423546e24"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.0/bonk-cli-0.1.0-linux-x86_64.tar.gz"
      sha256 "716473b012ea01c219e4a177f352c080161cf3507b684323d7f7131e9d6a8694"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
