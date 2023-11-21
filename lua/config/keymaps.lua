local keymap = vim.keymap
local discipline = require("carlossluzala.discipline")

discipline.cowboy()

-- Do not yan with x
keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-g>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", ":tabedit<Return>", { silent = true })

-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w", { silent = true })
keymap.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true })

-- Move window
keymap.set("n", "<Space>", "<C-w>w")
keymap.set("n", "s<left>", "<C-w>h")
keymap.set("n", "s<up>", "<C-w>k")
keymap.set("n", "s<down>", "<C-w>j")
keymap.set("n", "s<right>", "<C-w>l")
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize windows
-- keymap.set('n', '<C-w>h', '<C-w>8>')
-- keymap.set('n', '<C-w>l', '<C-w>4<')
-- keymap.set('n', '<C-w>k', '<C-w>2+')
-- keymap.set('n', '<C-w>j', '<C-w>2-')

-- Move lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- highlight
keymap.set("n", "<leader>n", ":nohl<Return>", { silent = true })

-- git
keymap.set("n", "<leader>gs", vim.cmd.Git)
keymap.set("n", "<leader>gd", vim.cmd.Gdiffsplit)
keymap.set("n", "gu", "<cmd>diffget //2<CR>")
keymap.set("n", "gh", "<cmd>diffget //3<CR>")

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

keymap.set("n", "<leader>a", mark.add_file)
keymap.set("n", "<leader>r", ui.toggle_quick_menu)

keymap.set("n", "<C-h>", function()
  ui.nav_file(1)
end)
keymap.set("n", "<C-t>", function()
  ui.nav_file(2)
end)
keymap.set("n", "<C-n>", function()
  ui.nav_file(3)
end)
keymap.set("n", "<C-s>", function()
  ui.nav_file(4)
end)
