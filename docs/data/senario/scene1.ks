;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]

;メニューボタンの表示
@showmenubutton

;glink_config
;[glink_config show_time="1000" show_effect="fadeInUp" show_delay="100" show_easing="cubic-bezier(0.20, 1, 0.5, 1)" select_time="1000"  select_delay="500" select_keyframe="zoomFadeOut"  select_easing="cubic-bezier(0.20, 1, 0.5, 1)" reject_time="1000" reject_effect="fadeOutDown" reject_easing="cubic-bezier(0.20, 1, 0.5, 1)"]
;[glink_config show_time="700" show_effect="vanishIn" show_delay="100" show_easing="cubic-bezier(0.20, 1, 0.5, 1)" select_time="1000" select_delay="500" select_keyframe="zoomFadeOut" select_easing="cubic-bezier(0.20, 1, 0.5, 1)" reject_time="1000" reject_effect="fadeOutDown" reject_easing="cubic-bezier(0.20, 1, 0.5, 1)"]
[glink_config show_time="1000" show_effect="zoomInDown" show_delay="250" show_easing="cubic-bezier(0.20, 1, 0.5, 1)" select_time="1000" select_delay="500" select_effect="fadeOut" select_easing="cubic-bezier(0.20, 1, 0.5, 1)" reject_time="500" reject_effect="zoomOutDown" reject_easing="cubic-bezier(0.20, 1, 0.5, 1)"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true
;[add_theme_button]

@bg storage="black.jpg" time="100"

; 入店チャイム
@call target="sub_entershop" storage="first.ks"
#僕
（昼休み。オフィス近くのいつものお店）[p]
（レジに立っていたのは）[r]
（新人店員・のぞみちゃんだった）[p]

#
[cm]

;背景変更
@bg storage="bg_counter.jpg" time=500
@chara_show name="nozomi"

;**** for debug *****
;@jump target="punipuni"

#のぞみ
[dekamoji]いらっしゃいませ～[resetfont][p]

;BGM開始
@playbgm storage="candybouquet.mp3"

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

@playse storage="pi.mp3"
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

#のぞみ:kirari
これは大・大・大ちゃ〜〜んすっ！！！[p]
;しめじん消去
@hideitemslide

……ということで、[p]

*q1
#のぞみ:smile2
[dekamoji]お客様、当店のカードは【おもち】ですか？[resetfont]

;---
[choice text="いや、持ってないです…" target="*q1a"]
[choice text="はい、信玄餅™ですね" target="*q1b"]
[choice text="謙信餅をば所持つかまつりにて候" target="*q1c"]
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

#のぞみ:komari
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
#のぞみ:komari
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
[choice text="ごめんごめん、あまりに可愛くてつい" target="q2a"]
[choice text="きっとお腹すいてたんだね" target="q2b"]
[choice text="このお店のカードってお餅なんだ？" target="q2c"]
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

#のぞみ
……[p]

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
@playse storage="jajaan.mp3"
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
@playse storage="shupan.mp3"
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
;@jump storage="scene2.ks"

;
;ここで、閑話休題的に「のぞみちゃんのほっぺたぷにぷにイベント」
;
*punipuni
#のぞみ:komari
でも、「カードをおもちですか？」ってお尋ねすると、[r]
どうして「お餅ネタ」で擦られてしまうのでしょう？[p]

#僕
のぞみちゃん見てると、お餅を連想しちゃうんだよ[p]

のぞみちゃんのほっぺた[r]
お餅みたいだし[p]

#のぞみ:eee
えーーーーっ！？[p]

#僕
さわりたくなっちゃう❤
;---
[choice text="ほっぺたをつっつく" target="punic"]
[choice text="（イベントスキップ）" target="puniskip"]
[s]
;---
*puniskip
#僕
……いや、やめとくか…[p]
@jump target="gotoq3"

;----ぷにぷにイベント
*punic
#

@chara_hide name="nozomi" time=100
@bg storage="ivntpuni.jpg" time=500

[macro name="quakepuni"]
    @playse storage="petan.mp3" loop="true"
    @quake layer="all" count="6" time="2000" hmax="100" vmax="0" wait="false"
[endmacro]

[delay speed=200]
[quakepuni]
ぷにぷにぷにぷにぷに…[stopse][p]
[quakepuni]
ぷにぷにぷにぷにぷに…[stopse][p]
[quakepuni]
ぷにぷにぷにぷにぷに…[stopse][p]
[resetdelay]

#のぞみ
ひょっとぉ……[r]
ひゃめてくだひゃいよぉ〜～[p]

#僕
[delay speed=200]
[quakepuni]
ぷにぷにぷにぷにぷに…[stopse][p]
[resetdelay]

@playse storage="petan.mp3" loop="true"
@quake layer="all" count=20 time=1000 hmax=100 vmax=0 wait=false
ぷにぷにぷにぷにぷにぷにぷにぷにぷにぷにぷにぷに[r]
;ぷにぷにぷにぷにぷにぷにぷにぷにぷにぷにぷにぷに[r]
ぷにぷにぷにぷにぷにぷにぷにぷにぷにぷにぷにぷに[stopse][p]
[quakepuni]
ぷにぷにのラッシュだーーーーッ！！[stopse][p]

#

;
;パシッSE
@bg storage="bg_counter.jpg" time=500
@chara_show name="nozomi" face="ikari" time=100
@playse storage="tukkomi.mp3"
@quake layer="all" count=4 time=600 hmax=100 vmax=0 wait=false
#のぞみ
いい加減にしないと、カスハラで訴えますよ！[p]
新人店員だからと言って、あまりイジらないでくださいッ！[p]

*gotoq3
;@jump target="q3_s2" storage="scene2.ks"


;
;お客様、当店のカードはおもちですか？
;Q3-Q5　およびエンディング
;
*q3_start
; デュエルフラグを初期化（0 = 立っていない）
[eval exp="f.duel_flag = 0"]

;
;Q3
;
#のぞみ:komari
そうすると…[r]
お客様にお尋ねするときは、どのように言うといいでしょう？

[choice text="今のままでもいいと思うよ" target="q3a"]
[choice text="「当店のカードはお餅です」だよね！" target="q3b"]
[choice text="カードはお餅デ…デュエルしましょう！" target="q3c"]
[s]

;
*q3a
#僕
今のままでもいいと思うよ[p]

;のぞみ笑顔
#のぞみ:smile2
えっ……ほんとですか……？[p]

#僕
そんなに心配だったの？[p]

#のぞみ:serious2
わたし、新人ですから…[r]
ちゃんとしなくっちゃ！って…[p]

#のぞみ:shobon
なのに、いつもドジばかりで…[r]
カードがお餅だとか、勘違いさせたり…[p]

#僕
（ちょっと擦りすぎだったかな？）[p]
まあ、何事も経験だからね[r]
ちゃんとしてても、色々あるよ[p]

#のぞみ:tere2
そう言ってもらえると、嬉しいんですけど……[r]
ちょっと考えちゃうんですよね[p]

#僕
どういうこと？[p]

#のぞみ:komari
教えられたとおりにできれば、[r]
「ちゃんとできてる」なのかもしれないですけど[p]
…それだけじゃダメなのかなって[p]

#のぞみ:serious
せっかく毎日お店に来てくださる方もいるのに、[r]
きちんとお話できてるのかなって[p]

#のぞみ:shobon
どうやったらお客様と、本当の意味で心が通じ合えるのかな？[r]
……って、時々分からなくなるんです[p]

#僕
………[p]
@jump target="q4"

;----
;「当店のカードはお餅です」→焼成エンド
;----
*q3b
#僕
「当店のカードはお餅です」だよね！[p]

#のぞみ:serious2
…さようでございます。お客様…[p]

#僕
えっ！？[p]

;BGM停止
@stopbgm

#のぞみ:ikari
お客様がそこまで、お餅が好きならば！[r]
今からカードをお餅にいたしましょう！[p]

#僕
……のぞみちゃんが勝手に決めてもいいの？[p]

#のぞみ:serious
顧客満足度アップのためなら、なんでもやります！[p]
そして…[p]

*badend
;ドカーンSE、画面揺れ
@playse storage="dokan.mp3"
#のぞみ:smile2
@quake layer="all" count=5 vmax=100 time=500 wait="false"
[dekamoji]お客様にもお餅になってもらいます！！！[resetfont]
[p]

#僕
ちょ…ちょっと待っ…[p]

;背景が真っ白になる
;立ち絵がだんだんとぼけてくる
@bg storage="bg_badend.jpg" time=1000
@filter name="nozomi" blur=5
#のぞみ
オーダー入りましたぁ！！！[r]
お餅一丁ぉ！[p]

;さらにぼける
@filter name="nozomi" blur=10
ハイ、よろこんで〜！[p]

;もっとぼける
@filter name="nozomi" blur=20
あたためますね〜[p]

;真っ白
@chara_hide name="nozomi"

;SE
@playse storage="cheen.mp3"
@quake layer="all" count=2 vmax=100 time=500 wait="false"
#
チーン♪
[p]

;
;背景黒に変更
;
@bg storage="black.jpg" time=500
#のぞみ
番号札13番のお客様[r]
おまたせいたしました〜！[p]

あれ…？[p]

ああっ！このお餅、どうしましょう～～[p]

#
[cm]

;ゲームオーバー的SE
@playse storage="sousou3.mp3"
@layopt layer="message0" visible=false
[erasetext]
[disptext y=100 size=40 text="「お客様、お餅ですか？」"]
[disptext y=200 size=30 text="【焼成エンド・顧客満足度★★★★★】"]
[disptext y=300 size=20 text="※この後、スタッフがおいしくいただきました"]
@trans layer="0" time=1500
@wse
;エンド状況フラグ立て
[eval exp="localStorage.setItem('ends_flag', (parseInt(localStorage.getItem('ends_flag') || 0) | 1))"]

@jump target="gotomenu"



;---
;「カードはお餅デ…デュエルしましょう！、デュエルフラグが立つ
;
*q3c
#僕
カードはお餅デ…デュエルしましょう！[r]
…というのはどうかな?[p]

#のぞみ:eee
えーーーーっ！？[p]

#僕
いいかい？お店というのは…[p]
【おすすめの商品】と【お客の財布】をぶつけあう心理戦そのもの[p]
……つまり、[dekamoji]デュエル[resetfont]なんだよッ！[p]

@fadeoutbgm time=1000

せっかくカウンター越しに「お客と店員で対峙」するのなら…[p]
そして、このお店のカードがお餅なら…[p]

;ジャーンSE
@playse storage="jajaan.mp3"
[dekamoji]お餅を使ってデュエルすればいい！[resetfont][p]


#のぞみ:serious2
………！[p]
#のぞみ:kirari
な、なんだか面白そうですね！[p]
どんなルールにするか、一緒に考えませんか？[p]

#僕
（あれ？意外とノッて来たぞ？）[p]
;熱血END用BGM開始
@playbgm storage="zangyousenshi.mp3"

#のぞみ:smile2
そうですね…！[p]
お餅を順番に積み上げていって、先に崩してしまった方が負け！[p]

#僕
それジェンガだろ！[p]

#のぞみ:serious
お餅の粘り気を活用すれば、簡単には崩れない[p]

#僕
……そういう問題じゃなくって！[p]
お餅（カード）を出して、効果を使って、ポイントを奪い合うんだよ！[p]

たとえばさ…[r]
日本人にとってお餅って「ハレの日」の食事だよね[p]

だから…餅カードデッキを駆使して[r]
【めでたさポイント】をMAXにして…[p]
【最高におめでたい気持ち】になった方が勝ち！[r]
……とか[p]

#のぞみ:tere
ポイントカード要素も加味した素晴らしいアイデアですね！[p]
殺伐としたバトルTCGというよりは、[p]
和風世界のハートフルで斬新なゲームになると思いますっ！[p]

#僕
だろ？（ドヤ顔）[p]

;
@fadeoutbgm time=1000

#のぞみ:serious
タイトル思いつきました！[r]
日本の伝統を大切にする…[p]

@chara_mod name="nozomi" face="kirari"
;ジャーンSE
@playse storage="jajaan.mp3"
[dekamoji]餅闘の愛国者たち（ペイトゥ・ペイトリオッツ）！[resetfont][p]

#僕
（和風＆ハートフル要素はどこへ…？）[p]

#のぞみ:default
略して「ペイペイ」です！[p]
レジに「ペイペイ対応」って貼紙しておけば[p]
「店員とデュエルできる！」ってわかりますよね！[p]

#僕
（絶対誤解招くやつだ…）[p]

@playse storage="gaan.mp3"
#のぞみ:eee
…ああっ、いけない！[p]
#のぞみ:tere
あまりにも楽しそうだから、色々膨らんじゃいましたぁ[p]

#僕
お餅の話だけに[p]

#のぞみ
そうそう、膨らんじゃいます！[p]

#のぞみ:smile2
…って、[r]
ちゃんと仕事の話になってますよね？[p]

#僕
うん、どうすればお客がデュエル[r]
…じゃなくって、お店に来たくなるかってことだよね？[p]

@playbgm storage="candybouquet.mp3"

#のぞみ:serious2
はい……！[p]
ゲームだったら、こうやってすぐ勝利条件というか[p]
その世界での正解がわかりやすいじゃないですか？[p]

#僕
（僕が考えたんだけど…）[r]
そうだね[p]

#のぞみ:serious
それなのに、どうしたらお客様にとって[r]
お店に来るのが楽しい！とか[p]

居心地いいって感じてもらえるのかな？[p]
…っていうのは、わかりづらいじゃないですか[p]

#僕
……。[p]

#のぞみ
だから…[p]
だから、気になるんです[p]

; f.flag に 1 をセットする（デュエルエンドフラグ）
[eval exp="f.duel_flag = 1"]


;---
;Q4
;
*q4
#のぞみ:serious
私、お客様の心と向き合えているんでしょうか？

[choice text="少なくとも僕は、<br/>のぞみちゃんと話せて楽しいよ" target="q4a"]
[choice text="カードがお餅のお客には<br/>困っちゃうよね！" target="q4b"]
; --- 条件付きの選択肢 ---
[if exp="f.duel_flag == 1"]
    [choice text="デュエルしようぜ！それでわかるさ！" target="q4c"]
[endif]
[s]


*q4a
#僕
…いろんなお客さんがいるからね[p]

;のぞみ真顔
@chara_mod name="nozomi" face="komari"
全員の心と向き合えるわけじゃない[p]

@chara_mod name="nozomi" face="serious"
だから、正解があるわけでもないし[r]
悩んだりもする[p]
でも…[p]

少なくとも僕は…[p]
[dekamoji]のぞみちゃんがいると、この店に来るのが楽しいな[resetfont][p]

#のぞみ:default
……[p]

#僕
なんか偉そうなこと言っちゃったかな？[p]

#のぞみ:tere2
……いえ、[l][r]
ありがとうございます！[p]

#僕
（のぞみちゃん、ちゃんと仕事のことを考えてるんだな）[p]

（僕なんか、オフィスで適当にパソコンをカチャカチャやって）[p]

（上司に愚痴りながら、当たり障りのないパワポの資料を作って）[p]

（その向こうにいるお客さんと、こんなに向き合ったことがあっただろうか？）[p]

#のぞみ:serious2
あのっ……！[p]

#僕
んっ？[p]

#のぞみ:serious
「このお店に来るのが楽しい」って言ってくださるお客様に[r]
これからも店員としての私の成長を見てほしいんです！[p]

@jump target="q5"

;
*q4b
#僕
やっぱりさ…[r]
カードがお餅のお客には困っちゃうよね！[p]

#のぞみ:serious2
今までの私だったら、そうだったかもしれません[p]

@stopbgm

でも…決めたんです[r]
そのようなお客さんにも真摯に向き合うべきだと[p]

つまり、そこまでお餅を愛される方に応えるためには…[p]
@jump target="badend"



;-----
;デュエル熱血エンド
;-----
*q4c
#僕
[dekamoji]デュエルしようぜ！それでわかるさ！[resetfont][p]
[dekamoji]デュエルがすべてを解決するんだッ！[resetfont][p]

@stopbgm

#のぞみ:eee
………[p]
そう…ですね…[p]
#のぞみ:serious2
[dekamoji]デュエルを望まれるお客様にはデュエルを[resetfont][p]
それが、[dekamoji]【心と向き合う】[resetfont]ということなのかもしれません[p]

#僕
だろ？（ドヤ顔）[p]

#のぞみ:kirari
さきほどの「餅闘の愛国者たち（ペイトゥ・ペイトリオッツ）」[r]
もう少し考えませんか[p]

#僕
おう！[p]
おめでたい気分になるためのゲームだ[r]
景気よく行こうぜ！[p]

;熱血END用BGM開始
@playbgm storage="zangyousenshi.mp3"

#のぞみ:serious
まず、【鏡餅カード】というのはどうでしょう？[p]

#僕
いいぞ。お正月に飾って、めでたさ＋50ptsくらい？[p]

#のぞみ:smile2
能力は喉に詰まらせて死亡[p]

#僕
おめでたい気分台無しじゃねーか、しかも不謹慎だし[p]

#のぞみ
昇天するほどおいしいんです[p]

#僕
どっちにしろ救われてないじゃないか！[p]

#のぞみ:serious
次に、【桜餅】[p]

#僕
女の子の将来の幸せを願う素敵なカードだな[p]

#のぞみ:tere
ピンク色だからお色気担当[p]

#僕
……急にいかがわしさ120%になったな[p]

#のぞみ
葉っぱ一枚を身にまとった大胆で露出たっぷりのキャラテザで[r]
……能力は【色仕掛け】[p]

#僕
幸せMAXだと思ってたら、即死しかねないとか？[p]

#のぞみ:serious2
毒饅頭というやつです。お客様も気をつけてくださいね[p]

#僕
なんで妙にリアルな話になるんだよ！[r]
しかも餅のゲームに饅頭はいいのか？[p]

#のぞみ:serious
和風のゲームだからいいんです！[p]

#僕
都合のいいときだけ和風持ち出してるような…[p]

#のぞみ:smile2
そして、【太鼓持ち】[p]

#僕
ああ、お世辞やおべっか使う人のこと[r]
…って今度は餅ですらねえ![p]

#のぞみ:serious2
効果はベタ褒めしまくって[r]
強制的に【めちゃくちゃ晴れやかな超・おめでたい気分】にする[p]

#僕
即勝利だな[p]

#のぞみ:serious
誰もお世辞やゴマすりには勝てない[p]

#僕
なんで、ゲームバランスも世界観も太鼓持ちに壊されてんだよ![p]
………[p]
#
[cm]
@chara_hide name="nozomi" time=100
@fadeoutbgm time = 1000

;
@bg storage="black.jpg" time=500

このあと滅茶苦茶、餅カードゲーム開発した[p]

@wait time=500

――そして、この夏、[p]
餅カードゲーム[r]
【餅闘の愛国者たち（ペイトゥ・ペイトリオッツ）】は[p]
世界中で大ブームとなった[p]
@wait time=1000
[cm]

;勇壮なSE
@playse storage="mokuhyo.mp3"
@layopt layer="message0" visible=false
[erasetext]
[disptext y=100 size=40 text="「お客様、カードはお餅でデュエルしましょう！」"]
[disptext y=200 size=30 text="【熱血エンド・🔥MAX】"]
@trans layer="0" time=1500
@wse
;エンド状況フラグ立て
[eval exp="localStorage.setItem('ends_flag', (parseInt(localStorage.getItem('ends_flag') || 0) | 2))"]

@jump target="gotomenu"



;---
;Q5
;
*q5
#のぞみ:default
……ですから、[r]
こちらにお名前を…[p]

@showitemslide storage="img_appl.jpg"

#僕
[dekamoji]カード会員入会申込書！？[resetfont][p]

;のぞみ満面の笑顔
#のぞみ:tere2
これでもう、[r]
[dekamoji]カードはおもちですか？[resetfont]なんて聞かなくて済みます[p]

#僕
ははは…[r]
(のぞみちゃんらしいや…)[p]

それじゃあ…
[choice text="「🍄キノコ怪人しめじん」と書く" target="q5a"]
[choice text="僕の本名を書く" target="q5b"]
[s]

;-----
;キノコ怪人しめじんエンド
;-----
*q5a
#僕
「🍄キノコ怪人しめじん」[r]
……っと[p]

@hideitemslide

#のぞみ
………[p]

#のぞみ:ikari
【🍄しめじん】は、キノコ怪人なんかじゃありませんっ！[p]

#僕
じゃあ、【キノコ怨霊】[p]

;画面左右揺れ
;怨霊SE
;@playse storage=".mp3"
#のぞみ:niyari
@quake count=4 time=1000 name="nozomi" hmax=80 vmax=0 wait="false"
う～ら～め～し～や～っ！！[p]

#のぞみ:ikari
……って、それも違いますっ！[p]


;しめじん表示
#のぞみ:shobon
@showitemslide storage="shimejin_nui.jpg"
…【🍄しめじん】、こんなにかわいいのに…[p]

#のぞみ:tere2
ですから！【🍄しめじん】も頑張ってポイント貯めて[r]
しめじんさんをゲットしてくださいね[p]

#僕
……逆になってない？[p]

#のぞみ:eee
ああっ…[p]
どうして、そう紛らわしい名前なんですかッ！[p]

#僕
普通に「お客様」でいいから[r]
…恥ずかしいし[p]

#のぞみ:shobon
そう…ですか…[p]

#僕
それと……他に景品は無いの？[p]

#のぞみ:eee
えっ？[p]

#僕
もっと大事にしてくれる人にもらわれていった方がいいと思う[p]

#のぞみ:serious2
【100円商品券】とも交換できるんですが…[p]

;しめじん消去
@hideitemslide

#のぞみ:tere2
笑っちゃいますよね[p]

わたしが徹夜で作った、【🍄しめじん】のぬいぐるみ、[r]
100円と同じなんですよ[r]
ジュースも買えません[p]

#僕
（でも、100円の商品券の方が嬉しいかも！）[r]
（…と、からかう気にはならなかった）[p]

#
[cm]
@fadeoutbgm time=1000

;背景黒にする
@bg storage="black.jpg"

#のぞみ:default
ありがとうございましたーっ[p]

@chara_hide name="nozomi" time=500

#僕
（背中ののぞみちゃんは、ちょっと寂しそうに笑っていた気がした）[p]

#

[cm]
@wait time=500

#
それから数週間後―[p]
僕は職場での買い出しを頼まれたので例のお店に行くことになった[p]

;
;背景変更
@bg storage="bg_counter.jpg" time=500
@call target="sub_entershop" storage="first.ks"
#僕
（そういえば、せっかくポイントカード作ったのに）[r]
（全然来てなかったな…ははは…）[p]

@playbgm storage="candybouquet.mp3"

（レジに立っているのは、のぞみちゃん…）[r]
（…ではなくて、中年の男性だった）[p]

（店長かな？）[r]
（……ふと目があった）[p]

#店長
あ、のぞみちゃんだったら、[r]
事情があって…[p]
[dekamoji]地元に帰っちゃったんだ[resetfont][p]

@pausebgm

;
;ガーンSE
;画面反転、揺れ
@playse storage="gaan.mp3"
@filter layer="all" invert="100"
@quake count=3 time=600 vmax=50 wait="false"
#僕
えーーーーーーっ！？[p]
@filter layer="all" invert="0"
@free_filter layer="all"

@resumebgm

#店長
だから俺がレジ立たないとね[p]

えっと……、「🍄キノコ怪人」…さん？[p]
ポイントが一気に貯まったから、ウチの商品券と交換できるよ[p]

100円分だけだけどな[r]
悪いね[p]

#僕
（ずいぶんとアホな名前で登録しちゃったな）[p]
（…………）[p]
（……あれ？）[p]
（カウンターの奥に目をやると……）[r]
（見覚えのある【ぬいぐるみ】があった）[p]

;しめじん、中央に表示
@showcenteritem storage="shimejin_nui.jpg"

あ…あの…[r]
すいません……[p]

もし…なんだったら…[p]

（それを指さした）[p]

#

[cm]
@stopbgm

;
;時間をかけて背景黒に変更
;
@bg storage="black.jpg" time=3000
#僕
（今、僕の部屋にひとつのぬいぐるみが飾ってある）[p]
（それを見るたびに思うことがあるんだ）[p]
（もし、もういちど…）[p]
（もういちど、のぞみちゃんに会うことができたら言いたい）[p]
（……僕は「🍄キノコ怪人」なんかじゃない）[p]
（僕の名前は――）[p]
@hideitem

#
[cm]
@wait time=1000

;ちょっとせつないSE
@playse storage="wafu-syakuhachi.mp3"
@layopt layer="message0" visible=false
[erasetext]
[disptext y=100 size=40 text="「お客様、🍄キノコ怪人ですか？」"]
[disptext y=200 size=30 text="【想い出エンド・顧客満足度★☆☆☆☆】"]
@trans layer="0" time=1500

;エンド状況フラグ立て
[eval exp="localStorage.setItem('ends_flag', (parseInt(localStorage.getItem('ends_flag') || 0) | 4))"]
@wse
@jump target="gotomenu"


;-----
;Romance End
;-----
*q5b
#僕
…書けたよ[p]

@hideitemslide

#のぞみ:default
こうやって名前を書いてもらうと、なんだか不思議ですね[p]
お客様のこと、ちょっと身近に感じます[r]
【字】って、その人らしさが出るって言いますし[p]

#僕
そう？[p]
久しぶりに手書きで自分の名前を書いたんだけど[p]

#のぞみ:smile2
素敵な字とお名前だと思います！[p]

#僕
褒めすぎじゃない？[p]

#のぞみ:default
カードを作ってもらったときの[r]
トークマニュアルですよ！[p]

#僕
あはは、そんなのがあるんだ[p]

#のぞみ:tere
今自分で作りました！[r]
カード作ってもらったの初めてだから嬉しくて！[p]

#のぞみ:smile2
ちゃんと使ってくださいよ！[l][r]
@showitemslide storage="shimejin_nui.jpg"
ポイント貯めて【🍄しめじん】ゲットしてくださいね！[p]

#僕
【🍄しめじん】のぬいぐるみ…？[r]
他にはないの？[p]

#のぞみ:serious2
嫌ですか？[p]

#僕
えーと…[p]

#のぞみ:smile2
欲しいものがあったらリクエストしてくださいね！[p]

#僕
徹夜で作ったりしないよね？[p]

@hideitemslide

#のぞみ
できるだけすぐお応えしたいので！[p]

#僕
…じゃあ、また来るよ[r]
それまでに何か思いついたら……ね[p]

#
[cm]
@stopbgm

;
;黒背景
;
@bg storage="black.jpg" time=300
#のぞみ:default
ありがとうございましたーっ[p]
@chara_hide name="nozomi" time=500

#
[cm]
@wait time=500

#
次の日――[p]

;
;背景変更
;
@bg storage="bg_counter.jpg" time=1000
#僕
（昼休みにいつもの店に寄る）[l][r]
@call target="sub_entershop" storage="first.ks"
（レジには、のぞみちゃんがいた）[p]

@chara_show name="nozomi" face="default"

#のぞみ
[dekamoji]いらっしゃいませ――[resetfont][p]

;BGM開始
@playbgm storage="candybouquet.mp3"

#僕
あれっ？僕の名前覚えてくれてたんだ[p]

#のぞみ:smile2
あたりまえですよ！[r]
きちんとお客さんの心とも向き合うんですから！[p]

それに…私がカード作った初めての方ですし！[p]

…で、[r]
ちゃんと持ってきてますよね？カード[p]

;BGM停止
@stopbgm

#僕
…いや…[r]
カードなど持っていない…[p]

#のぞみ:eee
えーーーーっ！？[p]

;のぞみ真顔
@chara_mod name="nozomi" face="serious"

#僕
今、持っているのは……[p]



#

;
;餅の山表示
@chara_hide name="nozomi"
@showcenteritem storage="kirimochi_yama.jpg"

;画面揺れ
;ドーンSE
@playse storage="doon.mp3"
@quake count=3 time=800 vmax=100 wait="true"
#僕
[dekamoji]のぞみちゃんへの僕の【気持ち】だッ！！[resetfont][p]

#


;@chara_show name="nozomi" face="eee" left="300"
#のぞみ
これは…【お餅】ですか！？[p]

#僕
そうだッ[r]
今はわずかばかりだが、給料３ヶ月分の切餅だ！[p]

……受け取ってくれないか？[p]

#

@hideitem
@chara_show name="nozomi" face="serious"

#のぞみ:
……………
@wait time=500
[p]

;※照れ顔の立ち絵に差し替え
#のぞみ:hi
……はい
@wait time=1000
[p]

#
[cm]
@chara_hide name="nozomi"
;
;黒背景へ
@bg storage="black.jpg" time=2000

#
しばらく後――[l][r]
僕の家には、僕と同じ苗字になったのぞみちゃんのカードがあった[p]
@wait time=1000
[cm]

;ハッピーエンド的SE
@playse storage="victory.mp3"
@layopt layer="message0" visible=false
[erasetext]
[disptext y=100 size=40 text="「お客様、私をお持ちになりませんか？」"]
[disptext y=200 size=30 text="【ロマンスエンド・❤MAX!】"]
@trans layer="0" time=1500
@wse
;エンド状況フラグ立て
[eval exp="localStorage.setItem('ends_flag', (parseInt(localStorage.getItem('ends_flag') || 0) | 8))"]

@jump target="gotomenu"

*gotomenu
@wait time=2000
[showbackbtn]
[s]

;タイトルに戻る
*backtitle
@freeimage layer="0"
@layopt layer="0"

@jump storage="title.ks"
[s]