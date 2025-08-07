# dotfiles

My settings files about terminal are here!

## zsh

There is settings files about Z shell in `zsh/`.

`.zshrc` is linked to home directory as symbolic link.

`zsh/zsh/` directory is placed in `~/.config/` as symbolic link and be loaded by `~/.zshrc`.

### Directory Tree

```plaintext
zsh
├── .zshrc # root loader
├── sheldon
│   └── plugins.toml
└── zsh
    └── alias.zsh
```

### Plugin Manager

- **Sheldon**

`sheldon/` directory is usually linked to `~/.config/` with a symbolic link.

## Alacritty

There is settings files about Alacritty in `alacritty/`.

The directory is usually linked to `~/.config/` with a symbolic link.

### Directory Tree

```plaintext
alacritty
├── alacritty.toml # root loader
├── font.toml
├── keybindings.toml
├── themes
│   └── nord.toml
└── window.toml
```

## Neovim

There is Neovim settings files in `nvim/`.

The directory is usually linked to `~/.config/` with a symbolic link.

### Directory Tree

```plaintext
nvim
├── init.lua # root loader
└── lua
    ├── autocmds.lua
    ├── colorscheme.lua
    ├── filetype.lua
    ├── keymaps.lua
    ├── options.lua
    ├── plugins
    │   ├── cmp.lua
    │   ├── coding.lua
    │   ├── colorscheme.lua
    │   ├── git.lua
    │   ├── init.lua # plugin loader
    │   ├── lsp.lua
    │   ├── telescope.lua
    │   └── ui.lua
    └── utils.lua
```

## Tmux

There is Tmux settings files in `tmux/`.

`.tmux.conf` is linked to home directory.

`tmux/tmux/` is placed in `~/.config/` with symbolc link.

And, all directories under `plugins/` is also placed in `~/.tmux/plugins//`.

```plaintext
tmux
├── .tmux.conf # root loader
├── plugins
│   └── tmux-powerline
│       ├── config.sh
│       ├── config.sh.default
│       └── themes
│           ├── base16.sh
│           ├── bubble.sh
│           ├── default.sh
│           └── nord.sh # original custom theme
└── tmux
    ├── appearance.conf
    ├── keybindings.conf
    ├── main.conf
    └── plugins.conf
```

