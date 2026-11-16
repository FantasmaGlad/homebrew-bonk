class Bonk < Formula
  desc "Bootable media writer for USB drives and external disks"
  homepage "https://bonk-os.app"
  version "0.0.8"
  license "MIT"

  conflicts_with "bonk-cli", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.8/bonk-0.0.8-macos-aarch64.tar.gz"
      sha256 "c4c1432529cf1f393f15ccef4fd7466ad6ccefb05341c4403258f6d28aede999"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.8/bonk-0.0.8-macos-x86_64.tar.gz"
      sha256 "3ce340525364c23b9cfd5556eed60f62279a28ec481b95c797e4411619b41305"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.8/bonk-0.0.8-linux-aarch64.tar.gz"
      sha256 "e956b996f189fa583bb37790016de9ed48e627ac2dd0c50935ce43367f163875"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.8/bonk-0.0.8-linux-x86_64.tar.gz"
      sha256 "b96f7c2c52a9daccf75cbcce9818d1f833c4f57aa2715ffc2312ca9614a12b91"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
