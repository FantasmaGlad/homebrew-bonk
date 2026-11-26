class Bonk < Formula
  desc "Bootable media writer for USB drives and external disks"
  homepage "https://bonk-os.app"
  version "0.1.4"
  license "MIT"

  conflicts_with "bonk-cli", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.4/bonk-0.1.4-macos-aarch64.tar.gz"
      sha256 "025de19533bd5c7333867d9ac5502d09c9e41f60f4938eb81de4f9dc4c72f329"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.4/bonk-0.1.4-macos-x86_64.tar.gz"
      sha256 "d293cc91e96fd179b6ce3551b0758bb1f99568b24351119e838283bc1423072e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.4/bonk-0.1.4-linux-aarch64.tar.gz"
      sha256 "27cdd1d86a14997f10c0787d91d02a0e3396c76396bb0f96f4c728e26f1e44d8"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.4/bonk-0.1.4-linux-x86_64.tar.gz"
      sha256 "ea9d8e98ae6795fadd8e29d88bf4b4057ade0df59b96de4c08761fec8944c2e5"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
