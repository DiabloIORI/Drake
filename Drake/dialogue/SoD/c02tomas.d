BEGIN C02TOMAS

CHAIN IF ~AreaCheck("bd3000")
Global("C02TomasTalk","GLOBAL",0)~ THEN C02TOMAS tomas
~我从没想到为一项事业打仗会是这个样子。这么多人死了，这么多人正死去……我看战争里头根本没什么荣耀。~
END
IF ~IsValidForPartyDialog("C0Drake")~ EXTERN C02DRAKJ tomas.1
IF ~!IsValidForPartyDialog("C0Drake")~ EXIT

CHAIN C02DRAKJ tomas.1
~别让父亲听见你这么说。他会想办法把你的脑子敲回正轨。~
DO ~SetGlobal("C02TomasTalk","GLOBAL",1)~
== C02TOMAS ~呵。你说得对。幸好这会儿我们跟安姆隔着上百里格。~
== C02DRAKJ ~我希望能说点什么安慰你，小子。可我说不出口。我跟你感觉一样。我自己从来不喜欢那套该死的逞强和假自信。~
== C02TOMAS ~现在我明白你为什么一直不赞成我加入骑士团了。我真想不出加布里尔怎么受得了。~
== C02DRAKJ ~他有同伴。忠实、他信得过、也信他的同伴。我也在内。撑着你的朋友，是你能熬过这一切的最好办法。~
== C02TOMAS ~...~
== C02DRAKJ ~有什么想说的吗？~
== C02TOMAS ~埃利克爵士一直在教我使剑。可我没法像你和加布里尔那样勇猛地冲进战阵。我在远处打要好些。~
== C02DRAKJ ~我注意到你用那张弓更顺手。我不在的时候，万斯教了你几手吗？~
== C02TOMAS ~是。你不在的时候他常来看家里。后来他也不得不走了。你见过他吗？~
== C02DRAKJ ~见过，是。不久之前他还在博德之门。要是他的任务完了，人又没死……他大概回老家去了。~
== C02TOMAS ~你……还恨他吗？~
== C02DRAKJ ~哈！你了解我。我身上没有一根真会恨人的骨头。除了对那些往我酒里兑水的混蛋。我们早和解了，别担心。~
== C02TOMAS ~那好。自从我们没了兄弟，你就再不是原来的样子了，德雷克。我一直在担心。~
== C02DRAKJ ~好了，小子，记住我们现在在哪儿。我们有比家里那些事更要紧的事要操心。再说……这也不是别人该知道的事，懂我意思吗？~
== C02TOMAS ~是……你说得对。谢谢你过来听我说，德雷克。在这儿我没别人可说。~
== C02DRAKJ ~随时，弟弟……随时。只要我还活着，你就靠得住。这话让你好受些吗？~
== C02TOMAS ~好受多了。不过我该回去帮忙照料伤者了。回头见，德雷克。~
EXIT

CHAIN IF ~Global("bd_battle","global",0)
OR(2)
Global("C02TomasTalk","GLOBAL",1)
!IsValidForPartyDialog("C0Drake")~ THEN C02TOMAS tomas1
~你好。抱歉我现在没法说话，我还有活要干。~
EXIT

CHAIN IF ~!Global("bd_battle","global",0)
!GlobalGT("bd_battle","global",36)~ THEN C02TOMAS tomas2
~我准备好上阵了，<CHARNAME>。只消一句话。~
EXIT

CHAIN IF ~GlobalLT("bd_plot","global",450)
!Dead("bdashati")~ THEN C02TOMAS tomas2
~这场仗还没打完！~
EXIT

CHAIN IF ~GlobalLT("bd_plot","global",450)
Dead("bdashati")
IsValidForPartyDialog("C0Drake")
Global("C02TomasPostBattle","GLOBAL",0)~ THEN C02TOMAS tomas3
~德雷克！~
DO ~SetGlobal("C02TomasPostBattle","GLOBAL",1)~
== C02DRAKJ ~嘿，那边！看样子你自己撑得挺好，小子。干得不错。~
== C02TOMAS ~看到你还活着，我也松了口气，哥哥。战场上找不着你的时候，我担心了。~
== C02DRAKJ ~要杀我，这样一场仗还不够。你呢？没哪儿受伤吧？~
== C02TOMAS ~去找治伤者看看就好。我只是高兴它结束了。~
== C02DRAKJ ~还没结束。不过我看你今天动得够多了。去找埃利克爵士，歇一歇。<CHARNAME>和我会收拾剩下的。~
== C02TOMAS ~我——嗯，好吧。我知道你都能应付。小心点，德雷克。~
DO ~EscapeArea()~ EXIT