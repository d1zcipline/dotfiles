return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		hide_numbers = true,
		autochdir = true,
		direction = "horizontal",
		auto_scroll = true,
		start_in_insert = true,
		insert_mappings = true,
	},
	keys = {
		{ "<leader>tt", "<CMD>ToggleTerm<CR>", desc = "Toggle terminal" },
	},
}
