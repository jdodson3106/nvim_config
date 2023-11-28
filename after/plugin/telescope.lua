require('telescope').setup {
    defaults = {
        file_ignore_patterns = { "node_modules" }
    }
}

local builtin = require('telescope.builtin')
local treesitter_parser_config = require "nvim-treesitter.parsers".get_parser_configs()
treesitter_parser_config.templ = {
  install_info = {
    url = "https://github.com/vrischmann/tree-sitter-templ.git",
    files = {"src/parser.c", "src/scanner.c"},
    branch = "master",
  },
}
vim.treesitter.language.register('templ', 'templ')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") } );
end)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
