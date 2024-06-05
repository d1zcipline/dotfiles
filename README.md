# D1ZCIPLINE'S DOTFILES

I manage my dotfiles using [chezmoi](https://www.chezmoi.io/).

## Software

I'm using macbook, so everything was written for macOS

The software that I use:

- bash
- [Starship](https://starship.rs/)
- [yabai](https://github.com/koekeishiya/yabai) + [skhd](https://github.com/koekeishiya/skhd)
- Neovim ([LazyVim](https://www.lazyvim.org/) based setup) + [kitty](https://sw.kovidgoyal.net/kitty/) terminal
- [yazi](https://yazi-rs.github.io/)
- Alacitty + tmux (outdated cuz of kitty)

## Installation

If the device does not have chezmoi installed, you can run this one line command:

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply d1zcipline
```

If chezmoi installed, running the following will clone this repo and move all the pieces into place:

```bash
chezmoi init --apply d1zcipline
```
