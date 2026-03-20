control = 0

; --- Backspace vira Delete com Mode_switch ---
$Backspace::
GetKeyState, status, Mode_switch, P
if status = D
    Send, {Delete}
else
    Send, {Backspace} 
return

; --- Cliques de Mouse com Mode_switch ---
~LButton Up::
GetKeyState, statusMode, Mode_switch, P

if statusMode = D
    Send, {RButton}
return

; --- PgDn/PgUp viram WheelDown/WheelUp com Mode_switch ---
$PgDn::
GetKeyState, status, Mode_switch, P
if status = D
    Send, {WheelDown}
else
    Send, {PgDn}
return

$PgUp::
GetKeyState, status, Mode_switch, P
if status = D
    Send, {WheelUp}
else
    Send, {PgUp}
return

; --- F6 e F7 usando Mode_switch para disparar o Loop ---
$F6::
GetKeyState, status, Mode_switch, P
if status = D
{
    MouseClick, right,,, 1, 0, D
    Loop
    {
        Sleep, 10
        GetKeyState, state, F6, P
        if state = U
            break
    }
    MouseClick, right,,, 1, 0, U
}
else
{
    Send, {F6}
}
return

$F7::
GetKeyState, status, Mode_switch, P
if status = D
{
    MouseClick, middle,,, 1, 0, D
    Loop
    {
        Sleep, 10
        GetKeyState, state, F7, P
        if state = U
            break
    }
    MouseClick, middle,,, 1, 0, U
}
else
{
    Send, {F7}
}
return






















