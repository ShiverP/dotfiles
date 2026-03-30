return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        require("nvim-treesitter").setup({
            ensure_installed = { "lua", "python", "c", "cpp", "java", "bash", "markdown" },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
