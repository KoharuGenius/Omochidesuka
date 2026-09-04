
[cm]

@clearstack
;@bg storage ="title.jpg" time=100
@bg storage ="bg_badend.jpg" time=100
@wait time = 200

*start 

;[button x=135 y=230 graphic="title/button_start.png" enterimg="title/button_start2.png"  target="gamestart" keyfocus="1"]
;[button x=135 y=320 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" keyfocus="2"]
;[button x=135 y=410 graphic="title/button_cg.png" enterimg="title/button_cg2.png" storage="cg.ks" keyfocus="3"]
;[button x=135 y=500 graphic="title/button_replay.png" enterimg="title/button_replay2.png" storage="replay.ks" keyfocus="4"]
;[button x=135 y=590 graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="config.ks" keyfocus="5"]
[glink x=500 y=550 color="btn_01_yellow" text="GAME START" target="gamestart"]

[iscript]
// 1. localStorage からフラグ値（数値）を取得
let flag = parseInt(localStorage.getItem('ends_flag') || 0);

// 2. 各エンドの達成判定（ビット論理積 &）を行い、達成数をカウント
let clearCount = 0;
if (flag & 1) clearCount++; // END 1 達成
if (flag & 2) clearCount++; // END 2 達成
if (flag & 4) clearCount++; // END 3 達成
if (flag & 8) clearCount++; // END 4 達成

// 3. 達成数に応じて ★ と ☆ の文字列を生成（例: 2種類達成なら ★★☆☆）
tf.end_stars = '★'.repeat(clearCount) + '☆'.repeat(4 - clearCount);

[endscript]

; --- 画面に★を表示 ---
@freeimage layer="0"
@layopt layer="0" visible="true"
[ptext layer="0" x=200 y=400 name="star_text" text="&'エンド達成状況：' + tf.end_stars" size=30 color="brown"]
[ptext layer="0" x=200 y=450 text="※エンド達成状況のリセットは、お使いのブラウザの機能から「サイトデータの削除」を行ってください。" size=20 color="brown"]
[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@freeimage layer="0"
;@jump storage="scene1.ks"
@jump storage="scene2.ks"



