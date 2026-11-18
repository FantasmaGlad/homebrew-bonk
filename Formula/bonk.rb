class Bonk < Formula
  desc "Bootable media writer for USB drives and external disks"
  homepage "https://bonk-os.app"
  version "0.1.0"
  license "MIT"

  conflicts_with "bonk-cli", because: "both install the bonk command"

  on_macos do
    depends_on macos: :monterey
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.0/bonk-0.1.0-macos-aarch64.tar.gz"
      sha256 "b824e1a10933e168bcffda06988d1608c338b37ee2e901a0d6a88ce4c859ea29"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.0/bonk-0.1.0-macos-x86_64.tar.gz"
      sha256 "32c4ccd4dabf4948044f2771c8c90099de4c774793f5bcb72cd0bd5f13c6b42c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.0/bonk-0.1.0-linux-aarch64.tar.gz"
      sha256 "b53e41dc52eb6567064b5c61591af3c8b99b95fb7b0e89c705249975da831edd"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.1.0/bonk-0.1.0-linux-x86_64.tar.gz"
      sha256 "b77c406a483b5a6a4c9a43d89f4646b93bbd8953c2cb0ee415a5961698839845"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
