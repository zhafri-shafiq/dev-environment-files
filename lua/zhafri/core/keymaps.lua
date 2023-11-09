local global = vim.g

global.mapleader = " "
global.maplocalleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>")
keymap.set("n", "<leader>fgi", "<cmd>Telescope find_files hidden=true no_ignore=true<cr>")

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp servers
keymap.set("n", "<leader>rs", "<cmd>:LspRestart<cr>") -- mapping to restart lsp if necessary

-- barbar tabline
keymap.set("n", "<leader>bx", "<cmd>BufferClose<cr>") -- close tab
keymap.set("n", "<leader>bn", "<cmd>BufferNext<cr>") -- go to next tab
keymap.set("n", "<leader>bp", "<cmd>BufferPrevious<cr>") -- go to previous tab
keymap.set("n", "<leader>b-", "<cmd>BufferMovePrevious<cr>") -- move to previous tab
keymap.set("n", "<leader>b+", "<cmd>BufferMoveNext<cr>") -- move to next tab
keymap.set("n", "<leader>b1", "<cmd>BufferGoto 1<cr>")
keymap.set("n", "<leader>b2", "<cmd>BufferGoto 2<cr>")
keymap.set("n", "<leader>b3", "<cmd>BufferGoto 3<cr>")
keymap.set("n", "<leader>b4", "<cmd>BufferGoto 4<cr>")
keymap.set("n", "<leader>b5", "<cmd>BufferGoto 5<cr>")
keymap.set("n", "<leader>b6", "<cmd>BufferGoto 6<cr>")
keymap.set("n", "<leader>b7", "<cmd>BufferGoto 7<cr>")
keymap.set("n", "<leader>b8", "<cmd>BufferGoto 8<cr>")
keymap.set("n", "<leader>b9", "<cmd>BufferGoto 9<cr>")
keymap.set("n", "<leader>b0", "<cmd>BufferLast<cr>")
keymap.set("n", "<leader>bcac", "<cmd>BufferCloseAllButCurrent<cr>")
