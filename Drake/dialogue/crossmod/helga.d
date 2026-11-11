// Drake-Helga 1
CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("C0DrakeX3Helga","LOCALS",0)~ THEN X3HelgaB DrakeHelga1
~好一副铁臂，审判官。提尔教会里铁打的战士可不少。~
DO ~IncrementGlobal("C0DrakeX3Rec","LOCALS",1)~
== BC0Drake ~哈！从你这样的人嘴里说出来，可真是过奖了。要不要我识趣一点、别戳破你对我的信仰的幻想，就照人家说的“笑一笑点点头”？~
== X3HelgaB ~幻想也罢。信仰是你自己的活法。只要你打得漂亮，我就挑不出多大毛病。~
== BC0Drake ~那就这样吧。只是句平常的称赞，我欣然领受。我这边也会尽力不让你失望。~
== X3HelgaB ~呃，倒也有一处毛病。你这张嘴动得太勤，不合我意。~
EXIT 