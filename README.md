
# Neovim Config

* Folder Structure
```
.
├── init.lua
├── lazy-lock.json
├── lazyvim.json
├── lua
│   ├── config
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins
│       ├── alpha.lua
│       └── colortheme.lua
└── README.md
```

- This is a Fully Functioning Neovim config
- LazyVim plugin manager is used to manage all the plugins
- Basic starter config is taken from [LazyVim](https://github.com/LazyVim/LazyVim)
- keymaps and basic settings are located at
  ```
  lua/config/options.lua
  lua/config/keymaps.lua
  ```
- I have modified colortheme and alpha only
- You can modify and use plugins by adding them to
```lua/plugins```



# Steps to use my Neovim config:

1. Make a backup of your existing config:
```
  mv ~/.config/nvim ~/.config/nvim.bak
```

2. Clone the repo
```
  git clone https://github.com/suswanj/neovim_config.git ~/.config/nvim
```

3. Start nvim to start Lazy to install the plugins.
4. Make sure to have requirements fulfilled for Lazy and plugins.

:) Peace Out!


- Author: Suswan Joglekar
- Github: [suswanj](https://github.com/suswanj)
- Mail: suswan.joglekar@gmail.com
