;Dual Function LWin/Capslock and RWin/Enter


;This script requires that you use sharpkeys to remap caplock to LWin. 

;Remapping Enter to RWin is optional
;The windows menu is nullfied in both remaps(Its meant to be used with a 3rd party launcher like powertoys run)
;The windows menu can be reenabled by commenting or deleting (LWin & vk07::return)


;This makes capslock act as esc when tapped and the windows key when held(Shortcuts still work). 
LWin & vk07::return
LWin::Esc ; Second remapping can be anything

;This makes enter act as enter when tapped and the windows key when held(Shortcuts still work)
RWin & vk07::return
RWin::Enter 



ToggleCaps(){
    ; this is needed because by default, AHK turns CapsLock off before doing Send
    SetStoreCapsLockMode, Off
    Send {CapsLock}
    SetStoreCapsLockMode, On
    return
}
;Use LShift and RShift To Turn Capslock on and off
LShift & RShift::ToggleCaps()
RShift & LShift::ToggleCaps()

; ^!r::Reload
