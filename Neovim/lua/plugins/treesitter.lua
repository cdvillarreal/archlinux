return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "*",
        callback = function() pcall(vim.treesitter.start) end,
      })
      vim.filetype.add({ extension = { yuck = "yuck" } })

      require("nvim-treesitter").install({
        "angular",
        "astro",
        "bash",
        "c_sharp",
        "css",
        "dockerfile",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "nginx",
        "python",
        "sql",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
        "yuck",
      })
    end,
  },
}
