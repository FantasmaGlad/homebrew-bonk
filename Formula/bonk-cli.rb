class BonkCli < Formula
  desc "Bonk without a window: bootable media writer, command line only"
  homepage "https://bonk-os.app"
  version "0.0.6"
  license "MIT"

  conflicts_with "bonk", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.6/bonk-cli-0.0.6-macos-aarch64.tar.gz"
      sha256 "f784d10e115f538a778e460799510c351e07bb53e25a77f308ff3394f9320b20"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.6/bonk-cli-0.0.6-macos-x86_64.tar.gz"
      sha256 "95e655f581b562bd3f2471b8fc7a6c080b0a0d44be8338aae7c092fb95e674cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.6/bonk-cli-0.0.6-linux-aarch64.tar.gz"
      sha256 "9d3e8c09df38930ec1668f78a3e6d6195004561c5fd42ea9f786c473f1b18ed7"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.6/bonk-cli-0.0.6-linux-x86_64.tar.gz"
      sha256 "7f063d933acd394d8719d16f8eb27a9acd070b0765fd09b21d05ebc446eca2fc"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
