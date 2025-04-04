return {
  -- 语法高亮 & GFM 解析
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "markdown", "markdown_inline" },
      highlight = { enable = true },
    },
  },

  -- GitHub Markdown 支持
  {
    "plasticboy/vim-markdown",
    dependencies = { "godlygeek/tabular" },
    ft = "markdown",
    config = function()
      vim.g.vim_markdown_folding_disabled = 0
      vim.g.vim_markdown_toc_autofit = 1
      vim.g.vim_markdown_new_list_item_indent = 2
      vim.g.vim_markdown_strikethrough = 1
    end,
  },
  -- Markdown 预览（支持 GitHub 渲染）
  {
    "ellisonleao/glow.nvim",
    ft = "markdown", -- 仅对Markdown文件启用
    config = true, -- 使用默认配置
  },
  -- 表格对齐
  {
    "godlygeek/tabular",
    ft = "markdown",
  },
}
