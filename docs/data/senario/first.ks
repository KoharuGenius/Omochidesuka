;一番最初に呼び出されるファイル

[title name="お客様、当店のカードはおもちですか"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ


;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージボックスは非表示
@layopt layer="message0" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]


; マクロ定義
[macro name="choice"]
    [glink text=%text y=%y x="200" width=600 target=%target color="btn_06_yellow" size="30"]
[endmacro]

[macro name="dekamoji"]
    [font size="40" bold="true"]%text[resetfont]
[endmacro]

;前景レイヤー上に文字を表示
(back)
;最後に必ずtransを使うこと
[macro name="disptext"]
    [ptext layer="0" page="back" x=0 y=%y width=1024 align="center" size=%size text=%text color="0xFFFFFF"]
[endmacro]


;前景レイヤー上にアイテム表示
[macro name="dispitem"]
    @freeimage layer="1"
    [image layer="1" x=200 y=100 width=300 height=300 storage=%storage time=1500]
[endmacro]

[macro name="eraseitem"]
    @freeimage layer="1"
[endmacro]


;タイトル画面へ移動
@jump storage="title.ks"

[s]


