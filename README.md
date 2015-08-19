# tmux-select-pane.vim

This is a Vim plugin for integrating [tmux-select-pane] with Vim.

[tmux-select-pane]: https://github.com/Miciah/tmux-select-pane/

## Usage

Open a file in Vim.  In another Tmux pane, try to open the same file.
Normally Vim would print an error message when Vim finds a Vim swapfile
for the file from the first Vim process.  With this plugin, the second
Vim process instead selects the Tmux pane with the first Vim process
and exits.

## Configuration

Use the `g:tmux_select_pane_executable` variable to specify the location
of `tmux-select-pane` if it is not in your path.

```viml
let g:tmux_select_pane_executable = $HOME . "/bin/tmux-select-pane"
```

## Copyright

Copyright (c) 2015 Miciah Dashiel Butler Masters
