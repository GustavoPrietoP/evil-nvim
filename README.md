<h1 align="center">No Needs to Use an IDE</h1>

![Demo](https://raw.githubusercontent.com/GustavoPrietoP/neovim/main/screenshot/demo.png)
# "Minimalism"
my neovim configuration is aimed on bringing minimalism to the table. It has the looks of [Doom Emacs](https://github.com/hlissner/doom-emacs) but don't let it fool you!
It uses as many lua plugins as possible which results in a lightning fast experience while still maintaining a minimalist, feature rich editing experience!

**NOTE: THIS IS BASED ON MY SYSTEM AND YOU MAY ENCOUNTER SOME ERRORS**

  
# Requirements
- Neovim Nightly 0.5+
- git 2.23+
- unix or unix-like system

# Get the latest and greatest neovim
```bash
cd ~
sudo rm -r neovim
git clone https://github.com/neovim/neovim
cd neovim
sudo make CMAKE_BUILD_TYPE=Release install
cd ~
sudo rm -r neovim
```
# Dope People
- [hlissner](https://github.com/hlissner) for Doom Emacs :heart:
- [NTBBloodbath](https://github.com/NTBBloodbath) for Doom-nvim :heart_eyes:
- [Chris](https://github.com/ChristianChiarulli) for the colorschemes and helping with the configs :sunglasses:
# Themes 
[Doom-one](https://github.com/GustavoPrietoP/doom-one.vim) Enabled by Defualt (Thanks to [NTBBloodbath](https://github.com/NTBBloodbath))

[nvcode-colorschemes](https://github.com/ChristianChiarulli/nvcode-color-schemes.vim) (Thanks to [Chris](http://github.com/ChristianChiarulli))

# Used Plugins
- Main Screen
  - [Dashboard](https://github.com/glepnir/dashboard-nvim) (configured by [doom-nvim](https://github.com/NTBBloodbath/doom-nvim))

- File tree
  - [Nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)

- Fuzzy Finder
  - [Telescope](https://github.com/nvim-telescope/telescope.nvim)

- LSP
  - Native Lsp `:h lsp`
  - [LspConfig](https://github.com/neovim/nvim-lspconfig)
  - [LspInstall](https://github.com/kabouzeid/nvim-lspinstall)
  - [nvim-compe](https://github.com/hrsh7th/nvim-compe)
- Others
  - [Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)
  - [Barbar](https://github.com/romgrk/barbar.nvim)
  - [galaxyline](https://github.com/glepnir/galaxyline.nvim) (configured by [Doom-nvim](https://github.com/NTBBloodbath/doom-nvim))
  - [Auto-pairs](https://github.com/windwp/nvim-autopairs)
  - [Bracket-pair colorizer](https://github.com/GustavoPrietoP/nvim-ts-rainbow)
  - [Colorizer](https://github.com/norcalli/nvim-colorizer.lua)
  - [Discord-presence](https://github.com/LeonardSSH/coc-discord-rpc)
