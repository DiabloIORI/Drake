// Knight Allies

EXTEND_TOP BDANDRUS 6
+ ~InMyArea("c02elrik")
Global("C02Drake_bd_battle","GLOBAL",0)~ + ~埃利克爵士，你的骑士们准备好迎击这些巨魔了吗？~ DO ~SetGlobal("C02Drake_bd_battle","GLOBAL",12)~ EXTERN C02ELRIK elrik1
END

EXTEND_TOP BDANDRUS 9
+ ~InMyArea("c02elrik")
Global("C02Drake_bd_battle","GLOBAL",0)~ + ~骑士团众骑士！随我一同对抗十字军的法师！~ DO ~SetGlobal("C02Drake_bd_battle","GLOBAL",22)~EXTERN C02ELRIK elrik2
END

EXTEND_TOP BDANDRUS 12
+ ~InMyArea("c02elrik")
Global("C02Drake_bd_battle","GLOBAL",0)~ + ~埃利克爵士，率你的骑士去对付十字军剩下的东西！~ DO ~SetGlobal("C02Drake_bd_battle","GLOBAL",32)~EXTERN C02ELRIK elrik3
END

CHAIN C02ELRIK elrik1
~是。红港的火焰之刃会确保这些怪物再也爬不起来！~
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~看来这是我们头一回并肩作战了，小子。准备好了吗？~
== C02TOMAS IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~我准备好了，德雷克。让我们为骑士团争光。~
EXTERN BDANDRUS 7

CHAIN C02ELRIK elrik2
~很好，<CHARNAME>。他们的魔法敌不过赐予我们的神力！~
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~看来这是我们头一回并肩作战了，小子。准备好了吗？~
== C02TOMAS IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~我准备好了，德雷克。让我们为骑士团争光。~
DO ~SetGlobal("bd_battle","global",22)
StartCutSceneMode()
StartCutSceneEx("bdcut40c",TRUE)~ EXIT

CHAIN C02ELRIK elrik3
~我们与你同在，<CHARNAME>。我和我的骑士们会确保这场战争彻底了结！~
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~看来这是我们头一回并肩作战了，小子。准备好了吗？~
== C02TOMAS IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~我准备好了，德雷克。让我们为骑士团争光。~
DO ~SetGlobal("bd_battle","global",32)
StartCutSceneMode()
StartCutSceneEx("bdcut40d",TRUE)~ EXIT

EXTEND_TOP BDYAROK 0
+ ~Global("C02Drake_bd_battle","GLOBAL",13)~ + ~埃利克爵士！杀了这些畜生！~ EXTERN C02ELRIK elrik.1
END

CHAIN C02ELRIK elrik.1
~拿起武器，兄弟们！就在这<DAYNIGHT>，我们把这些畜生送进深渊最深的地狱！~
== BDYAROK ~骑士们！我已杀过你们不少同类，还把你们的骨头做成了玩物。你们也将如此下场！~
EXIT

EXTEND_TOP BDCUVIER 0
+ ~Global("C02Drake_bd_battle","GLOBAL",23)~ + ~该受惩的是你，法师，因为光辉之心骑士团站在我们这边！~ EXTERN C02ELRIK elrik.2
END

CHAIN C02ELRIK elrik.2
~凯拉尔的法师们！你们那误入歧途的事业，如同你们脆弱的防线，都会在托姆的意志前粉碎！~
== BDCUVIER ~一身钢甲对奥术的修行者算不了什么，骑士！你们必将倒在我们面前！~
EXIT

EXTEND_TOP BDRHAYLA 0
+ ~Global("C02Drake_bd_battle","GLOBAL",33)~ + ~骑士团众骑士！让这些十字军看看他们的事业何等虚妄！~ EXTERN C02ELRIK elrik.3
END

CHAIN C02ELRIK elrik.3
~最高贵的光辉之心骑士团与你同在，<CHARNAME>！十字军绝不会得逞！~
EXTERN BDRHAYLA 1