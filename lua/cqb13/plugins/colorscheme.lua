return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			background = { -- :h background
				light = "latte",
				dark = "mocha",
			},
			transparent_background = false, -- disables setting the background color.
			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
			term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
			dim_inactive = {
				enabled = false, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15, -- percentage of the shade to apply to the inactive window
			},
			no_italic = false, -- Force no italic
			no_bold = false, -- Force no bold
			no_underline = false, -- Force no underline
			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
				comments = { "italic" }, -- Change the style of comments
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
				-- miscs = {}, -- Uncomment to turn off hard-coded styles
			},
			color_overrides = {},
			custom_highlights = {},
			default_integrations = true,
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = false,
				mini = {
					enabled = true,
					indentscope_color = "surface2",
				},
				-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
			},
		})

		-- setup must be called before loading
		vim.cmd.colorscheme("catppuccin")
	end,
}

-- Mocha Colors
--  rosewater  "#f5e0dc",
-- 	flamingo   "#f2cdcd",
-- 	pink       "#f5c2e7",
-- 	mauve      "#cba6f7",
-- 	red        "#f38ba8",
-- 	maroon     "#eba0ac",
-- 	peach      "#fab387",
-- 	yellow     "#f9e2af",
-- 	green      "#a6e3a1",
-- 	teal       "#94e2d5",
-- 	sky        "#89dceb",
-- 	sapphire   "#74c7ec",
-- 	blue       "#89b4fa",
-- 	lavender   "#b4befe",
-- 	text       "#cdd6f4",
-- 	subtext1   "#bac2de",
-- 	subtext0   "#a6adc8",
-- 	overlay2   "#9399b2",
-- 	overlay1   "#7f849c",
-- 	overlay0   "#6c7086",
-- 	surface2   "#585b70",
-- 	surface1   "#45475a",
-- 	surface0   "#313244",
-- 	base       "#1e1e2e",
-- 	mantle     "#181825",
-- 	crust      "#11111b",
