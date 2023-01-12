local opt = {
	splitright = true,
	hlsearch = true,
  cursorline = true,
  swapfile = false,
	incsearch = true,
	expandtab = true,
	title = true,
	autoindent = true,
	smartindent = true,
	updatetime = 16,
	hidden = true,
	autoread = true,
	number = true,
	rnu = true,
	completeopt = "menu,menuone,noselect",
  backspace = 'indent,eol,start',
	mouse = "a",
	foldlevelstart = 99,
	termguicolors = true,
	clipboard = "unnamedplus",
	tabstop = 2,
	shiftwidth = 2,
  scrolloff = 4,
}
local go = {
	gruvbox_contrast_dark = 'medium',
	gruvbox_contrast_light = 'hard',
	rainbow_active = '1',
}
for k, v in pairs(go) do vim.api.nvim_set_var(k, v) end
for k, v in pairs(opt) do vim.o[k] = v end
vim.cmd('colorscheme gruvbox')
