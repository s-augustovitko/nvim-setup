# Custom Lua NeoVim configuration

This is a simple, lightweight and intuitive IDE-like configuration for NeoVim

## Keymaps

### Buffer

| Key          | Action                   |
| ------------ | ------------------------ |
| \<leader\>bb | Moves to previous buffer |
| \<leader\>bn | Moves to next buffer     |
| \<leader\>bc | Closes current buffer    |

### LSP

| Key          | Action                           |
| ------------ | -------------------------------- |
| gd           | Go to definition                 |
| gy           | Go to type definition            |
| gi           | Go to implementation             |
| gr           | Show references                  |
| K            | Show docs                        |
| \<leader\>r  | Rename symbol                    |
| \<leader\>f  | Format selection                 |
| \<leader\>a  | Code actions for current element |
| \<leader\>af | Quick fix file                   |
| \<leader\>aq | Quick fix                        |
| \<leader\>rf | Code refactor                    |
| \<leader\>ad | List diagnostics                 |
| \<CR\>       | Select current option            |
| \<TAB\>      | Move next completion Option      |
| \<S-TAB\>    | Move previous completion Option  |
| \<C-leader\> | Refresh autocomplete             |

### Tree View

| Key          | Action                        |
| ------------ | ----------------------------- |
| \<leader\>e  | Toggle NvimTree               |
| \<leader\>tr | NvimTree refresh              |
| \<TAB\>      | Open preview                  |
| \<C-p\>      | Switch parent to current node |
| f            | Filter                        |
| F            | Clear filter                  |
| c            | Mark Copy                     |
| x            | Mark Cut                      |
| p            | Paste Marked                  |

### System

| Key          | Action           |
| ------------ | ---------------- |
| \<C-t\>      | Toggle terminal  |
| \<leader\>ps | Packer Sync      |
| \<leader\>pu | Packer Update    |
| \<TAB\>      | Indent forwards  |
| \<S-TAB\>    | Indent backwards |

### Search

| Key          | Action              |
| ------------ | ------------------- |
| \<leader\>ff | Find file           |
| \<leader\>fg | Search in all files |
| \<leader\>fb | Find buffer         |

### Window

| Key                                | Action                    |
| ---------------------------------- | ------------------------- |
| \<C-k\>, \<C-j\>, \<C-h\>, \<C-l\> | Move to Window            |
| \<leader\>wv                       | Split window vertically   |
| \<leader\>wh                       | Split window horizontally |

## Installation

### Prerequisites

- [Node Js](https://nodejs.org/en/download/package-manager)
- [Neo Vim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts?tab=readme-ov-file#option-6-ad-hoc-curl-download)
- [Ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)
- [Fd](https://github.com/sharkdp/fd?tab=readme-ov-file#installation)
- [PyNvim](https://github.com/neovim/pynvim?tab=readme-ov-file#install)
- [Clangd](https://github.com/clangd/clangd) `sudo apt install clangd`
- [wl-clipboard](https://github.com/bugaevc/wl-clipboard) `sudo apt install wl-clipboard`

### Installation Steps

In order to install this package all you need to do is run the following command

```bash
git clone git@github.com:s-augustovitko/nvim-setup.git ~/.config/nvim
```

## Notes

### Import snippets

Follow the instructions under `ultisnips/README.md`

### Updates

Coc automatically updates extensions daily, this functionality can be removed
by updating the `coc-settings.json` file and removing the line `coc.preferences.extensionUpdateCheck`.

For updating Coc, Packer and Tree Sitter extensions you can use the following commands.

- `:CocUpdateSync` | `:CocUpdate`
- `:TSUpdateSync` | `:TSUpdate`
- `:PackerUpdate` | `<leader>pu`

### Coc

By default the following Coc extensions will be installed. More extensions can
be installed by using `:CocInstall coc-<extension>`. All extensions
and names can be found in [Coc Extensions](https://github.com/neoclide/coc.nvim/wiki/Language-servers).

- coc-pairs
- coc-prettier
- coc-lua
- coc-tsserver
- coc-rust-analyzer
- coc-json
- coc-go
- coc-yaml
- coc-toml
- coc-sh
- coc-markdownlint
- coc-css
- coc-tailwindcss
- coc-clangd
- coc-snippets

### Tree sitter

By default the following TreeSitter extensions will be installed. More extensions
can be installed by using `:TSInstall <extension>`.

- lua
- vim
- rust
  -o
- javascript
- typescript
- json
- make
- toml
- bash
- markdown
- css
- yaml
- c
