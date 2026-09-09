;一番最初に呼び出されるファイル

[title name="お客様、当店のカードはおもちですか？"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ
[plugin name="theme_kopanda_13"]
;[position layer="message0" opacity=220]
;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;for charactor
[chara_new name="nozomi" storage="./chara/nzmdefault.png" jname="のぞみ"]

[chara_face name="nozomi" face="eee" storage="./chara/nzmeee.png"]
[chara_face name="nozomi" face="serious" storage="./chara/nzmserious.png"]
[chara_face name="nozomi" face="serious2" storage="./chara/nzmserious2.png"]
[chara_face name="nozomi" face="tere" storage="./chara/nzmtere.png"]
[chara_face name="nozomi" face="tere2" storage="./chara/nzmtere2.png"]
[chara_face name="nozomi" face="smile2" storage="./chara/nzmsmile2.png"]
[chara_face name="nozomi" face="mg10" storage="./chara/nzmmg10.png"]
[chara_face name="nozomi" face="shobon" storage="./chara/nzmshobon.png"]
[chara_face name="nozomi" face="ikari" storage="./chara/nzmikari.png"]
[chara_face name="nozomi" face="kirari" storage="./chara/nzmkirari.png"]
[chara_face name="nozomi" face="komari" storage="./chara/nzmkomari.png"]
[chara_face name="nozomi" face="coffee" storage="./chara/nzmcoffee.png"]
[chara_face name="nozomi" face="niyari" storage="./chara/nzmniyari.png"]
[chara_face name="nozomi" face="hi" storage="./chara/nzmhi.png"]

; popopo設定　少しポップで明るい印象（三角波）
[popopo type="none"]
[popopo type="triangle" frequency="E" octave="1" noplaychars="…、。！？" chara="のぞみ"]

;****Macro Define
[macro name="choice"]
    [glink color="btn_06_yellow" size="24" width="600" text=%text target=%target]
[endmacro]

[macro name="dekamoji"]
    [font size="40" bold="true"]
[endmacro]

;メニューに戻るボタン
[macro name="showbackbtn"]
    ;[glink x=500 y=550 color="btn_01_yellow" size="24" text="メニューに戻る" target="*backtitle"]
    [button x=550 y=550 graphic="title2/button_backmenu.png" target="backtitle"]
[endmacro]

;前景レイヤー左側にアイテム表示
[macro name="showitemslide"]
#
[cm]
@playse storage="shupan.mp3" 
@chara_move name="nozomi" left="+=150"
@freeimage layer="1"
@image layer="1" x=200 y=100 width=360 height=360 storage=%storage
@layopt layer="1" visible="true"
[endmacro]

[macro name="hideitemslide"]
#
[cm]
@layopt layer="1" visible="false"
@chara_move name="nozomi" left="-=150"
[endmacro]

;前景レイヤー中央にアイテム表示
[macro name="showcenteritem"]
    @freeimage layer="1"
    @layopt layer="1" visible="true"
    @image layer="1" x=400 y=50 width=400 height=400 storage=%storage time=300
[endmacro]

[macro name="hideitem"]
    @freeimage layer="1"
    @layopt layer="1" visible="false"
[endmacro]

;前景レイヤー上(back)に文字を表示
;最後に必ずtransを使うこと
[macro name="disptext"]
    [ptext layer="0" page="back" x=0 y=%y width="&TYRANO.kag.config.scWidth" align="center" size=%size text=%text color="0xFFFFFF"]
[endmacro]

[macro name="erasetext"]
    [freeimage layer="0" page="back"]
[endmacro]

;タイトル画面へ移動
@jump storage="title.ks"

[s]

;サブルーチン
;入店チャイム
*sub_entershop
@playse storage="entershop.mp3"
@wait time=2000
@playse storage="entershop.mp3"
[return]
