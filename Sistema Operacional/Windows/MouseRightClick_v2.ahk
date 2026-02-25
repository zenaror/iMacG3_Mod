control := 0

RWin::Send "{LCtrl down}{RAlt down}"
RWin Up::Send "{LCtrl up}{RAlt up}"

+Backspace:: {
    Send "{Delete}"
}

^!LButton Up:: {
    Send "{RAlt up}{LCtrl up}"
    Send "{RButton}"
}

+PgDn:: {
    Send "{WheelDown}"
}

+PgUp:: {
    Send "{WheelUp}"
}

*F6:: {
    Click "Right Down"
    while GetKeyState("F6", "P") {
        Sleep 10
    }
    Click "Right Up"
}

*F7:: {
    Click "Middle Down"
    while GetKeyState("F7", "P") {
        Sleep 10
    }
    Click "Middle Up"
}
