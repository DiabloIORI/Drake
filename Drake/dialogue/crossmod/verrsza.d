CHAIN IF ~InParty("L#1Verr")
See("L#1Verr")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("L#1Verr",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeVerr","GLOBAL",0)~ THEN BC0Drake C0DrakeVerr1
~你知道吗，罗刹，光辉之心的高堂里挂着描绘你们这类东西的画。~
DO ~SetGlobal("C0DrakeVerr","GLOBAL",1)~
== L#1VerrB ~真的？（咧嘴笑）我还没蠢到以为那是表示敬重。给我讲讲，人类。它们为什么存在？~
== BC0Drake ~当然是作警示用的。有些学者相信，那些堕落、或自愿走入邪恶之路的天界存在，会在下一世被诅咒变成你们这种东西。这故事是告诫人：再伟大的善之力，也躲不开黑暗的引诱。~
== L#1VerrB ~有意思。很高兴知道哪怕最正直的人也能被压下一两分。（笑）~
== BC0Drake ~若这说法是真的，那我倒想知道，维尔萨——你前世是不是那种存在？你造了什么恶，才变成如今这副披着人形的野兽？~
== L#1VerrB ~但愿是件又狡猾又刺激的事。不过我可不是会信这种胡话的人。~
== BC0Drake ~我也不是。因为若那故事是真的，想到你这种东西也曾纯洁善良，我就恶心。你最好一直都是现在这副模样，这样到你死那天，我也不会可怜你。~
== L#1VerrB ~呵。一个圣职者居然这么冷，我几乎要敬你一分。~
== BC0Drake ~别指望我回敬……邪物。~
EXIT

CHAIN IF ~InParty("L#1Verr")
See("L#1Verr")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("L#1Verr",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeVerr","GLOBAL",1)~ THEN BC0Drake C0DrakeVerr2
~富人们就爱用皮毛装饰宅子和衣裳。你看见一件会不会发怵？~
DO ~SetGlobal("C0DrakeVerr","GLOBAL",2)~
== L#1VerrB ~不怎么。该发怵吗？~
== BC0Drake ~你就没担心过有人想拿你那身亮黑皮毛做件暖和的外套？或者做条毯子，夜里裹着取暖？~
== BC0Drake IF ~GlobalGT("L#1VerrRomanceTalk","GLOBAL",8)
OR(2)
Global("L#1VerrRomanceActive","GLOBAL",1)
Global("L#1VerrRomanceActive","GLOBAL",2)~ THEN ~不过我猜你活着的时候，后一件事已经做得很好了。至少对<CHARNAME>来说是。~
== L#1VerrB ~（咧嘴笑）我倒很想看谁试试。我会先剥了他的皮。~
== BC0Drake ~我倒好奇你们那儿是不是反过来？野兽披着人皮？若以你为样板，我完全相信有这回事。~
== L#1VerrB ~我是猎人，不是野人，人类。我唯一穿的皮，是连着整具活身子的。那样……暖和多了。~
== BC0Drake ~呵，说得有理。你也许是只疯疯癫癫、疥疮满身的猫科畜生，可至少你懂自己的行当。这总算有点可取。~
EXIT