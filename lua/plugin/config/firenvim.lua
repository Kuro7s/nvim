vim.o.laststatus = 0

vim.api.nvim_create_autocmd({'BufEnter'}, {
    pattern = "github.com_*",
    callback = function(e)
        vim.bo.filetype = vim.filetype.match {
            string.sub(e.file, 1, #e.file - 4)
        }
    end
})

