local parsers = {
    "c", "cpp", "c_sharp", "java", "python",
    "bash", "markdown", "dart", "kotlin", "sql", "rust", "go", "yaml"
}

return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
    require("nvim-treesitter").setup({})
    require("nvim-treesitter").install(parsers)
    end,
}
