# Neovim

## Installation

### linux

```bash
git clone git@github.com:yefengwu/neovim.git $HOME/.config/nvim

```

### Win

```powershell
git clone git@github.com:yefengwu/neovim.git HOME\AppData\Local\nvim
```
```nushell
git clone git@github.com:yefengwu/neovim.git ~\AppData\Local\nvim
```

## Keymappings

### Main Mappings

| Keys       | Description             | mode   |
| ---------- | ----------------------- | ------ |
| jj         | exit insert mode \<Esc> | insert |
| jk         | exit insert mode \<Esc> | insert |
| \<Leader>q | force quit              | normal |
| \<Leader>w | force write             | normal |
| \<C-u>     | move up 8 lines         | normal |
| \<C-d>     | move down 8 lines       | normal |
| \<Leader>r | show symbols_outline    | normal |
| \<Leader>y | open chatgpt            | normal |
| \<C-\>     | toggleterm              | normal|

### Window

| Keys       | Description                            | mode   |
| ---------- | -------------------------------------- | ------ |
| \<C-h>     | focus to the left window               | normal |
| \<C-j>     | focus to the down window               | normal |
| \<C-k>     | focus to the up window                 | normal |
| \<C-l>     | focus to the right window              | normal |
| sh         | vertical split screen  on left arrow   | normal |
| sj         | horizontal split screen  on down arrow | normal |
| sk         | horizontal split screen on up arrow    | normal |
| sl         | vertical split screen on right arrow   | normal |
| \<Leader>h | swap window to left                    | normal |
| \<Leader>j | swap window to down                    | normal |
| \<Leader>k | swap window to up                      | normal |
| \<Leader>l | swap window to right                   | normal |
| \<C-Up>    | resize +2                              | normal |
| \<C-Down>  | resize -2                              | normal |
| \<C-Left>  | vertical resize -2                     | normal |
| \<C-Right> | vertical resize +2                     | normal       |

### Buffer

| Keys        | Description                         | mode   |
| ----------- | ----------------------------------- | ------ |
| \<Tab>      | switch to the next tab              | normal |
| \<S-Tab>    | switch to the previous tab          | normal |
| \<Leader>c  | close current buffer                | normal |
| \<Leader>bn | move the current buffer to next     | normal |
| \<Leader>bp | move the current buffer to previous | normal |

### Telescope

| Keys       | Desciption           | mode   |
| ---------- | -------------------- | ------ |
| \<Leader>f | Telescope find_files | normal |
| \<Leader>s | Telescope live_grep  | normal |
| \<Leader>p | Telescope project    | normal |
| \<A-p>     | Telescope commands   | normal |
