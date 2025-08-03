local present, ts_config = pcall(require, "nvim-treesitter.configs")
if not present then
    return
end

ts_config.setup {
        ensure_installed = {
            "kotlin",
            "comment",
            "bash",
            "lua",
            "javascript",
            "json",
            "go",
            "rust",
        },
        highlight = {
            enable = true,
            use_languagetree = true
        }
    }
