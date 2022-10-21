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
	open_on_setup = false,
	open_on_tab = false,
	update_cwd = true,
	diagnostics = {
		enable = true,
	},
	git = {
		enable = true,
		ignore = true,
		timeout = 500,
	},
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
