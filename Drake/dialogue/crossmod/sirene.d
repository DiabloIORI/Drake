CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneDrake1","GLOBAL",0)~ THEN BC0Siren C0SireneDrake1
~怎么了，德雷克？你看我就像在端详一件有趣的玩具。我身上到底哪点让你这么笑？~
DO ~SetGlobal("C0SireneDrake1","GLOBAL",1)~
== BC0Drake ~没什么特别的，慈悲女士。你是说，我是头一个觉得你有趣的人？~
== BC0Siren ~我倒不希望被自己同行的人这样打量。~
== BC0Drake ~是这样吗？那我赔个不是，忘了我该记得你也是有思想有感受的活人。往后我一定守着分寸。~
== BC0Siren ~知道这个并不能让我更好受，德雷克。（叹气）可我看我也拦不住你。~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneDrake1","GLOBAL",1)~ THEN BC0Drake C0SireneDrake2
~得了，慈悲女士，脸何必这么阴沉？我们又还没死。~
DO ~SetGlobal("C0SireneDrake1","GLOBAL",2)~
== BC0Siren ~你为什么这么叫我？~
== BC0Drake ~你不觉得这称呼挺动听？~
== BC0Siren ~不觉得。考虑到……我做过的所有事，我看这称呼一点也不合适。这满地的杀戮里，哪有什么慈悲。~
== BC0Drake ~哈！说得没错，可你并不比我们谁更罪重。~
== BC0Siren ~是，可我总觉得自己的所作所为比别人更重些。~
== BC0Drake ~我相信大多数正派人为取人性命都会内疚，不管对方多歹毒，可我还没见过谁事后把这份心情揣得这么久。~
== BC0Siren ~你觉得这可笑？~
== BC0Drake ~不，我其实觉得挺可敬。换了我，怕是没有这份力气。~
== BC0Siren ~……我明白了。我……谢谢你，德雷克。~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneDrake1","GLOBAL",2)~ THEN BC0Siren C0SireneDrake3
~德雷克，你在光辉之心骑士团里地位受人敬重，可你看起来一点也不满足。~
DO ~SetGlobal("C0SireneDrake1","GLOBAL",3)~
== BC0Drake ~我可没你以为的那么受敬重，慈悲女士。年轻一辈里自然是有人喜欢我，可别人觉得我这性子……难以忍受。~
== BC0Siren ~那是为什么？~
== BC0Drake ~唉，你总会碰上几回争执，争的是该怎么做才对，跟人家告诉你什么才算对。我就是习惯不了。~
== BC0Siren ~你是在说骑士团并不像看上去那样高尚？~
== BC0Drake ~不，他们心怀善意，这点没错，可……我们太看重个人荣誉，有时看得过头了。在安姆这样的地方，荣誉……想保住它又想让良心干净，可不容易。~
== BC0Siren ~我明白了……~
== BC0Drake ~如果你真知道我做过些什么，也许你对我就没现在这么敬重了。我这话就说到这儿。~
EXIT