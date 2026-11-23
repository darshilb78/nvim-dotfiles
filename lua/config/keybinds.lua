vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ff", function() require("fzf-lua").files() end, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", function() require("fzf-lua").live_grep() end, { desc = "Grep project" })
vim.keymap.set("n", "<leader>fh", function() require("fzf-lua").helptags() end, { desc = "Help tags" })

vim.keymap.set("n", "<leader>gc", function() require("fzf-lua").git_commits() end, { desc = "Git commits" })
vim.keymap.set("n", "<leader>gs", function() require("fzf-lua").git_status() end, { desc = "Git status" })

vim.keymap.set("n", "<leader>cd", vim.cmd.Ex, { desc = "Open file explorer" })
