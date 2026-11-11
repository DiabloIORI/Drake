BEGIN C0DSTONE

CHAIN IF WEIGHT #-1
~!See("C0Drake")
!InParty("C0Drake")
Global("C0DrakeStoneheart","GLOBAL",0)~ THEN C0DSTONE stoneheart
~我是个忙人，朋友。快点，行吗？~
EXIT

CHAIN IF WEIGHT #-1
~See("C0Drake")
InParty("C0Drake")
Global("C0DrakeStoneheart","GLOBAL",0)~ THEN C0DSTONE stoneheart2
~啊，瞧瞧。是谁终于清醒到能走到这儿来了。好久不见，考尔菲尔德。~
DO ~SetGlobal("C0DrakeStoneheart","GLOBAL",1)~
== C0DRAKEJ ~石心。真是意想不到的……荣幸。~ [C0DRAK19]
== C0DSTONE ~我一直在掰着手指头数日子，你才终于到，老朋友。活儿上偷懒了？要不是我了解你，我会以为你出了什么毛病。可话说回来，你能来这儿，我已经很吃惊了。~
== C0DRAKEJ ~你不知道我经历了什么。对我来说全是干活。~
== C0DSTONE ~是，我信。我本想请你坐下喝一杯，不过我猜你到不了傍晚就醉倒了，账却留给我，跟往常一样。~
== C0DRAKEJ ~少来这套，石心。你来这儿干什么？首席督察受够了你那副假惺惺的样子？还是你专程从阿斯卡特拉赶过来嘲弄我？~
== C0DSTONE ~拜托。你以为你值得我费这功夫，考尔菲尔德？我在博德之门的差事跟你没关系。~
== C0DRAKEJ ~那是怎样？其实，算了。我不在乎。光是看见你，我就想把自己灌糊了，忘掉这场对话发生过。~
== C0DSTONE ~好了好了，考尔菲尔德。你这是在朋友面前让自己下不来台。恕我失礼，我的<PRO_LORDLADY><CHARNAME>。在下安姆的密探石心，愿为你效劳。~
END
++ ~你知道我是谁？~ EXTERN C0DSTONE stoneheart3
++ ~探员？~ EXTERN C0DRAKEJ stoneheart4
++ ~看来你是德雷克的朋友。很高兴认识你。~ EXTERN C0DRAKEJ stoneheart5

CHAIN C0DSTONE stoneheart3
~你的事迹传得快，<CHARNAME>，而我的耳朵比大多数人更贴地面，公职要求如此。~
== C0DRAKEJ ~那这是怎么着，石心？掂量你的猎物？想估一估<CHARNAME>对上面那些人有多大威胁？因为你要真打算——我有话要说。~
== C0DSTONE ~不，不，不。我没有一点对<CHARNAME>构成威胁的意思。我的事牵涉一个更阴暗、危险得多的团伙……而我想请你相助。~
== C0DRAKEJ ~无所不能的天才石心还需要*相助*？哎呀，这也太可乐了。我是在做梦吗？~
== C0DSTONE ~博德之门里有影贼，考尔菲尔德。~
== C0DRAKEJ ~...~
== C0DSTONE ~...~
== C0DRAKEJ ~你说真的。~
== C0DSTONE ~恐怕是，朋友。好像没别人看出迹象，可我对这些太熟了。他们就在这儿，看不见，无疑在地下。而且他们正在谋划什么。~
== C0DRAKEJ ~影贼能对博德之门有什么谋划？就眼下这局面，我看不出他们能从中捞到什么……~
== C0DSTONE ~我也只是猜测。他们大概打算刺杀一位大公爵……把日益紧绷的局势推成全然的战争。~
== C0DRAKEJ ~唉……以提尔的屁股起誓，我祈求你猜错了。~
END
++ ~影贼是什么？~ EXTERN C0DSTONE stoneheart6
++ ~挑起战争谁能得好处？~ EXTERN C0DSTONE stoneheart7
++ ~继续说，多讲些。~ EXTERN C0DSTONE stoneheart7

CHAIN C0DRAKEJ stoneheart4
~别让他糊弄你，<CHARNAME>，他的心跟他的名字一样冷。他的差事，就是干那些地方法官、首席督察以及安姆官僚里任何人都不愿脏了手的“脏活”。我没说错吧，老朋友？~
== C0DSTONE ~……是，一点没错。~
EXTERN C0DSTONE stoneheart3

CHAIN C0DRAKEJ stoneheart5
~朋友……哈！你连一半都不知道，<CHARNAME>。~
EXTERN C0DSTONE stoneheart3

CHAIN C0DSTONE stoneheart6
~影贼是安姆里势力最大的盗贼公会，几乎所有腐败、犯罪与谋杀的根子都能追到他们身上。就连统治安姆的六人议会，也逃不开他们的影响。~
== C0DRAKEJ ~他这点没夸大，老大。还有别的呢，呃，石心？~
== C0DSTONE ~*叹息* 是……我当年也曾是他们中的一员。你满意了么，考尔菲尔德，我把这事在你队长面前挑明了？~
== C0DRAKEJ ~我只是确认你没藏着什么秘密，朋友。过往的经历教了我一两件事。~
EXTERN C0DSTONE stoneheart8

CHAIN C0DSTONE stoneheart7
~他们无疑想利用随之而来的混乱……至于怎么利用，我想不出。~
== C0DRAKEJ ~真的？我还以为这儿所有人里，你最清楚不过，石心。来，讲给<PRO_HIMHER>听。~
== C0DSTONE ~*叹息* 是……我当年也曾是他们中的一员。你满意了么，考尔菲尔德，我把这事在你队长面前挑明了？~
== C0DRAKEJ ~我只是确认你没藏着什么秘密，朋友。过往的经历教了我一两件事。~
EXTERN C0DSTONE stoneheart8

CHAIN C0DSTONE stoneheart8
~不管他们有什么计划，我来这儿就是要它落不了地，也就是说，在他们动手之前把他们挖出来、清除掉。我需要你的帮助。~
== C0DRAKEJ ~...~
== C0DSTONE ~我知道我们这些时候的合作关系算不上好，考尔菲尔德，可这件事上，你总该愿意为正义把过去放下。我知道你至少做得到这一点。~
== C0DRAKEJ ~哈！行吧，只要能让我把影贼这群渣滓踩下一头，我就干。不过到底帮不帮你，得由<CHARNAME>定。~
END
++ ~我愿意帮忙。你要我们做什么？~ EXTERN C0DSTONE stoneheart9
++ ~这事对我们有什么好处？~ EXTERN C0DSTONE stoneheart10
++ ~我看不必了。我没兴趣去招惹安姆最大的犯罪组织。~ EXTERN C0DSTONE stoneheart11

CHAIN C0DSTONE stoneheart9
~我全心感激你，<CHARNAME>。我向你保证，你的风险会得到厚报。~
== C0DRAKEJ ~是，是，这都好说，可你到底知不知道这些影贼密探在哪儿？~
== C0DSTONE ~别把我看得那么低，德雷克。我也许不知道他们图什么，可我知道怎么把他们找出来。~
== C0DSTONE ~博德之门地下的下水道系统又复杂又危险——普通人都不愿往里深走，连铁拳也少进去。那无疑是能打能杀的罪犯的安全窝……正适合我们的猎物藏身。~
== C0DRAKEJ ~所以，他们藏在下水道里。听着倒简单。能不能说细点？你知道他们窝在哪个洞里？~
== C0DSTONE ~事实上，知道。我确切知道他们藏在哪儿。~
== C0DSTONE ~不过一起走太惹眼。我带你们过去，他们早在我们到之前就知道我们来了。城南区有一处格栅，能通到对的那几条隧道。但愿我能在那边跟你们会合。~
== C0DRAKEJ ~我们会到的。对吧，<CHARNAME>？~
== C0DSTONE ~但愿如此。回头见。~
END
IF ~~ DO ~AddJournalEntry(%Drake_BG1_Quest_1%,QUEST) EscapeAreaMove("%CentralSewers%",3613,2221,SE)~ EXIT

CHAIN C0DSTONE stoneheart10
~恐怕我自己的口袋里拿不出什么。我没什么私产，不像你朋友考尔菲尔德，而从上面要赏钱也得花时间。~
== C0DSTONE ~不过你可以这样想：影贼为着他们在这儿图的东西，无疑派了他们几个好手。他们身上带的贵重物件肯定不少。当然，我得留下一些作证物，可那些……无关紧要的，都归你。~
END
++ ~够好了。你要我们做什么？~ EXTERN C0DSTONE stoneheart9
++ ~我看不必了。我没兴趣去招惹安姆最大的犯罪组织。~ EXTERN C0DSTONE stoneheart11

CHAIN C0DSTONE stoneheart11
~我明白了……那真是遗憾。我恐怕没多少时间了，你若不肯相助，我就只能自己去完成任务。非得如此的话，独自去。~
== C0DRAKEJ ~等等，石心。至少告诉我们你打算去哪儿。也许<CHARNAME>会改主意。~
== C0DSTONE ~这话倒不错……我有理由相信影贼把窝安在博德之门地下的下水道里。去城南区，找一处格栅。它会带你到对的隧道。但愿你们很快改主意……我还会在那儿。~
== C0DRAKEJ ~想想吧，<CHARNAME>。影贼算是披着人皮走在安姆的渣滓里最坏的一批。能给他们一击，这样的机会不多。~
== C0DSTONE ~可惜，我不能再耽搁了。回头见……但愿。~
END
IF ~~ DO ~AddJournalEntry(%Drake_BG1_Quest_1%,QUEST) EscapeAreaMove("%CentralSewers%",3613,2221,SE)~ EXIT

CHAIN IF WEIGHT #-1
~OR(2)
!InParty("C0Drake")
Dead("C0Drake")
Global("C0DrakeStoneheart","GLOBAL",1)~ THEN C0DSTONE sh2
~我看你来了，<CHARNAME>。德雷克不跟我们一起去？~
END
++ ~你跟德雷克到底有什么过节，石心？~ EXTERN C0DSTONE sh2.1
++ ~这次他不去。我们走吧。~ EXTERN C0DSTONE sh2.2
++ ~我会回来的。~ EXTERN C0DSTONE sh2.0

CHAIN C0DSTONE sh2.0
~那我就等着。~
EXIT

CHAIN C0DSTONE sh2.1
~他没跟你说？既如此，也许这话从他嘴里说出来更好。~
= ~德雷克是个好人，虽说他……粗鲁。不管你我说话间看着像什么，那都是硬邦邦的关切。他若不在这儿听，由我来讲我们之间的事，对他不公平。我就说这些。~
= ~不过眼下，影贼的事更要紧。德雷克跟我们一起去吗？~
END
++ ~不。我们自己去。~ EXTERN C0DSTONE sh2.2
++ ~我会回来的。~ EXTERN C0DSTONE sh2.0

CHAIN C0DSTONE sh2.2
~嗯，可惜。我不信他会自愿放过这样的机会。不过，也只能如此。~
DO ~SetGlobal("C0DrakeStoneheart","GLOBAL",2)~
EXTERN C0DSTONE sh1.2

CHAIN IF WEIGHT #-1
~InParty("C0Drake")
Global("C0DrakeStoneheart","GLOBAL",1)~ THEN C0DSTONE sh1
~啊，好，你们来了。很高兴你们两位都在。我刚看见一个渣滓从这条隧道过去。他们确实在这儿。~
DO ~SetGlobal("C0DrakeStoneheart","GLOBAL",2)~
== C0DRAKEJ ~那我们还等什么？走，给他们点教训。~
== C0DSTONE ~我，呃，花时间仔细看过。看样子，他们藏身的地方有三个人。~
== C0DRAKEJ ~只有三个？算不上难对付。~
== C0DSTONE ~别小看他们。看衣着装备，其中两个是会用法术的。那就说明他们多半是高阶密探，不是一般的混混。~
EXTERN C0DSTONE sh1.3

CHAIN C0DSTONE sh1.2
~我，呃，花时间仔细看过。看样子，他们藏身的地方有三个人。看衣着装备，其中两个还会用法术。那就说明他们多半是高阶密探，不是一般的混混。~
EXTERN C0DSTONE sh1.3

CHAIN C0DSTONE sh1.3
~其中一个我认得——艾登·韦尔。他当年是某个分会里低阶的刀手。我不知道他怎么爬得这么快，但不可小看。即便我在公会里的时候，他使刀的本事也已出名。~
== C0DRAKEJ IF ~InParty("C0Drake")~ THEN ~一记锤子抡过去，那本事也帮不了他多少。~
== C0DSTONE ~我们该趁他们还没察觉我们在这儿就动手。准备好了吗，<CHARNAME>？~
END
++ ~是。走吧。~ EXTERN C0DSTONE sh1.4
++ ~还没。~ EXTERN C0DSTONE sh1.5

CHAIN C0DSTONE sh1.4
~好。跟我来，尽量别出声。我们准能打个措手不及。~
DO ~StartCutsceneMode()
	FadeToColor([10.0],0)
	Wait(4)
	DestroySelf()
    ActionOverride(Player1,LeaveAreaLUA("c0dar1","",[248.401],N))
    ActionOverride(Player2,LeaveAreaLUA("c0dar1","",[294.404],N))
    ActionOverride(Player3,LeaveAreaLUA("c0dar1","",[236.432],N))
    ActionOverride(Player4,LeaveAreaLUA("c0dar1","",[278.445],N))
    ActionOverride(Player5,LeaveAreaLUA("c0dar1","",[215.481],N))
    ActionOverride(Player6,LeaveAreaLUA("c0dar1","",[273.497],N))
	EndCutsceneMode()~ EXIT

CHAIN C0DSTONE sh1.5
~该做什么就做什么，但要快。他们要是发觉我们咬上了，事情就难得多了。~
EXIT

CHAIN IF WEIGHT #-1
~Global("C0DrakeStoneheart","GLOBAL",2)~ THEN C0DSTONE sh3
~瞧谁回来了。准备好去猎几个贼了吗，<CHARNAME>？~
END
++ ~是。走吧。~ EXTERN C0DSTONE sh1.4
++ ~还没。~ EXTERN C0DSTONE sh1.5

CHAIN IF WEIGHT #-1
~InParty("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
Global("C0DrakeStoneheart","GLOBAL",4)~ THEN C0DSTONE sh4
~这桩事够恶心，不过我很高兴它了结了。但愿这能让影贼在近期不敢动手。~
DO ~SetGlobal("C0DrakeStoneheart","GLOBAL",5)~
== C0DRAKEJ ~你找到他们起初想干什么的线索了吗？~
== C0DSTONE ~嗯，也许……他们争的那几份文件看着有意思……~
== C0DRAKEJ ~怎么？别吊我们胃口，说上面写了什么！~
== C0DSTONE ~等等，这不可能……什么？不，这……不可能。~
== C0DSTONE ~看来……我们都被引错了路。~
== C0DRAKEJ ~你到底在说什么，万斯？那些该死的纸上写了什么？~
EXTERN C0DSTONE sh4.1

CHAIN IF WEIGHT #-1
~OR(2)
!InParty("C0Drake")
StateCheck("C0Drake",CD_STATE_NOTVALID)
Global("C0DrakeStoneheart","GLOBAL",4)~ THEN C0DSTONE sh5
~这桩事够恶心，不过我很高兴它了结了。但愿这能让影贼在近期不敢动手。~
DO ~SetGlobal("C0DrakeStoneheart","GLOBAL",5)~
END
++ ~找到他们为什么在这儿的线索了吗？~ EXTERN C0DSTONE sh5.1

CHAIN C0DSTONE sh5.1
~嗯，也许……他们争的那几份文件看着有意思……~
== C0DSTONE ~等等，这不可能……什么？不，这……不可能。~
END
++ ~出什么事了？~ EXTERN C0DSTONE sh5.2

CHAIN C0DSTONE sh5.2
~看来……我们都被引错了路。~
EXTERN C0DSTONE sh4.1

CHAIN C0DSTONE sh4.1
~这些文件若没弄错……那影贼是来查第三方的。他们怀疑这一方才是此地与安姆间局势升温的真正挑动者……~
END
+ ~InParty("C0Drake")~ + ~你是说他们被人栽了赃？~ EXTERN C0DRAKEJ sh4.2
+ ~!InParty("C0Drake")~ + ~你是说他们被人栽了赃？~ EXTERN C0DSTONE sh4.3

CHAIN C0DRAKEJ sh4.2
~*哼* 好像这有什么区别。我就没见过哪个影贼配得上比这更好的下场。~
EXTERN C0DSTONE sh4.3

CHAIN C0DSTONE sh4.3
~若这是真的，那……我的活还没完。背后这人威胁的是整个剑湾，若他们想栽赃影贼，那必是从战争中有所图。~
== C0DSTONE ~很抱歉把你牵扯进来，<CHARNAME>。看来我为了一条假线索让你冒了险。~
END
+ ~InParty("C0Drake")~ + ~不打紧。这些人本就该被除掉。~ EXTERN C0DRAKEJ sh4.4
+ ~!InParty("C0Drake")~ + ~不打紧。这些人本就该被除掉。~ EXTERN C0DSTONE sh4.5
++ ~你现在打算怎么办，石心？~ EXTERN C0DSTONE sh4.5
+ ~InParty("C0Drake")~ + ~你最好觉得抱歉。~ EXTERN C0DSTONE sh4.5
+ ~!InParty("C0Drake")~ + ~你最好觉得抱歉。~ EXTERN C0DRAKEJ sh4.4

CHAIN C0DRAKEJ sh4.4
~那现在怎样，万斯？你得去查博德之门这儿的各个组织了，对吧？我敢说这可比找几个地下密探难多了。~
EXTERN C0DSTONE sh4.5

CHAIN C0DSTONE sh4.5
~看来我的差事一下子难了许多。我得在这城里继续查下去。铁王座最可疑，我该从那儿开始。~
== C0DSTONE IF ~InParty("C0Drake")~ THEN ~不过我得先向议会报告，让他们知道这儿出了什么事。那要花时间……我们大概有一阵见不着了，德雷克。~
== C0DRAKEJ IF ~InParty("C0Drake")~ THEN ~可惜。我这才开始原谅你呢。~
== C0DSTONE IF ~InParty("C0Drake")~ THEN ~呵。至少知道你有这份心，那是好事。不管怎样，能再跟你共事……真好，德雷克。<CHARNAME>，你也是。~
== C0DSTONE IF ~!InParty("C0Drake")~ THEN ~不过我得先向议会报告，让他们知道这儿出了什么事。与你共事很愉快，<CHARNAME>。~
END
+ ~!InParty("C0Drake")~ + ~我也一样。愿我们再见。~ EXTERN C0DSTONE sh4.6
+ ~InParty("C0Drake")~ + ~我也一样。愿我们再见。~ EXTERN C0DRAKEJ sh4.7
+ ~!InParty("C0Drake")~ + ~下次见面时，你可得给我备好赏钱。~ EXTERN C0DSTONE sh4.6
+ ~InParty("C0Drake")~ + ~下次见面时，你可得给我备好赏钱。~ EXTERN C0DRAKEJ sh4.7

CHAIN C0DRAKEJ sh4.7
~回头见，万斯。这期间别把自己逼得太狠。你要真把命送了，我说不定会掉一两滴泪。那对我自尊的伤害可就无可挽回了。~
== C0DSTONE ~呵，我记着了。告辞，德雷克。~
EXTERN C0DSTONE sh4.6

CHAIN C0DSTONE sh4.6
~哦，是，我差点忘了……你帮了忙，该有报酬，<CHARNAME>。我大概没有金子可给，不过这些东西或许对你有用。我在下水道某处找到一个箱子，里头装着这些法术卷轴，无疑是哪个法师落下的。至于那枚吊坠，嗯……~
DO ~GiveItemCreate("book06",Player1,0,0,0) GiveItemCreate("scrl1w",Player1,0,0,0) GiveItemCreate("scrl2g",Player1,0,0,0) GiveItemCreate("c0dlock",Player1,0,0,0)~
= ~德雷克该认得它——毕竟很久以前正是他把它送给我的。那是考尔菲尔德家的传家宝——两件中的一件，我记得另一件是他们的祖传战锤“寒信”。别问他为什么把它给了我。那是段挺难为情的故事。~
== C0DRAKEJ IF ~InParty("C0Drake")~ THEN ~你这一张嘴就把该说的都说了，你这该死的蠢货。~
== C0DSTONE IF ~InParty("C0Drake")~ THEN ~也许你说得对。不过它还是该还给你。毕竟要是让人知道你把它送了人，你父亲会大发雷霆。~
== C0DRAKEJ IF ~InParty("C0Drake")~ THEN ~*哼* 好像我们每次说话不都在互喷火似的？~
== C0DSTONE ~但愿这些够了。就这样，我想我该走了。愿诸神看顾你，朋友。~
END
IF ~~ DO ~RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",600) EscapeArea() AddJournalEntry(%Drake_BG1_Quest_2%,QUEST_DONE)~ EXIT