# my-neovim
a place to store my config whilst learning neovim...

based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

the original goal was to break up the kickstart config for easier consumption

some additional plugins to help along the journey,
- neo-tree, a file/project browser, opens with <C-\\>
- toggleterm, to access the terminal, opens with <C-`>
- nightfly, a darker theme with higher contrast for my oldschool eyeballs

### Installation

> **NOTE** 
> [Backup](#FAQ) your previous configuration (if any exists)

Requirements:
- Neovim

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%userprofile%\AppData\Local\nvim\` |
| Windows (powershell)| `$env:USERPROFILE\AppData\Local\nvim\` |

Clone the repo:

- on Linux and Mac
```sh
git clone https://github.com/trevorjamesmartin/my-neovim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

- on Windows (cmd)
```
git clone https://github.com/trevorjamesmartin/my-neovim.git %userprofile%\AppData\Local\nvim\ 
```

- on Windows (powershell)
```
git clone https://github.com/trevorjamesmartin/my-neovim.git $env:USERPROFILE\AppData\Local\nvim\ 
```

### Post Installation

Start Neovim

```sh
nvim
```

The `Lazy` plugin manager will start automatically on the first run and install the configured plugins - as can be seen in the introduction video. After the installation is complete you can press `q` to close the `Lazy` UI and **you are ready to go**! Next time you run nvim `Lazy` will no longer show up.

If you would prefer to hide this step and run the plugin sync from the command line, you can use:

```sh
nvim --headless "+Lazy! sync" +qa
```

