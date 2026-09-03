;一番最初に呼び出されるファイル

[title name="お客様、当店のカードはおもちですか"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ
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
[chara_face name="nozomi" face="coffee" storage="./chara/nzmcoffee.png"]

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

; popopo設定　少しポップで明るい印象（三角波）
[popopo type="none"]
[popopo type="triangle" frequency="E" octave="1" time="80" tailtime="20" chara="のぞみ"]

;メッセージボックスは非表示
@layopt layer="message0" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]


; マクロ定義
[macro name="choice"]
    [glink text=%text y=%y x="200" width=600 target=%target color="btn_06_yellow" size="30"]
[endmacro]

[macro name="dekamoji"]
    [font size="40" bold="true"]
[endmacro]

;前景レイヤー上に文字を表示
(back)
;最後に必ずtransを使うこと
[macro name="disptext"]
    [ptext layer="0" page="back" x=0 y=%y width="&TYRANO.kag.config.scWidth" align="center" size=%size text=%text color="0xFFFFFF"]
[endmacro]



;前景レイヤー中央にアイテム表示
[macro name="showcenteritem"]
    @freeimage layer="1"
    @layopt layer="1" visible="true"
    [image layer="1" x=400 y=50 width=400 height=400 storage=%storage time=300]
[endmacro]

[macro name="hideitem"]
    @freeimage layer="1"
[endmacro]

;前景レイヤー左側にアイテム表示
[macro name="showitemslide"]
#
[cm]
@playse storage="shupan.mp3" 
@chara_move name="nozomi" left="+=200"
@freeimage layer="1"
[image layer="1" x=200 y=100 width=300 height=300 storage=%storage time=300]
@layopt layer="1" visible="true"
[endmacro]

;ぬいぐるみ消える、のぞみ戻る
[macro name="hideitemslide"]
#
[cm]
@layopt layer="1" visible="false"
@chara_move name="nozomi" left="-=200"
[endmacro]

;タイトル画面へ移動
@jump storage="title.ks"

[s]

;サブルーチン
;入店チャイム
*sub_entershop
@playse storage="entershop.mp3"
[wse]
@playse storage="entershop.mp3"
[return]
