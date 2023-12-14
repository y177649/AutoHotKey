#NoEnv
#Persistent
SendMode Input
SetWorkingDir %A_ScriptDir%

cursorMode := false
speed := 200
slowSpeed := speed * 0.05

; ALT + Qでモード切替
!q::
    cursorMode := !cursorMode
    ShowModePopup()
    if cursorMode
        BlockInput, On
    else
        BlockInput, Off
return

; Mode:cursorでの操作
#If (cursorMode)

    ; 速度調整
    +W::MouseMove, 0, -slowSpeed, 0, R
    +A::MouseMove, -slowSpeed, 0, 0, R
    +S::MouseMove, 0, slowSpeed, 0, R
    +D::MouseMove, slowSpeed, 0, 0, R

    ; 通常速度
    W::MouseMove, 0, -speed, 0, R
    A::MouseMove, -speed, 0, 0, R
    S::MouseMove, 0, speed, 0, R
    D::MouseMove, speed, 0, 0, R

    ; マウスクリック
    Q::Click Left
    E::Click Right

    ; ALT + Wでマウスホイール上スクロール
    !w::MouseClick, WheelUp

    ; ALT + Sでマウスホイール下スクロール
    !s::MouseClick, WheelDown

#If

; モード表示のポップアップ
ShowModePopup() {
    global cursorMode
    modeText := cursorMode ? "Mode: Cursor" : "Mode: Input"
    ToolTip %modeText%
    SetTimer, RemoveToolTip, -2000  ; 2秒後にツールチップを非表示にする
}

; ツールチップを非表示にする
RemoveToolTip:
    ToolTip
return

; 右AltキーをWindowsキーとして機能させる
RAlt::LWin
