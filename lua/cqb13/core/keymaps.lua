vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- split screen keybinds
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split window equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current window" })
keymap.set("n", "<leader>st", "<cmd>vsp | term<CR>", { desc = "Open the terminal in a vertical split" })
keymap.set(
	"n",
	"<leader>sc",
	"<cmd>vsplit term://%:p:h//zsh<CR>",
	{ desc = "Open the terminal to the current directory in a vertical split" }
)
