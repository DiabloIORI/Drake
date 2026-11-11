CHAIN IF ~InParty("V#1WHI")
See("V#1WHI")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("V#1WHI",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeWhite1","GLOBAL",0)~ THEN V#1WHIB C0DrakeWhite1
~所以……你喜欢锤子，对吧？~
DO ~SetGlobal("C0DrakeWhite1","GLOBAL",1)~
== BC0Drake ~在战场上我觉得它们挺合手，是。我猜你也认可？~
== V#1WHIB ~哦，是。我更喜欢又钝又沉、能砸断骨头的东西。实际上，两个。不一定非得是锤子，钉头锤也不错。我从不太喜欢剑。总觉得它们被吹过头了。~
== BC0Drake ~嗯。我想我们这点品味倒是一致。很有见地，怀特。~
== V#1WHIB ~对……“品味”，这说法不错。我承认，我不太喜欢牧师。你们这类人里狂热信徒太多了，可你？你还不赖。至少你挑武器的眼光不错。~
== BC0Drake ~这话有重点吗，怀特，还是你就喜欢时不时来点“武器闲谈”？~
== V#1WHIB ~差不多吧。你看上去挺享受的。~
== BC0Drake ~对……我只是好奇，我们这关于手边钝器的谈话，什么时候会突然转到另一种钝器上去。这是不是某种含蓄的暗示，怀特？要真是，我得说你还得练练。含蓄可不是你的长处。~
== V#1WHIB ~呵，信不信由你，我还真没往那儿想。不过既然你提了……~
== BC0Drake ~改天吧。很久以后的某天，事实上。说来也许你会吃惊，我宁愿关于我腰带底下那些家伙的谈话就留在那儿。现在，我们能不能把这尴尬话题放下？~
EXIT

CHAIN IF ~InParty("V#1WHI")
See("V#1WHI")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("V#1WHI",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeWhite2","GLOBAL",0)~ THEN V#1WHIB C0DrakeWhite2
~你这身伤疤不错，德雷克。我奇怪怎么没有一群女人排队来数、来摸。也许还有几个男人。她们就吃你那副阴郁、硬邦邦的气场。~
DO ~SetGlobal("C0DrakeWhite2","GLOBAL",1)~
== BC0Drake ~……对。~
== V#1WHIB ~更别提那把胡子。呵。我敢说你回老家准是个伤人心的主儿。~
== BC0Drake ~我真该找天把胡子刮了。我宁愿没人因我伤心，虽说这话听着挺顺耳。~
== V#1WHIB ~谁的心，德雷克？女人的，还是男人的？~
== BC0Drake IF ~Global("WhiteRomanceActive","GLOBAL",2)~ THEN ~你不想知道吗。不过我敢说你的心不在此列，反正你的注意力全在我们亲爱的队长身上。~
== BC0Drake IF ~!Global("WhiteRomanceActive","GLOBAL",2)~ THEN ~你不想知道吗。~
== V#1WHIB ~我就是好奇。~
== BC0Drake ~只是好奇？我若说我难信，还请见谅。~
== V#1WHIB ~是真话。你以为我心里还想着别的？~
== BC0Drake IF ~Global("WhiteRomanceActive","GLOBAL",2)~ THEN ~也许。我原以为你觉得一个男人不足以在寒冷孤寂的夜里陪你作伴。~
== BC0Drake IF ~!Global("WhiteRomanceActive","GLOBAL",2)~ THEN ~也许。我原以为你夜里裹着睡袋时有点孤单，懂我意思吧。~
== V#1WHIB IF ~Global("WhiteRomanceActive","GLOBAL",2)~ THEN ~这话真刻薄，德雷克。不，信不信由你，跟着<CHARNAME>我就够快活了。我只是想着你我能不能开几壶麦酒，各讲一两个故事。不必再往下走。我知道界线在哪儿。~
== V#1WHIB IF ~!Global("WhiteRomanceActive","GLOBAL",2)~ THEN ~这话真刻薄，德雷克。不，信不信由你，我一点也没打算勾引你。我只是想着你我能不能开几壶麦酒，各讲一两个故事。不必再往下走。我知道界线在哪儿。~
== BC0Drake ~是这样吗？那我大概是看错你了。好吧。既然你要的是麦酒和作伴，我就陪你，算是赔罪。只是别指望我跪在你面前求原谅。那是留给神的。~
== V#1WHIB ~呵。想都不敢想。~
EXIT