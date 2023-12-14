#Persistent  ; スクリプトが自動終了しないようにする
#NoEnv  ; 環境変数をリセットしない

; Windowsキーの状態を監視する
LWin::
RWin::
    ToolTip, Windowsキーが反応しました。
    Sleep, 1000  ; 1秒間メッセージを表示
    ToolTip  ; メッセージを消去
return

; Cキーの状態を監視する
c::
    ToolTip, Cキーが反応しました。
    Sleep, 1000  ; 1秒間メッセージを表示
    ToolTip  ; メッセージを消去
return
