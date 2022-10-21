local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])
nvimtree.setup({
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	disable_netrw = true,
	hijack_newrw = true,
	open_on_setup = false,
	auto_close = true,
	open_on_tab = false,
	update_cwd = true,
	update_to_buf_dir = {
		enable = true,
		auto_open = true,
	},
	diagnostics = {
		enable = true,
	},
	git = {
		enable = true,
		ignore = true,
		timeout = 500,
		root_folder_modifier = ":t",
	},
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
