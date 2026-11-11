CHAIN IF ~InParty("X3Vien")
InParty("C0Drake")
See("C0Drake")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
Global("CrossDraVien","LOCALS",0)~ THEN X3VienB VienDrake1
~那么我该相信你是个所谓的人类*贵族*了，德雷克？我可不信。~
DO ~SetGlobal("CrossDraVien","LOCALS",1)~
== BC0Drake ~你绝不是头一个这么说的，尖耳朵女士。我家祖上本是平民出身。至于我，我觉得“贵族”这整套概念就是装腔作势。~
== X3VienB ~是维恩赛·星光女士，不是“尖耳朵”，人类。不像你，我要求尊重，也自重身份。~
== BC0Drake ~尊严，嗯？那我还听说你被流放了，这又是怎么回事？~
== X3VienB ~源于一场误会。一个终会被纠正的错误。~
== BC0Drake ~是这样吗？那去找那个拿你当替罪羊的凶手讨公道，算是你的权利……当然，前提是你真清白。~
== X3VienB ~哼。我当然是清白的。不过，你倒比大多数人类更能忍。~
== BC0Drake ~哈！这话我也听过不止一回。看它能不能长久吧。~
EXIT

CHAIN IF ~InParty("X3Vien")
InParty("C0Drake")
See("C0Drake")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
Global("CrossDraVien","LOCALS",1)~ THEN X3VienB VienDrake2
~我真想知道，在一个如此不义的国度里，一个人怎么能自称是匡扶正义的狂热信徒？~
DO ~SetGlobal("CrossDraVien","LOCALS",2)~
== BC0Drake ~我猜这句笨拙的反问，又是冲我来的刺。~
== X3VienB ~只是我自个儿的瞎琢磨。我奇怪你怎么没因为活着就被雷劈了。你的神想必不太管你。~
== BC0Drake ~又或者，是因为有些神比你所能知道的更慈悲。~
== X3VienB ~未必。你看，我自己处境之冤屈如此之大，你却好像根本不在意。你那位神自称的慈悲，也不过如此。~
== BC0Drake ~最初把你害到如今这地步的，不就是你依赖了别人吗？~
== X3VienB ~那是……那是……你对我这些事一无所知，人类。~
== BC0Drake ~只因为你偏要撒谎。对自己，也对别人……星光女士。~
== X3VienB ~是*星光女士*，人类。~
EXIT

CHAIN IF ~InParty("X3Vien")
InParty("C0Drake")
See("C0Drake")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
Global("CrossDraVien","LOCALS",2)~ THEN X3VienB VienDrake3
~你们人类的酒简直*难喝至极*。~
DO ~SetGlobal("CrossDraVien","LOCALS",3)~
== BC0Drake ~是，不少都难喝。可喝得够多之后，唯一难熬的就是第二天清早躲不掉的宿醉。~
== X3VienB ~前提是有人真灌得下那么多。唉。我真想念家乡那醇厚闪亮的艾尔弗奎斯特。~
== BC0Drake ~你要是弄到手，可一定告诉我。~
== X3VienB ~那跟拿它喂马一样糟蹋。精灵的美酒是给比你精细得多的舌头喝的。~
== BC0Drake ~我不敢妄断我的舌头能品出什么。~
== X3VienB ~唉。你的心思跟你的胡子一样恶心。还是你纯粹就想惹我上火？~
== BC0Drake ~是。而且看样子还挺成功。~
== X3VienB ~你。真。叫人受不了。就算按人类的标准也算。~
EXIT