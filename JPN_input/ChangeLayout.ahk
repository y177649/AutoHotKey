#Persistent  ; スクリプトを継続的に実行する
SetTimer, CheckKeyboardLayout, 1000  ; 1000ミリ秒（1秒）ごとにキーボードレイアウトをチェック

CheckKeyboardLayout:
    threadId := DllCall("GetWindowThreadProcessId", "UInt", DllCall("GetForegroundWindow"), "UInt", 0)
    keyboardLayout := DllCall("GetKeyboardLayout", "UInt", threadId, "UInt")

    ; キーボードレイアウト識別子の下位16ビットを取得
    layoutId := keyboardLayout & 0xFFFF

    ; 英語キーボードレイアウト（00000409）
    if (layoutId = 0x0409)
    {
        ; 英語用のアクション
        Tooltip, English keyboard layout active
    }
    ; 日本語キーボードレイアウト（00000411）
    else if (layoutId = 0x0411)
    {
        ; 日本語用のアクション
        Tooltip, Japanese keyboard layout active
    }
    else
    {
        ; その他のレイアウト用のアクション（オプション）
        Tooltip, Other keyboard layout active
    }
return

; スクリプトの終了処理
^!x::ExitApp  ; Ctrl + Alt + x でスクリプトを終了