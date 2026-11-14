class Bonk < Formula
  desc "Bootable media writer for USB drives and external disks, with a graphical and a command-line interface."
  homepage "https://github.com/FantasmaGlad/Bonk"
  version "0.0.7"
  license "MIT"

  conflicts_with "bonk-cli", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.7/bonk-0.0.7-macos-aarch64.tar.gz"
      sha256 "c4290155bd8f8804a1ca057739c605e7dd92bbdad4671f4023e4081a18602a6f"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.7/bonk-0.0.7-macos-x86_64.tar.gz"
      sha256 "7b0550b2e0394dd9f08895f198e8ab663f84ce0ce9f6ae5fb3226bd673b1bcc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.7/bonk-0.0.7-linux-aarch64.tar.gz"
      sha256 "8441340cea92518c85179e870c8da3da35f78be209322c229bcd781c755a6ddc"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.7/bonk-0.0.7-linux-x86_64.tar.gz"
      sha256 "f9cb1ba34f9b5706f8e68541354c15baef3706bd5c41df0ba394d06786051d20"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
