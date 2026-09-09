*start

[cm]
[clearfix]
[start_keyconfig]
[hidemenubutton]
@freeimage layer="0"

;debug
;@jump target="pv3"

;メッセージウィンドウの設定
[position layer="message1" left=300 top=100 width=1000 height=500 page=fore visible=false]

;文字が表示される領域を調整
[position layer=message1 page=fore margint="45" marginl="50" marginr="70" marginb="60"]

[macro name="start_explain"]
    ;@bg storage="black.jpg" time=500
    @layopt layer=message0 visible=false
    @mask color=#0 time=100
    @layopt layer=message1 visible=true
    @current layer=message1
    [delay speed=80]
    [font size=40 bold="true" color="#FFFFFF"]
[endmacro]

[macro name="end_explain"]
    [cm]
    [resetfont]
    [resetdelay]
    @layopt layer=message1 visible=false
    ;メッセージウィンドウの表示
    @layopt layer=message0 visible=true
    @current layer=message0
    @mask_off
[endmacro]

[popopo type="sine" frequency="A"]

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]
@bg storage="title.png"
@wait time=2500

@playse storage="entershop.mp3"
@wait time=2000
@playse storage="entershop.mp3"
@wse
;@wait time=2500

@start_explain
…から始める、たった５分(*)の[r]
ハートフル（？）コメディ[r]
[r]
[nowait][font size=16](*)プレイ時間には個人差があります[resetfont][endnowait]
@wait time=1000
@bg storage="bg_counter.jpg" time=100
@chara_show name="nozomi" time=100
@end_explain

*pv1
;**** for debug *****
;@jump target="punipuni"

;BGM開始
@playbgm storage="candybouquet.mp3"
#

#のぞみ
[dekamoji]いらっしゃいませ～[resetfont]
@wait time=1000

[cm]

;----
;pv1
;@chara_hide name="nozomi"
@start_explain
新人店員の「のぞみちゃん」が[r]
徹夜で作ってきたのは…
@wait time=1000
@chara_mod name="nozomi" face="tere"
@end_explain

*pv2
;@chara_show name="nozomi" face="tere"
;しめじん表示
@showitemslide storage="shimejin_nui.jpg"

#のぞみ
きのこの【🍄しめじん】♡[r]
…かわいいですよね！
@wait time=1500
[cm]

そして、なんとっ！
@wait time=1000
[cm]

#のぞみ:smile2
ポイントが貯まったら【🍄しめじん】がもらえちゃうんです！
@wait time=1500
[cm]

#のぞみ:kirari
これは大・大・大ちゃ〜〜んすっ！！！
@wait time=1500
#

[cm]

;しめじん消去
@layopt layer="1" visible="false"
@freeimage layer="1"
@wait time=1000

*pv3
@start_explain
ちょっと不器用な「のぞみちゃん」と[r]
会話して…
@wait time=1500
@chara_mod name="nozomi" face="default" time=100
@end_explain

;Pv3
#僕
（カードって）お餅なの？
@wait time=1000
[cm]

#のぞみ:eee
えーーーーーっ！！？
@wait time=1000
[cm]

@bg storage="bg_counter.jpg" method="rotateIn" time=1000
#のぞみ:coffee
;画面揺らし
@quake count=5 time=800 vmax=50 wait="false"
BOOOOOOOOOOOOOOOOOO!!!!!
@wait time=1200
[cm]

@chara_hide name="nozomi"
@bg storage="bg_counter.jpg" method="rotateIn" time=1000
@chara_show name="nozomi" face="shobon" time=100
#のぞみ
どうやったらお客様と、本当の意味で心が通じ合えるのかな？[r]
……って、時々分からなくなるんです
@wait time=1000
#

[cm]

@chara_hide name="nozomi"
@start_explain
……ほっぺたをぷにってみたり！？
@wait time=1000
@bg storage="ivntpuni.jpg" time=100
@end_explain

[macro name="quakepuni"]
    @playse storage="petan.mp3" loop="true"
    @quake layer="all" count="6" time="2000" hmax="100" vmax="0" wait="false"
[endmacro]

[delay speed=200]
[quakepuni]
ぷにぷにぷにぷにぷに…[stopse]
@wait time=1500
[cm]

;[quakepuni]
;ぷにぷにぷにぷにぷに…[stopse][p]

@start_explain
四種類のエンドを探してみてください！
@wait time=1000
@bg storage="bg_counter.jpg" time=100
@chara_show name="nozomi" face="smile2" time=100
@end_explain

;
;pv
#のぞみ
…で、[r]
ちゃんと持ってきてますよね？カード
;BGM停止
@fadeoutbgm time=1000
@wait time=200
[cm]

#僕
…いや…[r]
カードなど持っていない…
@wait time=1000
[cm]

;のぞみ真顔
@chara_mod name="nozomi" face="serious"

#僕
今、持っているのは……
@wait time=1000
#

[cm]
@chara_hide name="nozomi"
@layopt layer=message0 visible=false
@bg storage="black.jpg"
;@mask color=#0 time=100
[ptext layer="0" x=0 y=200 width="&TYRANO.kag.config.scWidth" align="center" size=40 text="どうしてこうなった？" color="0xFFFFFF"]
;画面揺れ
;ドーンSE
@playse storage="doon.mp3"
@quake count=3 time=800 vmax=100 wait="true"
@wse
@wait time=500

;@layopt layer="message0" visible="false"
@freeimage layer="0" page="fore"

@bg storage="title.png" time="1000"
[ptext layer="0" x=0 y=550 width="&TYRANO.kag.config.scWidth" align="center" size=50 bold="true" text="ゲーム実況大歓迎！！" color="0x222266"]
@wait time=2000
[s]