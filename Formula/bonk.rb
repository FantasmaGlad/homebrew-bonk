class Bonk < Formula
  desc "Bootable media writer for USB drives and external disks, with a graphical and a command-line interface."
  homepage "https://github.com/FantasmaGlad/Bonk"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.5/bonk-0.0.5-macos-aarch64.tar.gz"
      sha256 "4833787a3209eaf8c5123a72a3001b96b3e843b949c273a4f791823addf846ee"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.5/bonk-0.0.5-macos-x86_64.tar.gz"
      sha256 "594c91247cfa32ea7e05b24cfe893a7661db804f16a0efb9df8e77da05fa5d58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.5/bonk-0.0.5-linux-aarch64.tar.gz"
      sha256 "7fda60bb1d878eedf4694ddd2cde32ff25eec88d69c48e8ea12c9547607fa5ca"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.5/bonk-0.0.5-linux-x86_64.tar.gz"
      sha256 "d6923ef3f5a8ce1e0754dae20409802c0e993396dd40c712b38adb7b4471c03a"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
