local status_ok, plugin = pcall(require, "nvim-treesitter.configs")
if not status_ok then return end
plugin.setup {
	ensure_installed = "all",
	sync_install = false,
	auto_install = true,
	ignore_install = { "" },
	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = true, disable = { "" } },
}
