class Bonk < Formula
  desc "Bootable media writer for USB drives and external disks, with a graphical and a command-line interface."
  homepage "https://github.com/FantasmaGlad/Bonk"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.4/bonk-0.0.4-macos-aarch64.tar.gz"
      sha256 "78e3fd2f5c54ada6f1c61fedb9fef1d5e23783ccaef9457f372113ace9ebf53c"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.4/bonk-0.0.4-macos-x86_64.tar.gz"
      sha256 "cd109d02b7c1c38f1b903a8243f85cfe4c5fe889a45ab2cdc715b9dc683becdb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.4/bonk-0.0.4-linux-aarch64.tar.gz"
      sha256 "712969b98d2476902599510e2538624e750400d305366945c4dbca7b2aeff29e"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.4/bonk-0.0.4-linux-x86_64.tar.gz"
      sha256 "404a34adb716bd2a338a96743ab0429733b405409c6012add1ac08a9aba8169d"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
