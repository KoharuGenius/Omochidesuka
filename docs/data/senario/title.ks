
[cm]

@clearstack
@bg storage ="title.jpg" time=100
@wait time = 200

*start 
;[playbgm storage="candybouquet.mp3"]

;[button x=135 y=230 graphic="title/button_start.png" enterimg="title/button_start2.png"  target="gamestart" keyfocus="1"]
;[button x=135 y=320 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" keyfocus="2"]
;[button x=135 y=410 graphic="title/button_cg.png" enterimg="title/button_cg2.png" storage="cg.ks" keyfocus="3"]
;[button x=135 y=500 graphic="title/button_replay.png" enterimg="title/button_replay2.png" storage="replay.ks" keyfocus="4"]
;[button x=135 y=590 graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="config.ks" keyfocus="5"]
[glink x=500 y=450 color="btn_03_yellow" text="GAME START" target="gamestart"]

*showends
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
@image storage="black.jpg" layer="0" page="fore" visible="true" x="300" y="550" width="600" height="150" name="my_box"
@filter name="my_box" opacity=70
[ptext layer="0" x=320 y=570 name="star_text" text="&'エンド達成状況：' + tf.end_stars" size=30 color="white" shadow="0x888888"]
[glink x=400 y=620 color="btn_05_yellow" text="エンド達成状況リセット" target="do_reset"]
[ptext layer="0" x=400 y=650 text="↑確認画面は出ません(笑)慎重に↑" size=15 color="white"  shadow="0x888888"]
[s]

; --- エンド達成処理削除実行処理 ---
*do_reset
[eval exp="localStorage.removeItem('ends_flag')"]
@jump target="showends"

*gamestart
@filter name="my_box" opacity=100
@free_filter layer="all"
@stopbgm
;一番最初のシナリオファイルへジャンプする
@freeimage layer="0"
@jump storage="scene1.ks"
@jump storage="scene2.ks"
