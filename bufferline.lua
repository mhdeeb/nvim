local status_ok, plugin = pcall(require, "bufferline")
if not status_ok then return end
plugin.setup{
  options = {
    close_command = "Bdelete! %d",
    right_mouse_command = "Bdelete! %d",
    diagnostics = "nvim_lsp",
    offsets = {{
      filetype = "NvimTree",
      text = "File Explorer",
      highlight = "Directory",
      text_align = "left"
    }},
  },
}
