let path = getcwd()
cd $xdg_config_home\nvim
so plugins.vim
so options.lua
so keybinds.lua
so lualine.lua
so project.lua
so lsp/init.lua
so bufferline.lua
so nvim-tree.lua
so nvim-treesitter.lua
so cmp.lua
exe "cd" path
