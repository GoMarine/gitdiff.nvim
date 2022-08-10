# gitdiff.nvim


## Compare HEAD with any branch. Easily find changed files and do `git diff`.

### Requirements
- [git](https://git-scm.com/)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [fugitive](https://github.com/tpope/vim-fugitive)

### Installation

    use { "milennik/gitdiff.nvim" }

### Configuration
### Usage

- Pass the reference branch name as parameter to compare HEAD with it.
This key map can be used to compare HEAD with a default reference branch:

    `map('n', '<C-y>', ":lua require('gitdiff').diff('master')<cr>")`

- If we don't pass any parameter, the `promt` will be shown, and we can enter any branch to compare to:

    `map('n', '<C-[>', ":lua require('gitdiff').diff()<cr>")`

- `git diff` vertical split:

    `map('n', '<C-p>', ":Gvdiffsplit master<cr>")`

### FAQ

### License
[GPL-3.0](https://github.com/milennik/gitdiff.nvim/blob/master/LICENSE)

