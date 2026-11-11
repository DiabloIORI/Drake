CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraDrake1","GLOBAL",0)~ THEN BC0Drake C0AuraDrake1
~问你一句，小小的奇迹之女。你相信我们这世界之外还有生命吗？我不是说各位面，是字面上的世界。~
DO ~SetGlobal("C0AuraDrake1","GLOBAL",1)~
== BC0Aura ~你是指星辰之上的生命？德雷克，我没想到你知道这些理论。你肯定钻研过。~
== BC0Drake ~谈不上钻研。只是在老家的圣典藏书里随手翻了翻，碰上了这题目。叫《诸天异象与远航考》什么的，大概这名字。不到一百年前某个占星家写的。你读过这本书吗？~
== BC0Aura ~哦，读过。那是我故乡的人写的。不过那还是我出生之前的事。自那以后，我们发现的事实大大改变了我们的看法。~
== BC0Drake ~那你信吗？那些关于星辰之上有生命、住在与我们平行的世界的部分？我得承认，这对我来说太飘渺，尤其这还算是部严肃的学说。~
== BC0Aura ~嗯，我会说那确实有可能……但到现在我们也没法确定。唯一能确定的方法，就是找到那些世界亲眼看一看，你知道吗？*叹气* 不过那肯定远在我们的有生之年之后了。~
== BC0Drake ~也许吧。不过以你这样的头脑……~
== BC0Aura ~哈哈哈，不行。我没那么厉害……至少现在不行。再说我这一生还有千千万万想做的事，那些用不着一辈子才做得到。~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraDrake1","GLOBAL",1)~ THEN BC0Aura C0AuraDrake2
~我在想，德雷克，你的神会跟你说话吗？我是说……你听过他的声音吗？~
DO ~SetGlobal("C0AuraDrake1","GLOBAL",2)~
== BC0Drake ~提尔的声音？不敢说听过。~
== BC0Aura ~没听过？那……你怎么知道他真的存在？你有证据吗？~
== BC0Drake ~没有。可我就是相信他存在。这很难解释。我能……感觉到，某种程度而已。~
== BC0Aura ~感觉到？你什么意思？~
== BC0Drake ~当你像我这样成了神的仆从，你就是……知道。我不知道别人如何，可对我而言，那就像……每次我低声祷告，都有一种临在悬在头顶。~
== BC0Drake ~可你怎么会想到问这个？你不信神吗？~
== BC0Aura ~我信。只是……我一点也不懂这片土地上的神。我住在科祖库拉的时候，人们认作神的那些东西……不一样。~
== BC0Aura ~有时我觉得我能看见它们，尽管它们似乎根本不在乎我们这些凡人。它们更像自然之灵，随心所欲。你会把它们也叫作神吗？~
== BC0Drake ~也许吧。我不知道神是什么。我觉得在这片大地上活过又死去的任何人，其实都不知道。~
== BC0Drake ~凡是比我们更伟大、我们又不理解的东西，都可能被某些人叫作神。头顶的天、身边的风——那些是神吗？我见过说是的人，我辩不过他们。~
== BC0Drake ~也可能这词本身没什么真实含义，只是我们选择把某种存在安上这个名。谁知道呢？~
== BC0Aura ~你大概说得对。我追查并解开过许多谜团，可神……我怀疑我永远解不开这一个。~
EXIT