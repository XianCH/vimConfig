return {
    "nvim-treesitter/nvim-treesitter",
    main = "nvim-treesitter.configs",
    build = ":TSUpdate",
    opts = {
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query","go" },
        -- code highlight
        highlight = {
            enable = true,
        },
        -- indent格式化
        indent = {
            enable = true,
        },
    }

}
