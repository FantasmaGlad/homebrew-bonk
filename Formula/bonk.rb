class Bonk < Formula
  desc "Création de supports d'amorçage (clés USB et disques externes), interface graphique et ligne de commande."
  homepage "https://github.com/FantasmaGlad/Bonk"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.3/bonk-0.0.3-macos-aarch64.tar.gz"
      sha256 "44aa02970cb9b593a01410d9fcd22330b74e9240529b283c3356149750c84909"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.3/bonk-0.0.3-macos-x86_64.tar.gz"
      sha256 "560eda23471dddb3e8fefd4af9c0d5012ebe135719aa5e28f9cac107b389ba35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.3/bonk-0.0.3-linux-aarch64.tar.gz"
      sha256 "7a8e830e27f6b5b237399f02471f61a53b9284b3eb7fc7b153755b04b79ec886"
    end
    on_intel do
      url "https://github.com/FantasmaGlad/Bonk/releases/download/v0.0.3/bonk-0.0.3-linux-x86_64.tar.gz"
      sha256 "f741d41a219359ebd129a8a00965fdbe4e09e3be9d85788f6a2da87aea0bdb4c"
    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonk --version")
  end
end
