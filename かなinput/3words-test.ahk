#Persistent
#UseHook
SetTimer, CheckKeyboardLayout, 1000
; ...（CheckKeyboardLayout関数の残りの部分）

; 押されたキーを追跡するための変数を初期化
Global key_b := false
Global key_p := false
Global key_j := false
Global key_g := false
Global key_k := false
Global key_s := false
Global key_t := false
Global key_n := false
Global key_h := false
Global key_m := false
Global key_r := false

; キーが押されたときに変数を更新
~b::key_b := true
~p::key_p := true
~j::key_j := true
~g::key_g := true
~k::key_k := true
~s::key_s := true
~t::key_t := true
~n::key_n := true
~h::key_h := true
~m::key_m := true
~r::key_r := true

; キーが放されたときに変数をリセット
~b Up::key_b := false
~p Up::key_p := false
~j Up::key_j := false
~g Up::key_g := false
~k Up::key_k := false
~s Up::key_s := false
~t Up::key_t := false
~n Up::key_n := false
~h Up::key_h := false
~m Up::key_m := false
~r Up::key_r := false

; a, c (uに対応), o が押されたときの振る舞いを定義
~a Up::SendSequence("a")
~c Up::SendSequence("u")
~o Up::SendSequence("o")

SendSequence(key) {
    if (key_b && key_y) {  ; b と y が両方押されているかチェック
        if (key = "a") {
            Send, bya
        } else if (key = "u") {
            Send, byu
        } else if (key = "o") {
            Send, byo
        }
    }
    if (key_p && key_y) {  ; p と y が両方押されているかチェック
        if (key = "a") {
            Send, pya
        } else if (key = "u") {
            Send, pyu
        } else if (key = "o") {
            Send, pyo
        }
    }
    ; 以下、他の行に対する条件を同様に追加
    if (key_j && key_y) {  ; j と y が両方押されているかチェック
        if (key = "a") {
            Send, jya
        } else if (key = "u") {
            Send, jyu
        } else if (key = "o") {
            Send, jyo
        }
    }
    ; ...（他の行に対する条件も同様に追加）

    ; キーの状態をリセット
    key_b := false
    key_p := false
    key_j := false
    key_g := false
    key_k := false
    key_s := false
    key_t := false
    key_n := false
    key_h := false
    key_m := false
    key_r := false
}
