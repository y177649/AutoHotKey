#Persistent
SetTimer, CheckKeyboardLayout, 1000

Global IsJapaneseLayout := false

CheckKeyboardLayout:
    threadId := DllCall("GetWindowThreadProcessId", "UInt", DllCall("GetForegroundWindow"), "UInt", 0)
    keyboardLayout := DllCall("GetKeyboardLayout", "UInt", threadId, "UInt")
    layoutId := keyboardLayout & 0xFFFF

    if (layoutId = 0x0411) {
        IsJapaneseLayout := true
        Tooltip, Japanese keyboard layout active
    } else {
        IsJapaneseLayout := false
        Tooltip, Other keyboard layout active
    }
return

^!x::ExitApp

#If (IsJapaneseLayout)

#UseHook

; あ
a::
send, a
return

; い
i::
send, i
return

; う
u::
send, u
return

; え
e::
send, e

return

; お
o::
send, o
return

; か
k & a::
send, k
sleep, 10
send, a
return

; き
k & j::
send, k
sleep, 10
send, i
return

; く
k & u::
send, k
sleep, 10
send, u
return

; け
k & e::
send, k
sleep, 10
send, e
return

; こ
k & o::
send, k
sleep, 10
send, o
return

; さ
s & a::
send, s
sleep, 10
send, a
return

; し
s & i::
send, s
sleep, 10
send, i
return

; す
s & u::
send, s
sleep, 10
send, u
return

; せ
s & e::
send, s
sleep, 10
send, e
return

; そ
s & o::
send, s
sleep, 10
send, o
return

; た
t & a::
send, t
sleep, 10
send, a
return

; ち
t & i::
send, t
sleep, 10
send, i
return

; つ
t & u::
send, t
sleep, 10
send, u
return

; て
t & e::
send, t
sleep, 10
send, e
return

; と
t & o::
send, t
sleep, 10
send, o
return

; な
n & a::
send, n
sleep, 10
send, a
return

; に
n & i::
send, n
sleep, 10
send, i
return

; ぬ
n & f::
send, n
sleep, 10
send, u
return

; ね
n & e::
send, n
sleep, 10
send, e
return

; の
n & o::
send, n
sleep, 10
send, o
return

; は
h & a::
send, h
sleep, 10
send, a
return

; ひ
h & i::
send, h
sleep, 10
send, i
return

; ふ
h & f::
send, h
sleep, 10
send, u
return

; へ
h & e::
send, h
sleep, 10
send, e
return

; ほ
h & o::
send, h
sleep, 10
send, o
return

; ま
m & a::
send, m
sleep, 10
send, a
return

; み
m & i::
send, m
sleep, 10
send, i
return

; む
m & f::
send, m
sleep, 10
send, u
return

; め
m & e::
send, m
sleep, 10
send, e
return

; も
m & o::
send, m
sleep, 10
send, o
return

; や
y & a::
send, y
sleep, 10
send, a
return

; ゆ
y & f::
send, y
sleep, 10
send, u
return

; よ
y & o::
send, y
sleep, 10
send, o
return

; ら
r & a::
send, r
sleep, 10
send, a
return

; り
r & i::
send, r
sleep, 10
send, i
return

; る
r & u::
send, r
sleep, 10
send, u
return

; れ
r & e::
send, r
sleep, 10
send, e
return

; ろ
r & o::
send, r
sleep, 10
send, o
return

; わ
w & a::
send, w
sleep, 10
send, a
return

; を
w & o::
send, w
sleep, 10
send, o
return

; ん (末尾の文字としてのみ使用)
n::
send, n
sleep,10
send, n
return

; ぱ行
p & a::
send, p
sleep, 10
send, a
return

p & i::
send, p
sleep, 10
send, i
return

p & u::
send, p
sleep, 10
send, u
return

p & e::
send, p
sleep, 10
send, e
return

p & o::
send, p
sleep, 10
send, o
return

; ば行
b & a::
send, b
sleep, 10
send, a
return

b & i::
send, b
sleep, 10
send, i
return

b & u::
send, b
sleep, 10
send, u
return

b & e::
send, b
sleep, 10
send, e
return

b & o::
send, b
sleep, 10
send, o
return

; だ行
d & a::
send, d
sleep, 10
send, a
return

d & i::
send, d
sleep, 10
send, i
return

d & u::
send, d
sleep, 10
send, u
return

d & j::
send, d
sleep, 10
send, e
return

d & o::
send, d
sleep, 10
send, o
return

; ざ行
z & x::
send, z
sleep, 10
send, a
return

z & i::
send, z
sleep, 10
send, i
return

z & u::
send, z
sleep, 10
send, u
return

z & e::
send, z
sleep, 10
send, e
return

z & o::
send, z
sleep, 10
send, o
return

; が行
g & a::
send, g
sleep, 10
send, a
return

g & i::
send, g
sleep, 10
send, i
return

g & u::
send, g
sleep, 10
send, u
return

g & e::
send, g
sleep, 10
send, e
return

g & o::
send, g
sleep, 10
send, o
return

q::
send, x
sleep, 10
send, t
sleep, 10
send, u
return

/*-----------------------------
; びゃ行
b & ya::
send, b
sleep, 10
send, yo
return

byu::
send, b
sleep, 10
send, yu
return

byo::
send, b
sleep, 10
send, yo
return

; ぢゃ行
dya::
send, d
sleep, 10
send, ya
return

dyu::
send, d
sleep, 10
send, yu
return

dyo::
send, d
sleep, 10
send, yo
return

; じゃ行
ja::
send, j
sleep, 10
send, a
return

ju::
send, j
sleep, 10
send, u
return

jo::
send, j
sleep, 10
send, o
return

; ぎゃ行
gya::
send, g
sleep, 10
send, ya
return

gyu::
send, g
sleep, 10
send, yu
return

gyo::
send, g
sleep, 10
send, yo
return

; りゃ行
rya::
send, r
sleep, 10
send, ya
return

ryu::
send, r
sleep, 10
send, yu
return

ryo::
send, r
sleep, 10
send, yo
return

; みゃ行
mya::
send, m
sleep, 10
send, ya
return

myu::
send, m
sleep, 10
send, yu
return

myo::
send, m
sleep, 10
send, yo
return

; にゃ行
nya::
send, n
sleep, 10
send, ya
return

nyu::
send, n
sleep, 10
send, yu
return

nyo::
send, n
sleep, 10
send, yo
return

; ちゃ行
cha::
send, ch
sleep, 10
send, a
return

chu::
send, ch
sleep, 10
send, u
return

cho::
send, ch
sleep, 10
send, o
return

; しゃ行
sha::
send, sh
sleep, 10
send
*/

#If

; その他のグローバルまたは共通のキー設定をここに追加できます。
