require("obsidian").setup({
	workspaces = {
		{
			name = "homzie",
			path = "~/Documents/alx/homzie",
		},
		{
			name = "work",
			path = "~/Documents/alx/work",
		},
	},
	completion = {
		nvim_cmp = true,
		min_chars = 2,
	},
	finder = "telescope.nvim",
	finder_mappings = {
		new = "<C-x>",
	},
})
