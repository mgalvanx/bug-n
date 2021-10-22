#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; Alternatively, using Alt...

; Navigation Combos
MoveCursor(key) {
    shift := GetKeyState("SHIFT","P")
    control := GetKeyState("CONTROL","P")
    controlShift := control && shift

    if controlShift {
        Send, ^+%key%
    }
    else if shift {
        Send, +%key%
    }
    else if control {
        Send, ^%key%
    }
    else {
        Send, %key%
    }
}


ALT & h::MoveCursor("{LEFT}")
ALT & l::MoveCursor("{RIGHT}")
ALT & k::MoveCursor("{UP}")
ALT & j::MoveCursor("{DOWN}")
ALT & i::MoveCursor("{HOME}")
ALT & a::MoveCursor("{END}")
ALT & BACKSPACE::Send {DELETE}