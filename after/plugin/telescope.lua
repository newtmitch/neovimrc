local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() 
	-- rsm: this one is worth looking at as well. See https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#file-pickers
	-- builtin.live_grep({ search = vim.fn.input("G > ") });
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
