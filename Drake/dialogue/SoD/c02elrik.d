BEGIN C02ELRIK

CHAIN IF WEIGHT #-1 ~Global("C02DrakeQuest","GLOBAL",3)~ THEN C02ELRIK a1
~恶心的东西！拿起武器，同伴们！就在这<DAYNIGHT>，我们让这片土地洒满它们的黑血。跟我来，考尔菲尔德侍从！~
== C02DRAKJ IF ~IsValidForPartyDialog("C0Drake")~ THEN ~这些是骑士团的骑士，<CHARNAME>！大概就是本该到营地来的那批！~
== C02ELRIK ~你们那边！你们若是一切良善正道的朋友，就来帮我们对付这些畜生！我们两面夹击！为了骑士团！~
DO ~SetGlobal("C02DrakeQuest","GLOBAL",4)~ EXIT

CHAIN IF WEIGHT #-1 ~!Detect([ENEMY])
Global("C02DrakeQuest","GLOBAL",4)~ THEN C02ELRIK a2
~打得好，诸位！把这些畜生送进深渊，诸神必定对我们微笑。你们慢慢处理伤口，我去跟这些陌生人说话。~
DO ~SetGlobal("C02DrakeQuest","GLOBAL",5)~
END
IF ~IsValidForPartyDialog("C0Drake")~ EXTERN C02DRAKJ a1.1
IF ~!IsValidForPartyDialog("C0Drake")~ EXTERN C02ELRIK a1.2

CHAIN C02DRAKJ a1.1
~我们并不全是陌生人，埃利克爵士。前提是你还认得我。~
== C02ELRIK ~我怎么会不认得？再见到你真好，小德雷克。~
== C02DRAKJ ~很高兴你还记得那个当年在高等殿堂里站在同伴中间的小子。不过我没想到骑士团会把像“红巨人”这样身手的人派来做这种事？~
== C02ELRIK ~德雷克，教长非常重视你送来的关于十字军动向与壮大的情报。他认为最好派骑士团里最有经验的人来协助博德之门防守，确保这威胁不再向外蔓延。~
== C02DRAKJ ~最有经验，嗯？我猜这是好事。那他来这儿做什么，嗯？~
== C02TOMAS ~哼。~
== C02DRAKJ ~太久不见了，托马斯。几个月没见，你就要这样对待你哥哥？我逗你玩的，你知道吧？~
== C02TOMAS ~我知道。你没变，德雷克。还是那么叫人受不了。~
== C02DRAKJ ~你还是我那张嘴不饶人的小子弟弟。不过我们就爱这样，对吧？~
== C02TOMAS ~……呵。再见到你真好。~
== C02DRAKJ ~我也一样，小子。<CHARNAME>，这是我最宝贝的小弟，托马斯·考尔菲尔德。虽说比我上回见他时又长了些。~
END
++ ~我明白了。很高兴认识你，托马斯。~ EXTERN C02DRAKJ a2.1
++ ~我本以为你弟弟会跟你更像一些，德雷克。~ EXTERN C02DRAKJ a2.2
++ ~这场重逢虽然感人，我还是宁愿我们谈谈这儿更要紧的事。~ EXTERN C02DRAKJ a2.3

CHAIN C02DRAKJ a2.1
~抱歉我这么久没回家。家里都怎么样？~
== C02TOMAS ~你知道他们什么样子。母亲一天不担心你吃得好睡得香就过不去。父亲不大过来。至于我们的小妹妹，她进步不小，剑术和画画都是。~
== C02DRAKJ ~那好。我很想多听些，不过……现在我想我该先去跟你的上司说话。~
EXTERN C02DRAKJ a2.4

CHAIN C02DRAKJ a2.2
~他像我们母亲。其实我几个弟妹都像。我是那个例外。~
EXTERN C02DRAKJ a2.1

CHAIN C02DRAKJ a2.3
~你说得对，<CHARNAME>。我们得回头再聊，小子。~
EXTERN C02DRAKJ a2.4

CHAIN C02DRAKJ a2.4
~埃利克爵士。这位是<CHARNAME>，博德之门的英雄。<PRO_HESHE>正率领这支队伍，在我们的大军与十字军交战之前先探查他们。~
== C02ELRIK ~确实。我读了你送来的信，也读了先前送到骑士团的报告。这就是那……的孩子。~
== C02DRAKJ ~埃利克爵士。~
== C02ELRIK ~当然。恕我失言。我的<PRO_LADYLORD><CHARNAME>，光辉之心骑士团愿助防卫，对抗光明女士的十字军。~
END
++ ~很感激你的帮助。~ EXTERN C02DRAKJ a2.5
++ ~德雷克，你为什么把我的身世告诉骑士团？~ EXTERN C02DRAKJ a2.6
++ ~我看也只能将就你了。~ EXTERN C02DRAKJ a2.5

CHAIN C02DRAKJ a2.5
~埃利克爵士，这一仗之后，你和你的部下还走得动吗？营地离此不远。你会在那儿见到博德之门、达格福德与深水城的联军。我已通知各指挥官等你们到。~
== C02ELRIK ~那我们即刻动身。多谢你的协助，德雷克，也多谢<PRO_LADYLORD><CHARNAME>。我们营中再见。~
== C02TOMAS ~回头见，弟弟。~
== C02DRAKJ ~若一切顺利。保重，小子。我回头再跟你聊。~
== C02ELRIK ~我们告辞了。多加小心，德雷克。~
DO ~AddJournalEntry(%Drake_SoD_Quest_2%,QUEST_DONE) EscapeArea()~ EXIT

CHAIN C02DRAKJ a2.6
~*耸肩* 你又没说过不许。再说，你宁愿他们从不向着你的人嘴里听说吗？~
EXTERN C02DRAKJ a2.5

CHAIN C02ELRIK a1.2
~多谢你的援助，陌生人。在下埃利克·红港爵士，光辉之心骑士团的宿将，听候差遣。可否告知我们这位新盟友的名号？~
END
++ ~我是<CHARNAME>。你们一定是德雷克从安姆来的同门骑士。~ + a1.3
++ ~我的名字不重要。你们就是德雷克求援召来的骑士？~ + a1.3

CHAIN C02ELRIK a1.3
~是，正是我们。你既知道我们，那你一定是与十字军作战的联军一员。能找到你们真是幸事。~
== C02TOMAS ~打扰一下。我是德雷克的弟弟，托马斯·考尔菲尔德。你知道我哥哥在哪儿吗？他还好吗？~
END
+ ~Dead("c0drake")~ + ~很遗憾，德雷克已经阵亡了。~ EXTERN C02TOMAS a1.4
+ ~!Dead("c0drake")~ + ~他在联军营地，等着你们到。你们该立刻出发。~ + a1.5

CHAIN C02TOMAS a1.4
~死了？不……不，不能连他也……~
== C02ELRIK ~别慌，侍从。若能找回他的遗骸、带回骑士团，或许还有希望。他的结局跟加布里尔爵士不同。~
EXTERN C02ELRIK a1.5

CHAIN C02ELRIK a1.5
~多谢你，我的<PRO_LADYLORD>。我们本该多天前就到，可路上阻力不断，既有十字军，也有这些奥罗格之类的无法无天的劫掠者。我们即刻前往营地，与首领们商定安排。~
= ~告辞。~
DO ~AddJournalEntry(%Drake_SoD_Quest_2%,QUEST_DONE) EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~AreaCheck("bd3000")
Global("bd_battle","global",0)
NumTimesTalkedTo(0)~ THEN C02ELRIK b1
~最高贵的光辉之心骑士团的骑士们已加入联军。到时候，我们的刀剑由你调用。~
EXTERN C02ELRIK b2

CHAIN IF WEIGHT #-1 ~AreaCheck("bd3000")
Global("bd_battle","global",0)
!NumTimesTalkedTo(0)~ THEN C02ELRIK b2
~你有什么需要吗，<CHARNAME>？~
END
++ ~你部下们还好吗，埃利克爵士？~ + b2.1
++ ~我想看看你手头的装备。~ + b2.2
++ ~暂时没有。~ + b2.0

CHAIN C02ELRIK b2.0
~如你所愿。愿托姆的祝福与你同在。~
EXIT

CHAIN C02ELRIK b2.1
~我们准备好为保卫这片土地而战，对抗那所谓的光明女士与她的十字军。虽说见到像阿金特这样的名门之后落到这般地步令我痛心，但我们必须在此取胜，否则以剑湾为家的所有人的安危都将受威胁。~
EXTERN C02ELRIK b2

CHAIN C02ELRIK b2.2
~当然。按令，骑士团武库里最好的东西都任你取用。~
DO ~StartStore("c02dshop",Lasttalkedtoby(Myself))~ EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("bd_battle","global",0)
!GlobalGT("bd_battle","global",36)~ THEN C02ELRIK c1
~骑士团随时准备与十字军那些伪信异端一战！~
EXIT

CHAIN IF WEIGHT #-1 ~GlobalLT("bd_plot","global",450)
!Dead("bdashati")~ THEN C02ELRIK c1
~以托姆之名，十字军必将倒下！~
EXIT

CHAIN IF WEIGHT #-1 ~GlobalLT("bd_plot","global",450)
Dead("bdashati")~ THEN C02ELRIK c2
~打得好，<CHARNAME>！正义之人胜过了那虚假之光，正如天命所定。你有什么需要吗？~
END
++ ~我想看看你手头的装备。~ + b2.2
++ ~暂时没有。~ + b2.0