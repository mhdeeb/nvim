local status_ok, plugin = pcall(require, "nvim-treesitter.configs")
local status2_ok, compiler = pcall(require, "nvim-treesitter.install")
if not (status_ok and status2_ok) then return end
compiler.compilers = { "clang" }
plugin.setup {
	ensure_installed = {""},
	sync_install = false,
	auto_install = true,
	ignore_install = { "" },
  highlight = {
    enable = true,
		disable = {""},
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = true, disable = { "" } },
}
