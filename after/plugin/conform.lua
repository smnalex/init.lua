local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		go = { "goimports", "gofumpt" },
		terraform = { "terraform_fmt" },
		tf = { "terraform_fmt" },
		dart = { "dart_format" },
		["terraform-vars"] = { "teerraform_fmt" },
		yaml = { "prettier" },
	},

	format_on_save = {
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	},

	vim.keymap.set({ "n", "v" }, "<leader>mp", function()
		conform.format({
			lsp_fallback = true,
			async = false,
			timeout_ms = 500,
		})
	end, { desc = "Format current buffer" }),
})
