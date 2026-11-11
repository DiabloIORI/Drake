
// Drake-Kale 1
CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Global("CrossDrakeKale","LOCALS",0)~ THEN X3KaleB KaleDrakeBanter1
~你确定自己是骑士？老兄，你盔甲可不够亮。~
DO ~SetGlobal("CrossDrakeKale","LOCALS",1)~
== BC0Drake ~也许吧。你要是不顺眼，欢迎来当我的临时侍从，擦甲的活就交给你。~
== X3KAleB ~嘿，我可不打下手——等等，你是在开玩笑吧？~
== BC0Drake ~我就不能开个无伤大雅的玩笑？~
== X3KAleB ~嗤，我见过的骑士连句笑话都讲不出来，更别说挨人一句玩笑。~
== BC0Drake ~一个会讲笑话、盔甲还发暗的骑士……我知道，够惊世骇俗。~
== X3KAleB ~接下来是不是要张嘴骂街了？~
== BC0Drake ~朋友，你还没见过我灌下三杯森比亚龙息酒之后的样子。~
== X3KAleB ~呵呵，那我可得见识见识。德雷克，你还真不赖。~
EXIT 

// Drake-Kale 2
CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
Global("CrossDrakeKale","LOCALS",1)~ THEN X3KaleB KaleDrakeBanter2
~又盯着我看，教堂佬？在盘算我包里还有没有半身人麦酒？~
DO ~SetGlobal("CrossDrakeKale","LOCALS",2)~
== BC0Drake ~我可不反对这主意，不过就你这胃口，瓶子怕早就见了底。~
== X3KAleB ~是，你猜得没错。不是针对你，老兄，我打完仗喊得多，就是渴得慌。~
== BC0Drake ~不管是因为喊阵还是祷告，要润干嗓子，没有比一杯浓烈好酒更醉人的香气了，你说是不是？~
== X3KAleB ~跟你们那些花哨的酒比，一杯上好的半身人烈性黑啤，从头顶暖到脚底。不过你倒有品味。你抽烟斗吗？~
== BC0Drake ~年少时抽过。不过我父亲很爱你们族人的烟草。我自己觉得那味儿实在难闻……考虑到我在跟谁说话，冒犯之处还请包涵。~
== X3KAleB ~哎，不介意。至少你没拿我个子说事。~
== BC0Drake ~说不定我正要说到那儿。~
== X3KAleB ~别提那茬，长腿佬。~
EXIT 
