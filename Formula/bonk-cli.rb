class BonkCli < Formula
  desc "Bonk without a window: bootable media writer, command line only"
  homepage "https://bonk-os.app"
  version "0.0.8"
  license "MIT"

  conflicts_with "bonk", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.8/bonk-cli-0.0.8-macos-aarch64.tar.gz"
      sha256 "568b74bda7efd736384acc48de0c519a3edfe48f51cf21963151ed1ef53938e2"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.8/bonk-cli-0.0.8-macos-x86_64.tar.gz"
      sha256 "b292b8cfdc34b37cdc4c3c6b1a48ad1fc7f7b0cbae5a6a55cc67c19c3d5adb70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.8/bonk-cli-0.0.8-linux-aarch64.tar.gz"
      sha256 "1c8d7f7ebf89f2e1892ecd76c42d2dd11df0a72a3e0472295d1bdcb091c5443e"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.8/bonk-cli-0.0.8-linux-x86_64.tar.gz"
      sha256 "7ee8ef1353392931082c3af18b632645fe331629c4e3a33de1033d3c17eb6df2"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
