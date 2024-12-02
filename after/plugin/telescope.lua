local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Find files (telescope)' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Find repo. files (telescope)' })
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = "Find files by string (telescope)" })
