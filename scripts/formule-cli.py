#!/usr/bin/env python3
"""Écrit la formule de bonk-cli d'après le fichier SHA256SUMS d'une release.

Usage : formule-cli.py <SHA256SUMS> <version>
"""
import re
import sys
from pathlib import Path

chemin, version = Path(sys.argv[1]), sys.argv[2]
BASE = f"https://github.com/FantasmaGlad/Bonk/releases/download/v{version}"
empreintes = {}
for ligne in chemin.read_text(encoding="utf-8").splitlines():
    m = re.fullmatch(r"([0-9a-f]{64}) [ *](\S+)", ligne.strip())
    if m:
        empreintes[m.group(2)] = m.group(1)


def bloc(*noms: str) -> str:
    # Jusqu'à la 0.0.3, l'archive Linux sans fenêtre s'appelait bonk-<version>-linux-<arch>-musl.
    nom = next(n for n in noms if n in empreintes)
    return f'      url "{BASE}/{nom}"\n      sha256 "{empreintes[nom]}"\n'


def linux(arch: str) -> str:
    return bloc(f"bonk-cli-{version}-linux-{arch}.tar.gz", f"bonk-{version}-linux-{arch}-musl.tar.gz")


print(f'''class BonkCli < Formula
  desc "Bonk without a window: bootable media writer, command line only"
  homepage "https://bonk-os.app"
  version "{version}"
  license "MIT"

  conflicts_with "bonk", because: "both install the bonk command"

  on_macos do
    on_arm do
{bloc(f"bonk-cli-{version}-macos-aarch64.tar.gz")}    end
    on_intel do
{bloc(f"bonk-cli-{version}-macos-x86_64.tar.gz")}    end
  end

  on_linux do
    on_arm do
{linux("aarch64")}    end
    on_intel do
{linux("x86_64")}    end
  end

  def install
    bin.install "bonk"
  end

  test do
    assert_match version.to_s, shell_output("#{{bin}}/bonk --version")
  end
end''')
