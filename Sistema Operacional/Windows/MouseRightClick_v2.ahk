#Requires AutoHotkey v2.0

control := 0

~RWin::Send "{LCtrl down}{RAlt down}"
~RWin Up::Send "{LCtrl up}{RAlt up}"

RWin & Backspace:: {
    Send "{LCtrl up}{RAlt up}"
    Send "{Delete}"
}

RWin & LButton Up:: {
    Send "{LCtrl up}{RAlt up}"
    Send "{RButton}"
}

RWin & PgDn:: {
    Send "{WheelDown}"
}

RWin & PgUp:: {
    Send "{WheelUp}"
}

RWin & F6:: {
    Click "Right Down"
    while GetKeyState("F6", "P") {
        Sleep 10
    }
    Click "Right Up"
}

RWin & F7:: {
    Click "Middle Down"
    while GetKeyState("F7", "P") {
        Sleep 10
    }
    Click "Middle Up"
}

SC15E::
{
    ; Tenta focar no Desktop de forma genérica
    if WinExist("ahk_class Progman")
        WinActivate("ahk_class Progman")
    else if WinExist("ahk_class WorkerW")
        WinActivate("ahk_class WorkerW")
    
    ; Pequena pausa para garantir o foco antes de enviar o comando
    Sleep(50)
    Send("!{F4}")
}

NumpadClear::Send("=")
