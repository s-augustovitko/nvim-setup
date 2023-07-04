# Custom Lua NeoVim configuration

This is a simple, lightweight and intuitive IDE-like configuration for NeoVim

## Keymaps Buffer

| Key        | Action                   |
| ---------- | ------------------------ |
| <leader>bb | Moves to previous buffer |
| <leader>bn | Moves to next buffer     |
| <leader>bc | Closes current buffer    |

## Keymaps LSP

| Key             | Action                           |
| --------------- | -------------------------------- |
| gd              | Go to definition                 |
| gy              | Go to type definition            |
| gi              | Go to implementation             |
| gr              | Show references                  |
| K               | Show docs                        |
| <leader>r       | Rename symbol                    |
| <leader>f       | Format selection                 |
| <leader>a       | Code actions for current element |
| <leader>af      | Quick fix file                   |
| <leader>aq      | Quick fix                        |
| <leader>rf      | Code refactor                    |
| <C-j> and <C-k> | Scroll window popup              |
| <CR>            | Select current option            |
| <TAB>           | Move next completion Option      |
| <S-TAB>         | Move previous completion Option  |
| <leader>sd      | Trigger snippts                  |

## Keymaps System

| Key        | Action              |
| ---------- | ------------------- |
| <C-t>      | Toggle terminal     |
| <leader>e  | Toggle NvimTree     |
| <leader>ff | Find file           |
| <leader>fg | Search in all files |
| <leader>ps | Packer Sync         |
| <leader>pu | Packer Update       |

## Keymaps Window

| Key                        | Action                    |
| -------------------------- | ------------------------- |
| <C-k>, <C-j>, <C-h>, <C-l> | Move to Window            |
| <leader>wv                 | Split window vertically   |
| <leader>wh                 | Split window horizontally |
