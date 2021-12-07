;; Quake-style bash toggler for AutoHotkey.
;; Uses standard minimization/restoring animations.
;; ehpc@ehpc.io

#SingleInstance force

; Bash process handle (or ubuntu.exe for WSL2)
BashHandle = ahk_exe bash.exe

; Or if you use http://git-scm.com/download/win switch to below:
; BashHandle = ahk_exe mintty.exe

; On CTRL+` press
^VKC0::
    WinGet, mx, MinMax, %BashHandle%
    ; If window is minimized, restore it
    if (mx = -1)
    {
        WinRestore, %BashHandle%

        ; Uncomment these lines to overcome tmux/vim rendering bug
        ; ControlSend, , ^{VK42}, %BashHandle%
        ; ControlSend, , {VK52}, %BashHandle%
    }
    ; Otherwise minimize it
    else
    {
        WinMinimize, %BashHandle%
    }
Return
; On F11 press
f11::
	minMaxFlag := !minMaxFlag ,
	WinGet, MinMax
	if minMaxFlag{
	WinMaximize, %BashHandle%
	}
    else{ 
        winRestore, %BashHandle%
	}
Return
