local status_ok, project = pcall(require, "project_nvim")
if not status_ok then return end
project.setup({
	active = true,
	on_config_done = nil,
	manual_mode = false,
	detection_methods = { "lsp", "pattern" },
	patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
	show_hidden = true,
	silent_chdir = false,
	ignore_lsp = {},
	datapath = vim.fn.stdpath("data"),
})
local tele_status_ok, telescope = pcall(require, "telescope")
print("hello")
if not tele_status_ok then return end
telescope.load_extension('projects')
