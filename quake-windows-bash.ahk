;; Quake-style bash toggler for AutoHotkey.
;; Uses standard minimization/restoring animations.
;; ehpc@ehpc.io

; On CTRL+` press
^`::
    WinGet, mx, MinMax, ahk_exe bash.exe
    ; If window is minimized, restore it
    if (mx = -1)
    {
        WinRestore, ahk_exe bash.exe
    }
    ; Otherwise minimize it
    else
    {
        WinMinimize, ahk_exe bash.exe
    }
Return
