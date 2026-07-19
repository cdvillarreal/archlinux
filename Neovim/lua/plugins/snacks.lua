return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		explorer = { enabled = true },
		picker = { enabled = true },
		indent = { enabled = true },
		terminal = { enabled = true },
	},
	keys = {
		{ "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
		{ "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
		{ "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
		{ "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
		{ "<leader>n", function() Snacks.picker.notifications() end, desc = "Notification History" },
		{ "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
		{ "<c-\\>", function() Snacks.terminal.toggle() end, desc = "Toggle Terminal", mode = { "n", "t" } },
	}
}
