local status_ok, plugin = pcall(require, "nvim-tree")
if not status_ok then return end
plugin.setup {
	respect_buf_cwd = true,
	hijack_cursor = true,
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	renderer = {
		root_folder_modifier = ":t",
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	actions = {
		--open_file = {quit_on_open=true,},
	},
}
