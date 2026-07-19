return {
	"saghen/blink.cmp",
	dependencies = {'rafamadriz/friendly-snippets'},
	version = "*",
	opts = {
		keymap = { preset = "enter" },
		appearance = { nerd_font_variant = "mono" },
		sources = { default = { "lsp", "path", "snippets", "buffer" } },
		completion = {
			documentation = { auto_show = true, auto_show_delay_ms = 200 },
		},
	},
}
