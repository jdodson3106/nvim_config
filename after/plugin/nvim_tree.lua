require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false, 
  },
})

vim.keymap.set('n', '<leader>pv', ':NvimTreeFocus<CR>', {
    noremap = true
  })

vim.keymap.set('n', '<leader>ft', ':NvimTreeToggle<CR>', {
    noremap = true
  })

vim.keymap.set('n', '<leader>fzf', ':NvimTreeFindFile<CR>', {
    noremap = true
  })
