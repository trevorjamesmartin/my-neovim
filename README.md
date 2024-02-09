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

The `Lazy` plugin manager will start automatically on the first run and install the configured plugins. After the installation is complete you can press `q` to close the `Lazy` UI and **you are ready to go**! `Lazy` will repeat this behavior if/when new plugins are added to the config. See [plugins-setup.lua](lua/my/plugins-setup.lua)

### Fonts

The `nvim-web-devicons` plugin provides file-type & folder icons that should be viewable in `:Neotree`. You may need to adjust your terminal font if they don't render. 

You can find a large selection of devicon friendly fonts at [Nerd Fonts](https://www.nerdfonts.com/). 

### Mapping Keys

If possible, I'd like to keep all of my keymaps in one file: [keymaps.lua](lua/my/config/keymaps.lua) 

some mappings are created by the plugins themselves, I'd like to keep them in their own files, where possible.

**NOTE**
It feels cleaner to map [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) when the plugin is loaded. To change this keymap open [plugins-setup.lua](lua/my/plugins-setup.lua) & search for the keyword 'open_mapping'.

I have my toggleterm open_mapping set to
- <c-z> on my laptop
- <c-`> on my desktop

_due to different keyboard layouts & fn keys & such._


### Debug adapter 

[nvim-dap](https://github.com/mfussenegger/nvim-dap) adapter for [vscode-js-debug](https://github.com/microsoft/vscode-js-debug).

download and build a copy of [vscode-js-debug](https://github.com/microsoft/vscode-js-debug)

#### Manually

```bash
git clone https://github.com/microsoft/vscode-js-debug
cd vscode-js-debug
npm install --legacy-peer-deps
npx gulp vsDebugServerBundle
mv dist out
```


