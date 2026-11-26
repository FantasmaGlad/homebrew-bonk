class Bonk < Formula
  desc "Bootable media writer for USB drives and external disks"
  homepage "https://bonk-os.app"
  version "0.1.5"
  license "MIT"

  conflicts_with "bonk-cli", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.5/bonk-0.1.5-macos-aarch64.tar.gz"
      sha256 "a640289a93bbe539b45919ab9ce7c11e94e10a4564cb9b9454980a3004a817c7"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.5/bonk-0.1.5-macos-x86_64.tar.gz"
      sha256 "1b39699803ffc54d5d2fa41bf3bb715b4c9d0a7b84346140e62ecd77a1976034"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.5/bonk-0.1.5-linux-aarch64.tar.gz"
      sha256 "4558b37b0003541d2dcb7f58942c220ab7fd74c0c09e46f72a8e5b6bf7cc1f8a"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.5/bonk-0.1.5-linux-x86_64.tar.gz"
      sha256 "d1a24a3625e89522d10e8bce3b947ef93e337fa41bed8f405e3513ccd9fcfde8"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
