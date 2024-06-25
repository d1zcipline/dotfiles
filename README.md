# D1ZCIPLINE'S DOTFILES

I manage my dotfiles using [chezmoi](https://www.chezmoi.io/).

## Software

I'm using macbook, so everything was written for macOS

The software that I use:

- bash
- [Starship](https://starship.rs/)
- [yabai](https://github.com/koekeishiya/yabai) + [skhd](https://github.com/koekeishiya/skhd)
- Neovim
- [kitty](https://sw.kovidgoyal.net/kitty/)
- [yazi](https://yazi-rs.github.io/)

You can see a list of apps that I use [here](/apps.md)

## Installation

If the device does not have chezmoi installed, you can run this one line command:

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply d1zcipline
```

If chezmoi installed, running the following will clone this repo and move all the pieces into place:

```bash
chezmoi init --apply d1zcipline
```
