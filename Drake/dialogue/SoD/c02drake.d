// First meeting

BEGIN C02DRAKE

CHAIN IF WEIGHT #-1 ~Global("C02DrakeBegin","GLOBAL",1)~ THEN C02DRAKE j
~得了，南特林，我总不至于把你库存都喝干了。我那酒壶哪儿去了？麻烦再来一盏。~
DO ~SetGlobal("C02DrakeBegin","GLOBAL",2)~
== BDNANTRI ~不，我当然不乐意。一滴也不给了，德雷克。你已经喝得够多，更别说你明天还有漫长的一天。~
== C02DRAKE ~*哼* 别提醒我。我看一两天后，我既没这么好喝的酒，也没这么讨人喜欢的伴。你总该同情我吧？~
== BDNANTRI ~不同情。去睡醒酒。顺便把头埋进雨水桶里泡一泡。~
== C02DRAKE ~抠门混蛋……我在老家从没见过真替客人着想的掌柜，他们都只盯着客人口袋里的金子。等我回安姆，我一定……啊。瞧瞧是谁来了。~
END
++ ~看来你又在干你的老本行，德雷克。~ DO ~SetGlobal("C02DrakeKnowsBG1","GLOBAL",1)~ + j1
+ ~!BeenInParty("C02Drake")~ + ~我认识你吗？~ + j2

CHAIN C02DRAKE j0
~随你。有空再来。不过我打赌我们多半很快还会再见。~
EXIT

CHAIN C02DRAKE j1
~哈！我要不这样，那还叫德雷克？来，坐下。我有一两句话要跟你说。~
DO ~ClearAllActions() StartCutsceneMode() StartCutscene("c02dcut1")~ EXIT

CHAIN C02Drake j2
~也许不认识我。可我认识你——<CHARNAME>，活着的那位传奇<PRO_HIMHER>本人。你来了我很高兴。~
= ~来，坐下，朋友。我有一两句话要跟你说。~
DO ~ClearAllActions() StartCutsceneMode() StartCutscene("c02dcut1")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C02DrakeBegin","GLOBAL",2)~ THEN C02DRAKE j3
~啊！这店里的劣酒跟安姆的佳酿差得远，可我喝过更糟的。~
DO ~SetGlobal("C02DrakeBegin","GLOBAL",3)~
= ~那跟我说说——博德之门的英雄怎么来这种喧闹堕落的所在？你不嫌我们这些平民太低？~
END
+ ~Global("C02DrakeKnowsBG1","GLOBAL",1)~ + ~我来见几个老朋友。这你有意见？~ + j4
+ ~Global("C02DrakeKnowsBG1","GLOBAL",1)~ + ~你这么取笑我，有什么缘故吗，我的朋友？~ + j4
+ ~!Global("C02DrakeKnowsBG1","GLOBAL",1)~ + ~你是谁？~ + j5
++ ~你知道，我看我这会儿该去别处。失陪。~ + j0

CHAIN C02DRAKE j4
~哈！没有，一点没有。只是知道我在同辈里还被人记着，挺好。虽说这会儿我没法自称跟你是同辈。~
== C02DRAKE IF ~BeenInParty("Ajantis") !Dead("Ajantis")~ THEN ~铁王座那档子事完了没多久，我就跟咱们老朋友阿詹提斯分了手。他这会儿大概已经一路回到阿斯卡特拉了，除非路上又找着别的邪恶去打。我建议他趁这工夫松快松快、暂且放下骑士团的差事，可，嗯……你跟我一样了解他。~
== C02DRAKE ~说笑归说笑，在这儿见到你我很高兴。我还以为宫里日子把你养得太舒服了。~
END
++ ~也没那么舒服。我今天刚躲过一场暗杀。~ + j4.1
++ ~你呢？近来怎么样？~ + j4.2
++ ~我还以为你这会儿该走到安姆半路了。怎么还在这儿？~ + j4.3

CHAIN C02DRAKE j4.1
~这么快？我倒不怎么吃惊。关于你的传闻传得到处都是。~
END
++ ~什么传闻？~ + j4.4

CHAIN C02DRAKE j4.2
~哦，好极了。我给光辉之心骑士团的报告，要信他们的回话，还挺受赏识。从那以后我就窝在这城里，跟本地人交朋友。对吧，南特林？~
== BDNANTRI ~*喷鼻*~
== C02DRAKE ~当然，这还不是我迟迟不回家的唯一原因。事实上，我留在博德之门有个大得多的理由。~
END
++ ~是什么？~ + j8

CHAIN C02DRAKE j4.3
~这我还没解释过吧？嗯，说实话，骑士团对我在这北方的作为相当满意，他们乐意让我留在这儿跟本地人打交道。比方说我这位新朋友。~
== BDNANTRI ~*喷鼻*~
== C02DRAKE ~当然，这还不是我迟迟不回家的唯一原因。事实上，我留在博德之门有个大得多的理由。~
END
++ ~是什么？~ + j8

CHAIN C02DRAKE j4.4
~别告诉我你什么都没听说，<CHARNAME>。“萨雷沃克找那个<CHARNAME>要干什么？”“他真是神的儿子？”“<CHARNAME>打败他，是因为他们有同样的血？”~
= ~嗯……你能看出事情会往哪儿发展。尤其是最近不知从哪儿冒出来的这场圣战……人人都疑神疑鬼。真是一团乱。我能想出一两个人，巴不得看你去地狱跟你哥哥团聚。~
END
++ ~有意思，可你弄错了。袭击我的是圣战军。~ + j4.5

CHAIN C02DRAKE j4.5
~是吗？那我倒没料到……我想不出像光明女士那样的人会用刺客。要真是这样，那我接下来要说的也许跟你有关。~
EXTERN C02DRAKE j8

CHAIN C02DRAKE j5
~怎么，我漏了自我介绍这一段？真没礼貌。~
= ~我叫德雷克。考尔菲尔德家的德雷克，提尔的牧师，光辉之心骑士团的宣誓成员。这名字你也许听过？我不吃惊。我们在诸国度颇有影响。我看这是我们头回见面？~
= ~另一方面，你我倒很熟。据我听说，这座城欠你很多。~
END
++ ~你到底听说了我什么？~ + j5.1
++ ~光辉之心骑士团是什么？~ + j5.2
++ ~我正要前去对抗圣战军，想找能干的盟友。你有兴趣吗？~ + j5.3
++ ~我这就走了。~ + j0

CHAIN C02DRAKE j5.1
~更好的问法是我没听说过你什么，我的朋友。你，杀死神子萨雷沃克的人，这座城的英雄，传言是谋杀之神的子嗣……~
= ~嘿。我也许说多了。不过别怕，<CHARNAME>。你到底是不是死去的巴尔腰里蹦出来的，是你自己的事，不关我的。我只是……对你看着这么寻常感到着迷。当然，是好话。~
END
++ ~光辉之心骑士团是什么？~ + j5.2
++ ~我正要前去对抗圣战军，想找能干的盟友。你有兴趣吗？~ + j5.3
++ ~我这就走了。~ + j0

CHAIN C02DRAKE j5.2
~这问题问我可能不大合适。我们是一帮亮闪闪的摆设，自以为能在一个烂泥坑里弄出点改变。骑士比大多数人受几分敬重。你知道这些就够了。~
= IF ~Class(Player1,PALADIN_ALL)
	  !Kit(Player1,Blackguard)~ THEN ~不过我相信他们会张开双臂欢迎你这样的人。你要是哪天去阿斯卡特拉，一定去看看我们总部。你就明白我意思了。~
END
++ ~好。那你知道我什么？~ + j5.1
++ ~我正要前去对抗圣战军，想找能干的盟友。你有兴趣吗？~ + j5.3
++ ~我这就走了。~ + j0

CHAIN C02DRAKE j5.3
~那么你要上路去龙矛城堡，跟圣战军打，嗯？说实话，我也准备走这一趟。~
= ~安姆也许不会立刻受这位所谓“光明女士”的威胁，可骑士团绝不会允许我袖手旁观，看这么一支力量威胁这些逃到城门求庇护的无辜者。不管怎样，我们都会同路。~
= ~是，我看这事我们结盟对双方都有好处。只要你肯收我。~
END
++ ~那就跟我来。我正缺一个能干的牧师。~ + j8.2
++ ~我看你不是我要找的人。~ + j5.4

CHAIN C02DRAKE j5.4
~随你。你还有时间改主意，放心。告辞。~
EXIT

CHAIN C02DRAKE j8
~我大概该直说我为什么还在这儿、没回安姆。我打算跟铁拳一起北上，打那场圣战。~
END
++ ~你怎么在三只老酒桶这儿？精灵之歌不是更有名望的店吗？~ + j9
++ ~安姆有什么好怕这场圣战的？~ + j8.1
++ ~我也一样。也许我们可以合作。~ + j8.2
++ ~那也许我们将来还会再见。先告辞了。~ + j0

CHAIN C02DRAKE j8.1
~我看没多少，可我们这伙人疑心重。不过这也无关，毕竟我国的利益跟我的决定没半点关系。~
= ~我在想，你去过铁王座的老总部吗？我估摸那儿跟你熟悉的景象大不相同。我在那儿待了些时候，像任何体面牧师那样照料伤者，可我知道那些人需要的远不止治伤。~
= ~那些人需要希望。他们需要知道不会再遭更多惨剧，而眼下唯一能确保这点的办法，就是打垮那支圣战军。要我能帮上忙，我就帮。~
END
++ ~这是个值得敬重的目标。我正缺你这样的人。~ + j8.2
++ ~知道就好。也许我们还会碰面。~ + j0

CHAIN C02DRAKE j8.2
~你这么想，是吧？嗯，我倒不反对这主意。有你作伴比跟铁拳那帮人强得多，毕竟他们还不太待见安姆人。~
= ~那就再上阵一回。我的锤子归你，<CHARNAME>。~
DO ~AddJournalEntry(%Drake_SoD_Recruit_Journal%,INFO)
SetGlobal("bd_joined","LOCALS",1)
JoinParty()~ EXIT

CHAIN C02DRAKE j9
~这地方更合我意。精灵之歌……对我口味来说有点做作。而且我失望地发现那位幽灵歌手还没回来。~
= ~精灵之歌有它的客群，可我……更喜欢热闹地方。那儿更适合认识人。还容易在酒馆斗殴里掉几颗牙，不过随它去。~
END
++ ~说回圣战军。安姆有什么好怕的？~ + j8.1
++ ~德雷克，你愿意再入我的队伍吗？我看我们一起打圣战军会很顺手。~ + j8.2
++ ~改日再跟你谈。告辞，我的朋友。~ + j0

CHAIN IF WEIGHT #-1 ~Global("C02DrakeBegin","GLOBAL",3)~ THEN C02DRAKE k0
~瞧瞧谁回来了。~
= ~有什么需要我效劳的吗，<CHARNAME>？我们无疑很快就要开拔去打圣战军。~
END
++ ~愿意跟我一起吗？我队里正缺你的本事。~ + j8.2
++ ~眼下没有。~ EXIT

APPEND C02DRAKE

IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_7%)~ p4
 SAY ~好，好。瞧瞧谁在这儿。~
	++ ~德雷克，你愿意跟我来吗？~ + p5
	++ ~瞧瞧谁要走。~ + p6
END

IF ~~ p5
 SAY ~这还用得着商量？走吧，我的朋友。~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ p6
 SAY ~真可惜。~
IF ~~ EXIT
END

END

BEGIN C02DRAKP

IF ~AreaCheck("bd4700")
GlobalLT("bd_plot","global",570)~ r0
SAY ~哈！这一仗我就算想走也走不了，<CHARNAME>！~
IF ~~ DO ~SetGlobal("C02DrakeKickedmdd1330","global",1)
SetGlobal("bd_joined","locals",0)~ EXIT
END

IF ~GlobalGT("bd_joined","LOCALS",0)~ p1
SAY ~我们的同袍情就这么突然断了？我心都碎了。~
 	+ ~OR(2) AreaCheck("BD0120")
	AreaCheck("BD0130")~ + ~就在这儿等我回来。~ + p2
	+ ~!AreaCheck("BD0120") !AreaCheck("BD0130")~ + ~就在这儿等我回来。~ + q1
	+ ~!AreaCheck("BD0120") !AreaCheck("BD0130")
	OR(2)
		!Range("ff_camp",999)
		NextTriggerObject("ff_camp")
		!IsOverMe("C0Drake")~ + ~只是暂时。回营地去等我。~ + p3
 	+ ~!AreaCheck("BD0120") !AreaCheck("BD0130") NextTriggerObject("ff_camp") IsOverMe("C0Drake")~ + ~只是暂时。在营地待一阵。~ + q2
 	+ ~!AreaCheck("BD0120") !AreaCheck("BD0130") GlobalGT("bd_npc_camp_chapter","global",1)
	   GlobalLT("bd_npc_camp_chapter","global",5)
	   OR(2)
	   !Range("ff_camp",999)
	   NextTriggerObject("ff_camp")
	   !IsOverMe("C0Drake")~ + ~只是暂时。回营地去等我。~ DO ~SetGlobal("bd_npc_camp","locals",1)~ + q3
 	++ ~不，留在我身边。~ + p0
END

IF ~~ p0
 SAY ~明智。~
IF ~~ DO ~JoinParty()~ EXIT
END
 
IF ~~ p2
 SAY ~随你。我就在这儿，耐心地在尘土和骨堆里等着。~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

IF ~~ p3
 SAY ~你这么说就这样。可务必当心别死，行吗？~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0) EscapeAreaMove("BD0120",837,1777,NE)~ EXIT
END

IF ~Global("bd_joined","LOCALS",0)~ p4
 SAY ~瞧瞧谁回来了。~
	++ ~是我。德雷克，你愿意再跟我走吗？~ + p5
	++ ~瞧瞧谁要走。~ + p6
END

IF ~~ p5
 SAY ~这还用得着商量？走吧，我的朋友。~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ p6
 SAY ~真可惜。~
IF ~~ EXIT
END

IF ~~ q1
SAY ~我确信你回来时我还在这儿。不过也许不完全清醒……也不完全说得清话。~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

IF ~~ q2
SAY ~我有得选吗？唉，随你吧。我等着。~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

IF ~~ q3
SAY ~我有得选吗？唉，随你吧。你知道去哪儿找我。~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

// Personal Quest

CHAIN IF ~Global("C02DrakeQuest","GLOBAL",2)~ THEN C02DRAKP quest
~换我来求你件事，这在我可不多见，<CHARNAME>，可事实上，我确实有些话想说，对我们俩都有好处。~
END
++ ~我听着，德雷克。怎么了？~ + quest.1
++ ~好，可你最好快说。~ + quest.1

CHAIN C02DRAKP quest.1
~我们过博尔斯基尔桥之前有一段日子，我往安姆送了一封信，详述我们向龙矛城堡进军的进展。~
= ~我向骑士团的上司请求支援，他们回话批准了一支小队伍，等我们建好联军营地，就给铁拳带来些有用的物资。~
END
++ ~你说的物资是什么？~ + quest.2
++ ~说重点。~ + quest.3

CHAIN C02DRAKP quest.2
~我请求的是“任何我们用得上物资”。医药、食物、兵器之类。那些你也许不大感兴趣，可里头还夹了几件更对我们路子的强力器物。~
EXTERN C02DRAKP quest.3

CHAIN C02DRAKP quest.3
~我一直在数日子，要是没出岔子，那批物资这会儿该到营地了。可我没收到确认消息，我问过的斥候也没人见着符合我等的那些人的样子。~
= ~当然，人有时会耽搁，可我总有种不安的感觉，觉得出了事。他们要是在路上撞上圣战军，那性命就危险了，最坏的情形，那批物资会落到圣战军手里。~
= ~且不说“那批物资”里有几件骑士团不愿丢的魔法器物，我也担心那些人出了什么事。这也许跟我们眼下的目标无关，可我倒宁愿去查一查……只要你乐意。~
END
++ ~你像是真担心。好，我去看看能不能找着他们。~ + quest.4
++ ~这事要真对你要紧，我会留意。可不能保证找得着人。~ + quest.4
++ ~我现在没工夫分心。我们的主要目标是龙矛城堡。~ + quest.5

CHAIN C02DRAKP quest.4
~谢谢你，<CHARNAME>。也许什么事都没有……就我所知，他们只是被些小麻烦拖住了，可万一不是……嗯，有备无患。~
DO ~AddJournalEntry(%Drake_SoD_Quest_1%,QUEST)~ EXIT

CHAIN C02DRAKP quest.5
~*叹息* 嗯，不知道出了什么事，我也睡不安稳，可我看我们手头有更大的事。好，我试着说服营地几位指挥官替我们去处理。不过我希望你还是留意线索……以防万一。~
DO ~AddJournalEntry(%Drake_SoD_Quest_1%,QUEST)~ EXIT