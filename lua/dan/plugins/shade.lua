local status, shade = pcall(require, "shade")
if not status then
	return
end

shade.setup({
	overlay_opacity = 65,
	opacity_step = 5,
	keys = {
		brightness_up = "<C-Up>",
		brightness_down = "<C-Down>",
		toggle = "<leader>s",
	},
})
