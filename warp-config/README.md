# Warp Config

A unified, cross-platform configuration repository containing Warp Dark theme variants for editors, terminals, and shells.

![Warp Dark Theme Preview](assets/preview.png)

## Overview

**Warp Config** is a comprehensive theme and configuration package inspired by the Warp.dev terminal aesthetic. It provides consistent dark theme styling across multiple platforms and tools.

### Features

- **Deep black backgrounds** (#000000)
- **Vibrant cyan accents** (#00c2ff)
- **Neon green highlights** (#b4fa72)
- **Consistent** across all platforms
- **Ready to use** configurations

## Repository Structure

```
warp-config/
├── src/                    # Single source of truth
│   ├── _metadata.json      # Theme metadata
│   ├── colors.json         # Core color palette
│   ├── syntax.json         # Syntax highlighting
│   ├── ui.json             # UI styles
│   └── terminal.json       # Terminal colors
│
├── editors/                # Editor/IDE themes
│   ├── zed/                # Zed editor
│   ├── vscode/             # VS Code
│   ├── neovim/             # Neovim (Lua)
│   └── emacs/              # Emacs
│
├── terminals/              # Terminal emulator themes
│   ├── windows-terminal/  # Windows Terminal
│   ├── iterm2/             # iTerm2 (macOS)
│   ├── hyper/              # Hyper
│   ├── alacritty/          # Alacritty
│   └── kitty/              # Kitty
│
├── shells/                 # Shell configurations
│   ├── powershell/         # PowerShell profile
│   ├── zsh/               # Zsh configuration
│   ├── fish/              # Fish shell
│   ├── xonsh/             # Xonsh
│   └── starship/           # Starship prompt
│
├── tools/                  # Tool configurations
│   ├── git/               # Git config
│   ├── docker/            # Docker setup
│   └── kubectl/           # Kubernetes config
│
└── assets/                # Preview images
```

## Installation

### Quick Start

```bash
git clone https://github.com/richstav/warp-config.git ~/warp-config
cd ~/warp-config
```

### Editors

#### Zed
```bash
cp -r editors/zed ~/.local/zed/extensions/warp-dark
# Or use Zed's extension manager
```

#### VS Code
```bash
# Copy theme
cp editors/vscode/warp-dark-color-theme.json ~/.vscode/extensions/warp-dark-color-theme.json

# Copy settings
cp editors/vscode/settings.json ~/.vscode/settings.json
```

#### Neovim
```bash
# Copy theme
mkdir -p ~/.config/nvim/lua/warp-dark
cp editors/neovim/lua/warp-dark/init.lua ~/.config/nvim/lua/warp-dark/

# Add to init.vim or init.lua:
# lua require('warp-dark').load()
```

#### Emacs
```bash
# Copy theme
cp editors/emacs/warp-dark-theme.el ~/.emacs.d/themes/
cp editors/emacs/init.el ~/.emacs.d/init-warp-dark.el

# Add to init.el:
# (load-theme 'warp-dark t)
# (load-file "~/.emacs.d/init-warp-dark.el")
```

### Terminals

#### Windows Terminal
```bash
# Copy color scheme
cp terminals/windows-terminal/warp-dark.json ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
# Or add scheme to settings.json manually
```

#### iTerm2 (macOS)
```bash
# Import color scheme
cp terminals/iterm2/warp-dark.itermcolors ~/Library/Application Support/iTerm2/DynamicStyles/

# Or use iTerm2 preferences to import
```

#### Hyper
```bash
# Copy theme
cp terminals/hyper/warp-dark.json ~/.hyper.js
```

#### Alacritty
```bash
# Copy theme
cp terminals/alacritty/warp-dark.yml ~/.config/alacritty/warp-dark.yml

# Add to alacritty.yml:
# import:
#   - ~/.config/alacritty/warp-dark.yml
```

#### Kitty
```bash
# Copy theme
cp terminals/kitty/warp-dark.conf ~/.config/kitty/warp-dark.conf

# Add to kitty.conf:
# include warp-dark.conf
```

### Shells

#### PowerShell
```bash
# Copy profile
cp shells/powershell/profile.ps1 $HOME/Documents/PowerShell/profile.ps1
```

#### Zsh
```bash
# Copy configuration
cp shells/zsh/.zshrc ~/.zshrc
```

#### Fish
```bash
# Copy theme
cp shells/fish/warp-dark.fish ~/.config/fish/themes/

# Set as theme
fish_config theme choose "warp-dark"
```

#### Starship
```bash
# Copy config
cp shells/starship/warp-dark.toml ~/.config/starship.toml

# Add to shell profile:
# eval "$(starship init bash)"
```

## Colors

| Role | Color | Hex |
|------|-------|-----|
| Background | Deep Black | #000000 |
| Background Alt | Dark Gray | #0a0a0a |
| Surface | Charcoal | #111111 |
| Text | White | #ffffff |
| Text Muted | Gray | #808080 |
| Accent Primary | Cyan | #00c2ff |
| Accent Secondary | Neon Green | #b4fa72 |
| Accent Tertiary | Magenta | #ff8ffd |
| Warning | Yellow | #fefdc2 |
| Error | Coral | #ff8272 |

## Contributing

Contributions welcome! Please submit a PR or open an issue.

## License

MIT License - See [LICENSE](LICENSE) for details.

## Author

**Rich Roll** - [GitHub](https://github.com/richstav)

---

<p align="center">
  Made with 💜 and Warp Dark
</p>
