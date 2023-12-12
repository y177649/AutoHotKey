#Persistent
#SingleInstance force

; カーソル操作モードをトグルするための変数
cursorMode := false

; カーソル操作モードのトグル
^!d::  ; Ctrl+Alt+Dを押すとトグル
    cursorMode := !cursorMode
    Tooltip, Cursor mode: %cursorMode%  ; トグル状態を示すツールチップを表示
    SetTimer, RemoveTooltip, 1500  ; ツールチップを1.5秒後に削除
return

RemoveTooltip:
    Tooltip  ; ツールチップを削除
return

; カーソル操作用のホットキー機能
w::
if (cursorMode) {
    MouseMove, 0, -10, 0, R  ; 上に10ピクセル動かす
} else {
    Send w  ; 通常のWキーとして機能
}
return

a::
if (cursorMode) {
    MouseMove, -10, 0, 0, R  ; 左に10ピクセル動かす
} else {
    Send a  ; 通常のAキーとして機能
}
return

s::
if (cursorMode) {
    MouseMove, 0, 10, 0, R  ; 下に10ピクセル動かす
} else {
    Send s  ; 通常のSキーとして機能
}
return

d::
if (cursorMode) {
    MouseMove, 10, 0, 0, R  ; 右に10ピクセル動かす
} else {
    Send d  ; 通常のDキーとして機能
}
return
