class BonkCli < Formula
  desc "Bonk without a window: bootable media writer, command line only"
  homepage "https://bonk-os.app"
  version "0.1.5"
  license "MIT"

  conflicts_with "bonk", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.5/bonk-cli-0.1.5-macos-aarch64.tar.gz"
      sha256 "979c69219bb027b466f5959c5316094668c87fa8511c8176c4a7b4895fce7422"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.5/bonk-cli-0.1.5-macos-x86_64.tar.gz"
      sha256 "47a5c40e3315f0850b942bf6c951e9ba9469ab4a85dcae219bc6981fd3536780"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.5/bonk-cli-0.1.5-linux-aarch64.tar.gz"
      sha256 "3886cd94810372cf68c5aa3850bd3b902e5d7081ff2476c731768456224d915d"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.5/bonk-cli-0.1.5-linux-x86_64.tar.gz"
      sha256 "283ae8d888ff141b48ad5a271554e7f73e315384185c34a34c55163dd4ee19f6"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
