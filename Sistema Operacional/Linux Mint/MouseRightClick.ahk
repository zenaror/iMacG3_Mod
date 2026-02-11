control = 0

+Backspace::
Send {Delete}
return

^!LButton Up::
Send, {LALT up} {LControl up}
Send, {MButton}
return

!LButton Up::
Send, {LALT up}
Send, {RButton}
return

+PgDn::
Send, {WheelDown}
return

+PgUp::
Send, {WheelUp}
return


*F6::
MouseClick, right,,, 1, 0, D  ; Hold down the left mouse button.
Loop
{
	Sleep, 10
	GetKeyState, state, F6, P
	if state = U  ; The key has been released, so break out of the loop.
		break
	; ... insert here any other actions you want repeated.
}
MouseClick, right,,, 1, 0, U  ; Release the mouse button.
return

*F7::
MouseClick, middle,,, 1, 0, D  ; Hold down the left mouse button.
Loop
{
	Sleep, 10
	GetKeyState, state, F7, P
	if state = U  ; The key has been released, so break out of the loop.
		break
	; ... insert here any other actions you want repeated.
}
MouseClick, middle,,, 1, 0, U  ; Release the mouse button.
return






















