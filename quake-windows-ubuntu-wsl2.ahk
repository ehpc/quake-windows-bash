;; Quake-style bash toggler for AutoHotkey.
;; Uses standard minimization/restoring animations.
;; ehpc@ehpc.io

#SingleInstance force

; ubuntu process handle
ubuntuHandle = ahk_exe ubuntu.exe

; On CTRL+ALT+t press
^!t::
    WinGet, mx, MinMax, %ubuntuHandle%
    ; If window is minimized, restore it
    if (mx = -1)
    {
        WinRestore, %ubuntuHandle%
    }    
    else
    {
        WinMinimize, %ubuntuHandle%
    }
return 
; On F11 press
f11::
	minMaxFlag := !minMaxFlag ,
	WinGet, MinMax
	if minMaxFlag{
	WinMaximize, %ubuntuHandle%
	}
    else{ 
        winRestore, %ubuntuHandle%
	}
Return

