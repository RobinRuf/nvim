return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "html",
        "css",
        "cmake",
        "cpp",
        "css",
        "gitignore",
        "go",
        "graphql",
        "http",
        "java",
        "php",
        "rust",
        "scss",
        "markdown",
        "markdown_inline",
        "python",
        "sql",
        "svelte",
        "query",
        "regex",
        "tsx",
        "javascript",
        "typescript",
        "yaml",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- HTML autopairs
      opts.autotag = {
        enable = true,
      }

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
