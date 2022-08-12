# gitdiff.nvim
<p align="center">
  <a href="https://github.com/milennik/gitdiff.nvim/stargazers">
    <img alt="Stars" src="https://img.shields.io/github/stars/milennik/gitdiff.nvim?style=for-the-badge&logo=starship&color=C9CBFF&logoColor=D9E0EE&labelColor=302D41"></a>
  <a href="https://github.com/milennik/gitdiff.nvim/issues">
    <img alt="Issues" src="https://img.shields.io/github/issues/milennik/gitdiff.nvim?style=for-the-badge&logo=bilibili&color=F5E0DC&logoColor=D9E0EE&labelColor=302D41"></a>
  <a href="https://github.com/milennik/gitdiff.nvim">
    <img alt="Repo Size" src="https://img.shields.io/github/repo-size/milennik/gitdiff.nvim?color=%23DDB6F2&label=SIZE&logo=codesandbox&style=for-the-badge&logoColor=D9E0EE&labelColor=302D41"/></a>
  <a href="https://github.com/milennik/gitdiff.nvim">
    <img alt="License" src="https://img.shields.io/github/license/milennik/gitdiff.nvim?style=for-the-badge&logo=starship&color=C9CBFF&logoColor=D9E0EE&labelColor=302D41"/></a>
</p>

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

- Swap windows:
    `C+w, x`

### FAQ

### License
[GPL-3.0](https://github.com/milennik/gitdiff.nvim/blob/master/LICENSE)

