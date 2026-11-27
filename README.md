<p align="center">
  <img src="docs/icons/homebrew.svg" width="96" height="96" alt="Homebrew">
</p>

<h1 align="center">homebrew-bonk</h1>

<p align="center">
  Homebrew tap for Bonk.
</p>

<p align="center">
  <a href="https://github.com/FantasmaGlad/Bonk">Bonk</a>,
  <a href="https://bonk-os.app/install/">Install</a>,
  <a href="https://bonk-os.app/commands/">Commands</a>
</p>

<p align="center">
  <img src="docs/icons/gitlab.svg" width="16" height="16" valign="middle" alt="GitLab">&nbsp;Backup copy: <a href="https://gitlab.com/FantasmaGlad/homebrew-bonk">gitlab.com/FantasmaGlad/homebrew-bonk</a>
</p>

<p align="center">
  <a href="https://github.com/FantasmaGlad/homebrew-bonk/actions/workflows/mise-a-jour.yml"><img src="https://github.com/FantasmaGlad/homebrew-bonk/actions/workflows/mise-a-jour.yml/badge.svg?branch=main" alt="Formulas"></a>
</p>

## Install

| Formula | Command | Requirements |
| :--- | :--- | :--- |
| <img src="docs/icons/bonk.png" width="20" height="20" valign="middle" alt="Bonk">&nbsp;**bonk** | `brew install fantasmaglad/bonk/bonk` | macOS 12 or later, Linux |
| <img src="docs/icons/bonk.png" width="20" height="20" valign="middle" alt="Bonk">&nbsp;**bonk-cli** | `brew install fantasmaglad/bonk/bonk-cli` | macOS 12 or later, Linux |

`bonk-cli` is Bonk without its window. Both formulas follow the latest release, on x86_64 and ARM64.

## Switching formulas

Both install the `bonk` command, so only one can be installed at a time:

```bash
brew uninstall bonk
brew install fantasmaglad/bonk/bonk-cli
```

To go back, uninstall `bonk-cli`, then install `bonk`.

## License

View-only, all rights reserved: [LICENSE](LICENSE).

Report a vulnerability as described in [SECURITY.md](SECURITY.md). Contributions: [CONTRIBUTING.md](CONTRIBUTING.md).

## Related repositories

| Repository | Content |
| :--- | :--- |
| <img src="docs/icons/bonk.png" width="20" height="20" valign="middle" alt="Bonk">&nbsp;**[Bonk](https://github.com/FantasmaGlad/Bonk)** | application |
| <img src="docs/icons/bonk.png" width="20" height="20" valign="middle" alt="BonkWeb">&nbsp;**[BonkWeb](https://github.com/FantasmaGlad/BonkWeb)** | website, [bonk-os.app](https://bonk-os.app) |
| <img src="docs/icons/bonk.png" width="20" height="20" valign="middle" alt="bonk-catalog">&nbsp;**[bonk-catalog](https://github.com/FantasmaGlad/bonk-catalog)** | image catalog, [catalog.bonk-os.app](https://catalog.bonk-os.app) |
| <img src="docs/icons/linux.svg" width="20" height="20" valign="middle" alt="bonk-packages">&nbsp;**[bonk-packages](https://github.com/FantasmaGlad/bonk-packages)** | package repositories, [packages.bonk-os.app](https://packages.bonk-os.app) |
| <img src="docs/icons/bonk.png" width="20" height="20" valign="middle" alt="bonk-security">&nbsp;**[bonk-security](https://github.com/FantasmaGlad/bonk-security)** | security site, [security.bonk-os.app](https://security.bonk-os.app) |
