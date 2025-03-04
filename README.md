# Neovim Config

* Structure
```
.
├── init.lua
├── lazy-lock.json
└── lua
    ├── config
    │   ├── autocmd.lua
    │   ├── keymaps.lua
    │   ├── lazy.lua
    │   └── options.lua
    └── plugins
        ├── alpha.lua
        ├── autosession.lua
        ├── bufferline.lua
        ├── colorscheme.lua
        ├── copilot.lua
        ├── dressing.lua
        ├── flash.lua
        ├── fugitive.lua
        ├── gitsigns.lua
        ├── icons.lua
        ├── indent-blank.lua
        ├── lazygit.lua
        ├── lsp
        │   ├── lspconfig.lua
        │   └── mason.lua
        ├── lualine.lua
        ├── nvim-cmp.lua
        ├── nvim-tree.lua
        ├── plenary.lua
        ├── snr.lua
        ├── surround.lua
        ├── telescope.lua
        ├── todo.lua
        ├── toggleterm.lua
        ├── treesitter.lua
        ├── trouble.lua
        ├── undotree.lua
        └── which-key.lua
```

    - `init.lua`: Main configuration file
    - `lazy-lock.json`: File to store lazy-loaded plugins
    - `lua/config`: Configuration files
        - `autocmd.lua`: Autocommands
        - `keymaps.lua`: Keymaps
        - `lazy.lua`: Lazy-loading functions
        - `options.lua`: options
    - `lua/plugins`: Plugin configuration files


# Steps to install

1. Clone the repository (backup your existing nvim configuration)
```
git clone https://github.com/suswanj/neovim-config.git ~/.config/nvim
```

2. Install the dependencies
    - neovim (0.10+)
    - nodejs
    - npm
    - python3
    - pip
    - ripgrep
    - fzf
    - Nerd Fonts (for icons)

3. Start neovim (lazy will automatically start installing the plugins)

4. Install the language servers
    - `:LspInstall <language>` (e.g. `:LspInstall python`)
    - `:LspInstall` to select from the list


* Author: Suswan J
* License: GPL-3.0
* GitHub: [suswanj](https://github.com/suswanj)
