" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/gustavo/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/gustavo/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/gustavo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/gustavo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/gustavo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["doom-one.vim"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/doom-one.vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-lua-guide"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/nvim-lua-guide"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/vim-nightfly-guicolors"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/gustavo/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
