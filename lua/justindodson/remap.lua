vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "jj", "<ESC>")

vim.filetype.add({
    extension = {
        templ = "templ",
    }
})

vim.api.nvim_create_autocmd(
    {
        -- 'BufWritePre' event triggers just before the buffer is written to filetype
        "BufWritePre"
    },
    {
        pattern = {"*.templ"},
        callback = function ()
            vim.lsp.buf.format()
        end
    }
)
