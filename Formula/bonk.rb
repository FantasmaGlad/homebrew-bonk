class Bonk < Formula
  desc "Bootable media writer for USB drives and external disks"
  homepage "https://bonk-os.app"
  version "0.1.1"
  license "MIT"

  conflicts_with "bonk-cli", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.1/bonk-0.1.1-macos-aarch64.tar.gz"
      sha256 "1c4c6c9844fb7a95f2cf79bcf997f383b540e3e2356dcb925b73943c791d7ea8"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.1/bonk-0.1.1-macos-x86_64.tar.gz"
      sha256 "780bf47e977606a026ab6bab5f2bb795463b639a8fdeafe54deb344289f747fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.1/bonk-0.1.1-linux-aarch64.tar.gz"
      sha256 "6a0bed7f0dfd645b6b2274a934f4bc30b5784982fa682b924c591fda3fb7248c"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.1/bonk-0.1.1-linux-x86_64.tar.gz"
      sha256 "b8078a6c966a0743bc5f957fd714cef93d9407dc94e4254a7063a963ed9b05b3"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
