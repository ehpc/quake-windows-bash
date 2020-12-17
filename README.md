# Quake Windows Bash

## Description

This is a simple [AutoHotkey](https://autohotkey.com/) script for enabling Quake-like hiding and showing of Windows WSL bash terminal or Windows Terminal. You just hold down *Control* key and press *Tilde* / *Backtick*. :floppy_disk:

It uses default minimizing and restoring animations, so there is almost no delay. :zap:

## How to use

It's pretty straightforward: :mouse:
* Download and install [AutoHotkey](https://autohotkey.com/)
* Run `quake-windows-bash.ahk` or `quake-windows-terminal-ahk2.ahk`
* (Optionally) Place `quake-windows-bash.ahk` or `quake-windows-terminal-ahk2.ahk` into auto startup folder (Win+R: "shell:startup")
* Run *bash* and press `` CTRL + ` `` :baby_chick:

## Overcoming WSL rendering bug in Tmux & Vim
If you are experiencing some weird :space_invader: screen perturbations while restoring *bash* from minimized state, it's probably a bug caused by some incompatibility of *WSL* with *tmux* and *vim*. But do not worry. :smiley_cat: I have included some hack which automatically refreshes *tmux* upon restoring the *bash* window. You just need to find it in the source code (Ctrl+F: "tmux/vim") and remove the comments (;). Enjoy! :yum:
