return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = {
        enable = true,
      },
      -- ensure these language parsers are installed
      ensure_installed = {
        "arduino",
        "bash",
        "c",
        "c_sharp",
        "cmake",
        "comment",
        "commonlisp",
        "cpp",
        "css",
        "csv",
        "dart",
        "devicetree",
        "diff",
        "dissasembly",
        "dockerfile",
        "elm",
        "fish",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "glsl",
        "go",
        "gpg",
        "graphql",
        "helm",
        "html",
        "htmldjango",
        "http",
        "java",
        "javascript",
        "jq",
        "jsdoc",
        "json",
        "kotlin",
        "latex",
        "lua",
        "luadoc",
        "make",
        "markdown",
        "markdown_inline",
        "matlab",
        "meson",
        "nginx",
        "ninja",
        "nix",
        "objc",
        "objcdump",
        "passwd",
        "pem",
        "php",
        "phpdoc",
        "po",
        "pod",
        "powershell",
        "printf",
        "properties",
        "python",
        "readline",
        "regex",
        "pip_requirements",
        "rust",
        "scss",
        "sql",
        "ssh_config",
        "strace",
        "swift",
        "templ",
        "terraform",
        "tmux",
        "toml",
        "tsx",
        "typescript",
        "typespec",
        "udev",
        "vim",
        "vimdoc",
        "vue",
        "xml",
        "yaml",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
