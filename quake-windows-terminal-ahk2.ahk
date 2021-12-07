;; Quake-style Windows Terminal toggler for AutoHotkey.
;; Uses standard minimization/restoring animations.
;; ehpc@ehpc.io

#SingleInstance force
Persistent
InstallKeybdHook

; Terminal process handle (or WindowsTerminal.exe)
global BashHandle := "ahk_exe ubuntu.exe"

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
