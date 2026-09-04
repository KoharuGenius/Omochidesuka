*start

[cm]
[clearfix]
[start_keyconfig]

[bg storage="black.jpg" time="100"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;
; 入店チャイム
;
@call target="sub_entershop" storage="first.ks"
#僕
（昼休み。オフィス近くのいつものお店）[p]
（レジに立っていたのは）[r]
（新人店員・のぞみちゃんだった）[p]

#
[cm]

;
;背景変更
@bg storage="bg_counter.jpg" time=500
;
@chara_show name="nozomi"

;**** for debug *****
;@jump target="q1c"

#のぞみ
[dekamoji]いらっしゃいませ～[resetfont][p]

;BGM開始
@playbgm storage="candybouquet.mp3" volume=25

#僕
（手早く昼飯をカゴに入れて、レジに持っていく）[p]

#のぞみ:serious
ええっと…[p]
この焼きそばパンのバーコードはぁ…[p]
#のぞみ:smile2
あった、あった！[p]

@playse storage="pi.mp3"
ピッ[p]

…【10万158円】！[p]

#僕
なんだその悪魔的金額は…！[p]

#のぞみ:serious
このコーヒーはぁ……[p]
………[p]
ピッ[p]
#のぞみ:smile2
…【3.14151426……円】！[p]

#僕
うんうん、円だけに丸くおさまって…[r]
…ねえだろ！[p]


#のぞみ
消費税の計算ってめんどくさいんですよねー[p]

#僕
そういう問題か？[p]

#のぞみ:serious
じゃあ、四捨五入して【０円】！[p]

#僕
…悪いな[p]

#のぞみ:smile2
あっ、そうそう！見てもらいたいものがあるんです！[p]
お店のマスコットのぬいぐるみができたんですよ～！[p]

#僕
へえ…[p]

;しめじん表示
@showitemslide storage="shimejin_nui.jpg"

#のぞみ:tere
わたしが徹夜で作りました！[p]
きのこの【🍄しめじん】♡[r]
…かわいいですよね！[p]

#僕
（軽くホラーだな…💦）[p]
…悪いが、僕は【たけのこ派】なんだ…[p]

#のぞみ:eee
えーーーーーっ！！?[p]
#のぞみ:serious2
で…でもぉ、きっと満足していただけると思いますっ！[p]

そして、なんとっ！[l][r]
#のぞみ:smile2
ポイントが貯まったら【🍄しめじん】がもらえちゃうんです！[p]

#のぞみ:serious2
これは大・大・大ちゃ〜〜んすっ！！！[p]
;しめじん消去
@hideitemslide

……ということで、[p]

*q1
#のぞみ:smile2
[dekamoji]お客様、当店のカードは【おもち】ですか？[resetfont]

;---
[choice text="いや、持ってないです…" target="q1a" y=100]
[choice text="はい、信玄餅™ですね" target="q1b" y=200]
[choice text="謙信餅をば所持つかまつりにて候" target="q1c" y=300]
[s]
;---

;
;「持ってない」選択
;
*q1a
[macro name="mochiquake"]
    @playse storage="dong.mp3"
    @quake count=2 time=600 vmax=50 wait="false"
[endmacro]
#僕
いや、持ってないです…[p]

#のぞみ:serious2
さようでございましたかっ！[p]
#のぞみ:default
…それなら、お作りしましょうかぁ？[p]

#僕
お餅を？[p]

#のぞみ:eee
えーーーーーっ！！？[p]

#僕
手伝うからさ！[p]
僕が杵（きね）を持つから、のぞみちゃんは臼の方を…[p]

#のぞみ:serious2
はいっ！[p]

#僕
そぉ～～れぇ～～！[p]
;画面揺れ
はぁ～～～～[l][r]
@mochiquake
ぺったん！
@wait time=800
@mochiquake
ぺったん！
[p]

;画面揺れ
#のぞみ
@mochiquake
ぺったん！
@wait time=800
@mochiquake
ぺったん！
[p]

;画面揺れ
#僕
@mochiquake
ぺったん！たんた♪
@wait time=800
@mochiquake
文字ぺったん♪
[p]

;画面揺れ
#のぞみ
@mochiquake
ぺったん！たんた♪…って[l][r]
お客様、いつの時代のゲームですか？[p]
落ち着いてくださいよ！[p]

#僕
[dekamoji]餅ついてるよ！[resetfont][p]

@jump target="q2"

;
;信玄餅選択
;
*q1b
#僕
信玄餅™のことですね[p]

#のぞみ:smile2
はい、きなこと黒蜜のハーモニーが絶妙な…[l][r]
#のぞみ:ikari
そう～じゃなくて～！[p]
当店の[dekamoji]ポイントカード[resetfont]のことですよ！[p]

#僕
だったら信玄餅™でも良かろう！[p]

;「ガーンSE」
@playse storage="gaan.mp3"
#のぞみ:eee
えーーーーっ！?[p]

#僕
財布の中にある数多（あまた）な聖片の蠢きの中から、[r]
意中の一枚を召喚せんとの疾（はや）きことは[dekamoji]風[resetfont]の如く！[p]

#のぞみ:serious
…たしかに、違うお店のカードとは間違えなさそうですね[p]

#僕
店員に聞かれる前に、颯爽と取り出す徐（しず）かなる様は[dekamoji]林[resetfont]の如く！[p]

#のぞみ
そうしていただけるとわたしも助かるんですが…[r]
ひょっとして[dekamoji]火[resetfont]と[dekamoji]山[resetfont]も続くんですか？[p]

#僕
[dekamoji]人[resetfont]という漢字はだな…[p]

#のぞみ:ikari
それ武田違い！[r]
…っていうか、いつの時代のドラマですか！[p]

@jump target="q2"


;
;謙信餅選択
;
*q1c
#僕
謙信餅をば、所持つかまつりにて候[p]

#のぞみ:mg10
？？？[p]

#僕
信玄餅があるなら、謙信餅があっても良いと思わないか！[p]

#のぞみ:shobon
ごめんなさい[r]
わたし、生物の授業はニガテだったんですぅ…[p]

#僕
（人物のことだから、生物で学ぶこともあるのだろう…）[p]
…ともかく[r]
謙信餅があったら新潟県民も喜ぶに相違なく候[p]

#のぞみ:mg10
笹団子の立場は…[p]

#僕
まあ、百聞は一見に如かずだ[r]
召されてみよ[p]

#のぞみ:serious2
あ、はい……[l][r]
もぐもぐ…[p]
;反転
;ガーンSE
@filter name="nozomi" invert=100
………！！！……！[p]
;反転戻し
@filter name="nozomi" invert=0
@free_filter layer="all" name="nozomi"
#のぞみ:shobon
ナニコレ？しょっぱ～い！！！[p]

#僕
「敵に塩を送る」というやつだ！[p]

#のぞみ
わたし、敵さん扱いですかぁ～🥺[p]
塩分過多で高血圧になってないか、[r]
検診受けたいです～[p]

#僕
ケンシン餅だけにな！[r]
…って、やかましいわ！！[p]


;
; Q2
;
*q2
#のぞみ:shobon
うぅ…わたし、何かヘンなこと言いましたか？

;---
[choice text="ごめんごめん、あまりに可愛くてつい" target="q2a" y=100]
[choice text="きっとお腹すいてたんだね" target="q2b" y=200]
[choice text="このお店のカードってお餅なんだ？" target="q2c" y=300]
[s]
;---

;
;かわいくてつい…を選択
;
*q2a
#僕
ごめんごめん、あまりに可愛くてつい…[p]

#のぞみ:eee
えぇーーーー[p]

#のぞみ:tere
可愛いだなんて（////）[r]
冗談言わないでくださいよぉ～[p]

#僕
…………[p]

#のぞみ
そっ、そんなに見つめないでください…[p]
@quake name="nozomi" count=2 time=900 hmax=50 vmax=0 wait="false" 
ドキドキして…[l][r]
恥ずかしい…です…[p]

#僕
いや、【🍄しめじん】の方だよ[p]

;画面揺れ
#のぞみ:mg10
@quake name="nozomi" count=5 time=500 hmax=0 vmax=50 wait="false" 
ヽ(・ω・)/ｽﾞｺｰ[p]

#のぞみ:tere2
なんだぁ…[r]
はははは…[p]

ほっ、ほんとにかわいいですよね！[r]
【🍄しめじん】って！[p]
徹夜で作った甲斐がありました！[p]

#僕
あまり無理するとお肌に悪いよ[p]

#のぞみ:serious2
でもっ！[l][r]
;しめじん表示
@showitemslide storage="shimejin_nui.jpg"

【🍄しめじん】はポイントカードの景品ですからね！[p]

#のぞみ:serious
今はあげませんよっ！[p]

#僕
欲しいって言ってないよ[p]

#のぞみ:shobon
……だけど【🍄しめじん】、[r]
いつかは誰かにもらわれていっちゃうのかなぁ…[p]

#僕
大事にしてくれる人の所に行くといいね[p]

;しめじん消去
@hideitemslide
#のぞみ
はい…[p]

#僕
じゃあ、僕はカード作らない方がいいのかな？[p]


@jump target="q3"



;
;きっとお腹すいてたんだねを選択
;
*q2b
#僕
きっとお腹すいてたんだね[r]
だから、カードのことをお餅だと思ってしまったんだ[p]

#のぞみ:tere2
はい…今はダイエット中で…つい…[l][r]
#のぞみ:ikari
そうーじゃなくてーーー！！[p]

#僕
あまり、無理しない方がいいよ[r]
食べたいときはちゃんと食べた方が…[p]

#のぞみ:kirari
[dekamoji]ですよね～[resetfont][p]

あ、ちょうどここに食べ物が[p]

パクッ[l][r]
#のぞみ:tere2
もぐもぐ……[p]

#僕
ボクノ…[r]
ヒルメシ…[p]

;ガーンSE,反転
@chara_mod name="nozomi" face="mg10"
@playse storage="gaan.mp3"
@filter name="nozomi" invert=100
#のぞみ
もっ、申し訳ありませんッ；；；[p]
お客様のやきそばパン、食べてしまいましたっ！[p]

…って[r]
うぅ…喉に…[p]

の……、飲み物…[p]
@filter name="nozomi" invert=0
@free_filter layer="all" name="nozomi"
#のぞみ:serious2
あった！[r]
ゴクゴクゴク…[p]

#僕
ボクノ…[r]
Coffee…[p]

#のぞみ:coffee
;画面揺らし
@quake count=5 time=800 vmax=50 wait="false"
BOOOOOOOOOOOOOOOOOO!!!!![p]

#のぞみ:shobon
こっ、コーヒー吹いちゃいました！[p]
ほんとにほんとに×256 もーしわけありませんッ！[p]

#僕
10万158円だったよね？[p]

#のぞみ:serious
ポイントで還元させていただきますので！[p]

#僕
…………[p]

#のぞみ:default
[dekamoji]お客様、当店のカードはおもちですか？[resetfont][p]

#僕
永久ループかよ！[p]

@jump target="q3"

;
;このお店のカードってお餅なんだ？を選択
;
*q2c
#僕
このお店のカードってお餅なんだ？[p]

#のぞみ:ikari
ちっ…、ちがいますよぉ～！[p]
れっきとした【プラスチックのカード】です！[p]

#僕
それでいいのか？[p]

#のぞみ:serious2
どういうことでしょう？[p]

#僕
今はサステナブル社会を目指し、[r]
脱プラスチックが叫ばれている時代じゃないかッ！[p]

…だから[l][r]
[dekamoji]ポイントカードも餅にすればいい！[resetfont][p]

#のぞみ:eee
えーーーーっ！？[p]

#僕
餅は保存食だ[r]
いざという時や特別な時に使えばいい！[p]
まさにポイントカードの思想だと思わないかね？[p]

#のぞみ:serious
……お餅でもいい気がしてきました[p]

#僕
だろ？（ドヤ顔）[p]

#のぞみ
はい！[r]
店長に提案してきます！[p]

@chara_hide name="nozomi"

#主人公
えっ！？[p]
………。[p]

@chara_show name="nozomi" face="shobon"
#のぞみ
……却下されちゃいましたぁ～[p]

#僕
だろうな[r]
社会とはそういうものだよ。のぞみクン[p]

#のぞみ:serious
でも、私が徹夜でお餅カードのサンプルを作れば[r]
店長も考え直してくれるかも……[p]

#僕
……ごめん[p]
僕が擦りすぎた[p]

#のぞみ:smile2
い…いえいえ！[r]
私もお客様からの貴重なご意見だと思いましたから！[p]


*q3
@jump storage="scene2.ks"

;
;ここで、閑話休題的に「のぞみちゃんのほっぺたぷにぷにイベント」
;余力がなければカット
;
*punipuni
#のぞみ
でも、「カードをおもちですか？」ってお尋ねすると、[r]
どうして「お餅ネタ」で擦られてしまうのでしょう？[p]

#僕
のぞみちゃん見てると、お餅を連想しちゃうんだよ[p]

のぞみちゃんのほっぺた[r]
お餅みたいだし[p]

#のぞみ
えーーーーっ！？[p]

#僕
さわりたくなっちゃう❤[p]

ぷにぷにぷにぷに…[p]
ぷにぷにぷにぷに…[p]
ぷにぷにぷにぷに…[p]

#のぞみ
ひゃだぁ[r]
くすぐったいですぅ～[p]

#僕
ぷにぷにぷにぷに…[p]
ぷにぷにのラッシュだーーーーッ！！[p]

;
;パシッSE
#のぞみ
いい加減にしないと、カスハラで訴えますよ！[p]
新人店員だからと言って、あまりイジらないでくださいッ！[p]

[s]