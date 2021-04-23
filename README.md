<div align="center">

# Evil Neovim
[![GitHub license](https://img.shields.io/github/license/ChristianChiarulli/LunarVim)](https://github.com/ChristianChiarulli/LunarVim/blob/master/LICENSE)
![Latest Release](https://img.shields.io/github/v/release/GustavoPrietoP/Evil-nvim?include_prereleases&style=flat-square)
[![PRs Welcome](https://img.shields.io/badge/Pr's-welcome-pink.svg?style=flat-square)](http://makeapullrequest.com)
![Neovim](https://img.shields.io/badge/Neovim-0.5-57A143?style=flat-square&logo=neovim)
![Demo](https://raw.githubusercontent.com/GustavoPrietoP/neovim/main/screenshot/demo.png)

</div>

# Introduction

<a href="http://ultravioletbat.deviantart.com/art/Yay-Evil-111710573">
  <img src="https://raw.githubusercontent.com/hlissner/doom-emacs/screenshots/cacochan.png" align="right" />
</a>
</h1>

> Great evil is coming to the world and we need your help to slay the demons 

Evil Nvim is a Neovim port of the [Doom Emacs](https://github.com/hlissner/doom-emacs) configuration framework.
It uses as many lua plugins as possible which results in a lightning fast experience, and it takes advantage of [Neovide's](https://github.com/Kethku/neovide) GUI to provide the user a familiar look and feel to doom-emacs. The main objective of Evil Nvim is to welcome any doom-emacs fan-boy (or Vim newcomer) to Vim with the best experience possible.

# Requirements
- **Neovim Nightly 0.5+**
- Git 2.23+
- Unix or Unix-like system
- Neovide (recommended)

# Get the latest and greatest neovim

```bash
git clone https://github.com/neovim/neovim
cd neovim
sudo make CMAKE_BUILD_TYPE=Release install
```
# When Launching
run `:PackerSync` and restart Neovim

# LSP
In order to get your desired language support (autocomplete, diagnostics, code actions) simply type `:LspInstall` and tab through the  available language servers.

*if anyone is interested in helping me set up language servers for currently unsupported languages, I'm more than happy to accept your pull request*

# Dope People
- [hlissner](https://github.com/hlissner) for Doom Emacs :heart:
- [Chris](https://github.com/ChristianChiarulli) for the colorschemes and helping with the configs :sunglasses:
# Themes 
[Doom-one](https://github.com/GustavoPrietoP/doom-one.vim) Enabled by default (Thanks to [NTBBloodbath](https://github.com/NTBBloodbath))

[nvcode-colorschemes](https://github.com/ChristianChiarulli/nvcode-color-schemes.vim) (Thanks to [Chris](http://github.com/ChristianChiarulli))

# Used Plugins
- Main Screen
  - [Dashboard](https://github.com/glepnir/dashboard-nvim)

- File tree
  - [Nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)

- Fuzzy Finder
  - [Telescope](https://github.com/nvim-telescope/telescope.nvim)

- LSP
  - Native LSP `:h lsp`
  - [LspConfig](https://github.com/neovim/nvim-lspconfig)
  - [LspInstall](https://github.com/kabouzeid/nvim-lspinstall)
  - [nvim-compe](https://github.com/hrsh7th/nvim-compe)
- Others
  - [Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)
  - [Barbar](https://github.com/romgrk/barbar.nvim)
  - [galaxyline](https://github.com/glepnir/galaxyline.nvim)
  - [Auto-pairs](https://github.com/windwp/nvim-autopairs)
  - [Bracket-pair colorizer](https://github.com/GustavoPrietoP/nvim-ts-rainbow)
  - [Colorizer](https://github.com/norcalli/nvim-colorizer.lua)
