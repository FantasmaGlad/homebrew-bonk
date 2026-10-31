class BonkCli < Formula
  desc "Bonk without a window: bootable media writer, command line only"
  homepage "https://bonk-os.app"
  version "0.0.3"
  license "MIT"

  conflicts_with "bonk", because: "both install the bonk command"

  on_macos do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.3/bonk-cli-0.0.3-macos-aarch64.tar.gz"
      sha256 "e55b5c8274add37fe70b0daf32844d356725a84bd0ff3e0acd2bd590d5b5fe6c"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.3/bonk-cli-0.0.3-macos-x86_64.tar.gz"
      sha256 "b438bb009fa21d163b8343a9ba8ce9eaf44ae49a5056fc65d1f0bce1ff1ba894"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.3/bonk-0.0.3-linux-aarch64-musl.tar.gz"
      sha256 "8b816491ff5d5d1dfee1acf756d04d3bbd0b9f025492a28499c0152bc8eb2213"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.3/bonk-0.0.3-linux-x86_64-musl.tar.gz"
      sha256 "c6a77651cda2218e6be70b0cee4cb6f86c0f297945663ed69335bc3b7c5e0839"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
