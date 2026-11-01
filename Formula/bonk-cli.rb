class BonkCli < Formula
  desc "Bonk without a window: bootable media writer, command line only"
  homepage "https://bonk-os.app"
  version "0.0.4"
  license "MIT"

  conflicts_with "bonk", because: "both install the bonk command"

  on_macos do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.4/bonk-cli-0.0.4-macos-aarch64.tar.gz"
      sha256 "76a14f11ce4436ff99b0b14d0ec5b26c61aa819bacb41e1f81a46f2feb5aa5e1"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.4/bonk-cli-0.0.4-macos-x86_64.tar.gz"
      sha256 "71830e1772f6ca6a2952a62a66f09377c3c8c7efed5dfcb8ff220b0004e499d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.4/bonk-cli-0.0.4-linux-aarch64.tar.gz"
      sha256 "06b5cf40d80f987dc02cc0ffc4109e6fac54a3c2caaf625da2be272b7af872e0"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.4/bonk-cli-0.0.4-linux-x86_64.tar.gz"
      sha256 "53fccf1f084d8993fc3e9c629e0797e2146995ecf9d65849fc22c311a29d0e52"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
