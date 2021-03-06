;; Quake-style Windows Terminal toggler for AutoHotkey.
;; Uses standard minimization/restoring animations.
;; ehpc@ehpc.io

#SingleInstance force
#Persistent
#InstallKeybdHook

; Windows Terminal process handle
global BashHandle := "ahk_exe WindowsTerminal.exe"

; On CTRL+` press
^VKC0::
{
    mx := WinGetMinMax(BashHandle)

    ; If window is minimized, restore it
    if (mx = -1)
    {
        WinRestore(BashHandle)
    }
    ; Otherwise minimize it
    else
    {
        WinMinimize(BashHandle)
    }
}
