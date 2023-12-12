#NoEnv
#Persistent
SendMode Input
SetWorkingDir %A_ScriptDir%

cursorMode := false
speed := 10
slowSpeed := speed * 0.3

; ALT + Dでモード切替
!d::
    cursorMode := !cursorMode
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
