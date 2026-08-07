# tmux configuration

A portable tmux configuration designed to work seamlessly with Neovim and
`christoomey/vim-tmux-navigator`. It has no tmux plugin-manager dependency.

## Install

```sh
git clone git@github.com:YOUR_USERNAME/tmux.git ~/.config/tmux
```

tmux 3.1 and newer automatically loads `~/.config/tmux/tmux.conf`. If the
repository is cloned elsewhere, run:

```sh
./install.sh
```

Then start a new tmux server or reload an existing one:

```sh
tmux source-file ~/.config/tmux/tmux.conf
```

## Key bindings

The prefix remains tmux's default, `Ctrl-b`.

| Binding | Action |
| --- | --- |
| `Ctrl-h/j/k/l` | Move across Neovim splits and tmux panes |
| `prefix` + `-` | Split vertically, preserving the working directory |
| `prefix` + `\|` | Split horizontally, preserving the working directory |
| `prefix` + `H/J/K/L` | Resize the active pane |
| `prefix` + `r` | Reload the configuration |
| `prefix` + `[` | Enter copy mode |
| `v`, then movement | Begin a copy-mode selection |
| `y` | Copy the selection to the system clipboard |

Mouse selections are constrained to one tmux pane and copied automatically on
release. Clipboard support is detected in this order: WSL `clip.exe`, Wayland
`wl-copy`, X11 `xclip`, and macOS `pbcopy`.

## Neovim

Install `christoomey/vim-tmux-navigator` in Neovim. The accompanying Neovim
configuration uses its lazy.nvim command and key specifications, so navigation
works without duplicate mappings.
