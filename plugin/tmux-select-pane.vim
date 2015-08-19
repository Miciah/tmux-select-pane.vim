if !exists("g:tmux_select_pane_executable")
  let g:tmux_select_pane_executable = "tmux-select-pane"
endif

function! SelectTmuxPaneForSwapfile()
  call system(shellescape(g:tmux_select_pane_executable) . " -f " . shellescape(v:swapname))
  if v:shell_error == 0
    echom "Selected Tmux pane with file already open"
    let v:swapchoice = 'q'
  endif
endfunction

autocmd SwapExists * call SelectTmuxPaneForSwapfile()
