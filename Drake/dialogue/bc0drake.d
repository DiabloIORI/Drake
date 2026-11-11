BEGIN BC0DRAKE

// Ajantis
CHAIN IF ~InParty("Ajantis")
See("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeAjantis1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeAjantis1
~骑士团派你到这儿来做什么，阿詹提斯？觉得这小子得先历练历练才好成人，是吧？~
DO ~SetGlobal("C0DrakeAjantis1","GLOBAL",1)~
== %AJANTIS_BANTER% ~我来到剑湾是出于职责，这一点你应当很清楚，先生。~
== BC0DRAKE ~当然，当然，我说过别的话吗？其实我挺赞成的——像你这样的孩子就该出来，亲眼看看这世界是什么样子。这对你有好处。~
== %AJANTIS_BANTER% ~若真如此，那你又为什么在外头，德雷克？我只知道听来的说法，可你在如今的位子上已经干了快十年，是寻常任期的两倍。你怎么还没被授封骑士？~
== BC0DRAKE ~我就喜欢待在这个位置上，侍从。这样我能更近地看住像你这样的孩子。~
== %AJANTIS_BANTER% ~我……明白了。杜兰德教长想必不赞成。~
== BC0DRAKE ~*哼* 当然不赞成。别怕，阿詹提斯。跟我不同，骑士团会很乐意把你引上真正的阶位。只是别让这事冲昏了头。~
EXIT

CHAIN IF ~InParty("Ajantis")
See("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeAjantis2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeAjantis2
~说起来，法尔坎爵士这些日子怎么样？~
DO ~SetGlobal("C0DrakeAjantis2","GLOBAL",1)~
== %AJANTIS_BANTER% ~我上回见他时，还算好，考尔菲尔德爵士。~
== BC0DRAKE ~真的。那我猜他总算有工夫待在家里了？我上回听说，他跟他妻子之间的关系相当紧张。~
== %AJANTIS_BANTER% ~我上司的私事算不上我的事，先生。不过，是……据我听说，他很少有时间见家人。~
== BC0DRAKE ~那说到底，我走以后什么也没变。~
== %AJANTIS_BANTER% ~这事你为什么这么上心？凯尔登爵士过去很少提起你。我并不知道你们是朋友。~
== BC0DRAKE ~我们不是。不过……唉，要是阿斯卡特拉那边的情形跟我猜的一样，那我就向提尔祈求他早点见到他妻子。为他自个儿好。~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeAjantis3","GLOBAL",0)~ THEN %AJANTIS_BANTER% C0DrakeAjantis3
~我一直在想，我在光辉之心的高等殿堂里很少见到杜兰德教长。他常忙吗？~
DO ~SetGlobal("C0DrakeAjantis3","GLOBAL",1)~
== BC0DRAKE ~哦，是。他更喜欢能动起来的差事，这点我们一样。说实话，我倒觉得升迁一点也不适合他。~
== %AJANTIS_BANTER% ~我很少见到这位可敬的教长，可他看上去总是个公正、却常被惹恼的人。~
== BC0DRAKE ~其实那不全是因为骑士团。一半得算我把他逼得跳脚。~
== %AJANTIS_BANTER% ~丢人哪，德雷克！你对自己父亲一点敬意也没有吗？~
== BC0DRAKE ~别误会，小子，我挺喜欢我父亲。只是我不总同意他的想法，就这样。~
== %AJANTIS_BANTER% ~这可不是你那些……不成体统的举止的借口！~
== BC0DRAKE ~什么？哦，你糊涂了。那部分是我天生就这样。跟可敬的教长没半点关系。不，我们意见不合的是事情该怎么管。~
== %AJANTIS_BANTER% ~你……不赞成骑士团的做法？~
== BC0DRAKE ~我有我的不满，不过……我觉得我跟你说什么，都只会淹没在你的少不更事里，阿詹提斯。改天吧，改天我再跟你讲讲我的想法。~
EXIT

// Alora

CHAIN IF ~InParty("Alora")
See("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeAlora1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeAlora1
~嘿，小鬼。~
DO ~SetGlobal("C0DrakeAlora1","GLOBAL",1)~
== %ALORA_BANTER% ~哦，好漂亮……哎呀！嘿——嘿，德雷基。怎么了？~
== BC0DRAKE ~我的脸，正带着不赞成的神情俯视你。我想你知道为什么。~
== %ALORA_BANTER% ~什——什么？我一点也不知道你在说什么。~
== BC0DRAKE ~还给我。~
== %ALORA_BANTER% ~哎，可我不想嘛！它太可爱了！~
== BC0DRAKE ~你现在就把它给我……小姑娘。~
== %ALORA_BANTER% ~哼……好吧好吧。可我没想到像你这样粗声大气的大个子，会随身带着这么一只玻璃小马。嘻嘻……是不是有点小秘密？~
== BC0DRAKE ~不是你猜的那种，小鬼。那是我妹妹送的礼物。~
== %ALORA_BANTER% ~哦。对不起，德雷基，我不知道。可你不该把这么贵重的东西放在口袋里。要是被人偷了呢？~
== BC0DRAKE ~你是说像你这样的人？~
== %ALORA_BANTER% ~呃，对。我明白你的意思了。对不起，我不这么干了。~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeAlora2","GLOBAL",0)~ THEN %ALORA_BANTER% C0DrakeAlora2
~德雷基！你现在看着好——好——好——好阴沉。我就不能做点什么让你高兴吗？~
DO ~SetGlobal("C0DrakeAlora2","GLOBAL",1)~
== BC0DRAKE ~你可以别再当那个比我屁股大两倍的麻烦。这算个好开头。~
== %ALORA_BANTER% ~嘻嘻！不行，我是签了约的，不把你逗笑就不罢休！我这是在当好人呢！~
== BC0DRAKE ~那好，别再叫我德雷基。毕竟我还有个男人样要撑。虽然我想我那些醉酒的时候已经把这张脸撑破好几回了。~
== %ALORA_BANTER% ~哎呀，你不喜欢德雷基？我还觉得这名字挺可爱呢！~
== BC0DRAKE ~这听着就像我妹妹克劳迪娅会想出来的娃娃名。可惜，你没她一半可爱，这名字才勉强忍得下去。~
== %ALORA_BANTER% ~呸，那是我还不够可爱，是吧？那你等着，德雷基！我会甜得让你牙都掉光！你就等着瞧吧，哼！~
== BC0DRAKE ~这……倒是头一回。~
EXIT

// Branwen

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeBranwen1","GLOBAL",0)~ THEN %BRANWEN_BANTER% C0DrakeBranwen1
~嘿，那边，德雷克！能见到另一个懂得手里一把重锤有多值钱的牧师，真是好事。~
DO ~SetGlobal("C0DrakeBranwen1","GLOBAL",1)~
== BC0DRAKE ~我也是这么想的。能见到一个懂得欣赏男人手里那把又大又沉的锤子有多值钱的女人，也是好事。~
== %BRANWEN_BANTER% ~那么……你到底在暗示什么，嗯？我只是随口说了一句你在战场上的本事。~
== BC0DRAKE ~我的本事可不只在战场上，小姐。~
== %BRANWEN_BANTER% ~是吗？这倒值得知道。我好奇，你喜欢织补吗？我最爱的那双袜子正需要补一补。~
== BC0DRAKE ~你这套把戏骗不了我，布兰温。~
== %BRANWEN_BANTER% ~真可惜。我这才开始觉得有趣。~
EXIT

CHAIN IF ~InParty("Branwen")
See("Branwen")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeBranwen2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeBranwen2
~哦，停，停下。你都要把我逗哭了，布兰温。~
DO ~SetGlobal("C0DrakeBranwen2","GLOBAL",1)~
== %BRANWEN_BANTER% ~怎么了，德雷克？我到底做了什么冒犯你的事？~
== BC0DRAKE ~不，不，别问，你就再做一遍那个动作，不过为了安全，改用这根棍子。~
== %BRANWEN_BANTER% ~如你所愿。哈！坦普斯！~
== BC0DRAKE ~就那儿，停！看着你那条胳膊！要是我那亲爱的老父亲撞见我这样大张大合地挥兵器，他会把我打得青一块紫一块。~
== %BRANWEN_BANTER% ~我觉得我这套打法最能用上手臂的力气。你不同意？~
== BC0DRAKE ~哦，你砸开一个脑袋确实容易，只是不是你以为的那个脑袋。见鬼，布兰温，你拿的是锤子，不是棍上串的鱼！要是我因为兵器分量脱了手，我砸掉的是我身后的人，不是前面的！~
== %BRANWEN_BANTER% ~我不喜欢你擅自教我打仗，德雷克。我的本事是坦普斯的战师传给我的。~
== BC0DRAKE ~诸神在上，那他们准跟你一样倔。只要你这么挥兵器，我打仗时最好离你远点。~
EXIT

// Coran

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeCoran1","GLOBAL",0)~ THEN %CORAN_BANTER% C0DrakeCoran1
~嘿，那边，德雷克，这片土地上我最喜欢的新人类！想喝一杯吗，我那善解人意的朋友？~
DO ~SetGlobal("C0DrakeCoran1","GLOBAL",1)~
== BC0DRAKE ~我什么时候不想？来，跟我喝一壶麦酒。~
== %CORAN_BANTER% ~我原想我们可以就一杯更……有品位的酒来拉近交情。正好，我有一瓶最好的艾尔弗奎斯特，远在埃弗斯卡酿的。怎么样？~
== BC0DRAKE ~嗯，不敢说以前尝过多少精灵的酒。行，拿杯子来，精灵。咱们今天喝到趴下为止。~
== %CORAN_BANTER% ~呃……也许我该教教你品精灵酒的正确法子。那就一步一步来……~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(CITY)
Global("C0DrakeCoran2","GLOBAL",0)~ THEN %CORAN_BANTER% C0DrakeCoran2
~那么，你觉得那边那个金发姑娘怎么样，嗯？~
DO ~SetGlobal("C0DrakeCoran2","GLOBAL",1)~
== BC0DRAKE ~太瘦。她显然不是酒馆女侍，也不是干粗活的。~
== %CORAN_BANTER% ~呃……是，可她那一身好相貌呢？你有什么看法？~
== BC0DRAKE ~没有什么你自己想不出来的。不过我确实知道，你要是去搭讪，她会把你扇得找不着北。~
== %CORAN_BANTER% ~那我就信你。可你自己呢，嗯？也许她跟自己同类的人更聊得来？~
== BC0DRAKE ~我说了，她太瘦。~
== %CORAN_BANTER% ~有道理。~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeCoran3","GLOBAL",0)~ THEN %CORAN_BANTER% C0DrakeCoran3
~你身上全是意外，德雷克。对一个这么看重自己男子气概的人，我可没想到你的东西会这么……多情。~
DO ~SetGlobal("C0DrakeCoran3","GLOBAL",1)~
== BC0DRAKE ~你翻我背包了，是吧，精灵？我还以为我们是朋友。~
== %CORAN_BANTER% ~“翻”这词多难听，我的朋友。我只是觉得该确认一下有没有东西不见了。要告知你一声的念头，呃，从我脑子里滑过去了。~
== BC0DRAKE ~我信它不是头一个滑过去的念头。你那脑子比汗淋淋的商人的屁股还滑。~
== %CORAN_BANTER% ~我认罪，我的朋友，不过话说回来……那些……小玩意真不可能是你的吧？一个草编娃娃，一个木头玩具兵？更别说那匹粉玻璃做的马？这可不像你。~
== BC0DRAKE ~我身上有很多你不了解的地方，精灵。就说我看重身边人送的礼物，这话到此为止。~
EXIT

// Dynaheir

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeDynaheir1","GLOBAL",0)~ THEN %DYNAHEIR_BANTER% C0DrakeDynaheir1
~我本以为提尔的教会对神职者要求更严，德雷克。你的举止……与我熟悉的大不相同。像你这样的人怎么还能留在里面？~
DO ~SetGlobal("C0DrakeDynaheir1","GLOBAL",1)~
== BC0DRAKE ~哎呀，你伤我心了，黛娜希尔女士。你是说，一个懂得尽情享受生活的人，就不能同样怀着对正义与荣誉的热忱？~
== %DYNAHEIR_BANTER% ~确是如此，可你似乎把个人的欲求置于你的信条之上。~
== BC0DRAKE ~是这样吗，女士？在你的眼皮底下，我可曾有一回失职？我让巴希勒斯逍遥法外了吗？~
== %DYNAHEIR_BANTER% ~你把你的职责推到了<CHARNAME>的肩上。而你对我的嘲弄极不合体统。~
== BC0DRAKE ~我是个务实的人，女士。我们信仰里这样的人太少，所以我留下来了，尽管别人也许盼着我走。希望这答案能让你满意。~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeDynaheir2","GLOBAL",0)~ THEN %DYNAHEIR_BANTER% C0DrakeDynaheir2
~你出身贵族，不是吗，德雷克？~
DO ~SetGlobal("C0DrakeDynaheir2","GLOBAL",1)~
== BC0DRAKE ~是，我是，女巫女士。~
== %DYNAHEIR_BANTER% ~我可从没想到。你的举止跟我所识的贵族截然相反。~
== BC0DRAKE ~我确实常从“正经人”那儿招来这种反应。~
== BC0DRAKE ~你眼力不错，女士。说实话，考尔菲尔德家不是蓝血世家。我们家算是所谓“抬起来的贵族”。我们本是平民出身，直到在社会上得了个位子。~
== %DYNAHEIR_BANTER% ~我明白了。可真正的贵族，不止是排场，而在行事，而非血统。你的行事或许仍配得上贵族之名。你不这么认为吗？~
== BC0DRAKE ~哦，我当然这么认为。不过那，女士，是更伟大的人该走的路。我个人对眼下的活法挺满意。~
EXIT

// Edwin

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeEdwin1_BG1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeEdwin1
~瞧瞧，埃德温，你也许是个叫人受不了的混账，可我不否认你有品味。红色是新黑，是吧？~
DO ~SetGlobal("C0DrakeEdwin1_BG1","GLOBAL",1)~
== %EDWIN_BANTER% ~我穿这颜色是作为色彩与威望的象征，醉鬼。我看你什么也没穿成这样子。还是我的话超出了你的理解？~
== BC0DRAKE ~哈！不，我听得懂。说实话，你就算闭着嘴我也清楚。在我老家，你会被叫作“变态”或“行走的祸患”。~
== %EDWIN_BANTER% ~我明白了。既如此，我想我也该回敬一句：在伟大的塞伊，你顶多算个契约苦工。~
== BC0DRAKE ~哦，是这样吗？告诉我，他们是白日里就牵着奴隶游街吗？那样至少比安姆的买卖诚实些。~
== %EDWIN_BANTER% ~更好，蠢货。塞伊的奴隶被丢进角斗场，在里头跟别的牲畜拼杀，供更开化的存在取乐。~
== BC0DRAKE ~真的。那要这样，你怎么没跟他们一起打？我可以说你许多名头，可“开化”肯定不在其中。~
== %EDWIN_BANTER% ~你这无礼的……这种愚蠢的争辩配不上我。做个乖猴子，到别处找你的乐子去。也许你可以给自己找根香蕉。（对，我确信那能让你忙起来……）~
EXIT

// Eldoth

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeEldoth1","GLOBAL",0)~ THEN %ELDOTH_BANTER% C0DrakeEldoth1
~直到现在，我都以为光辉之屁那些家伙全是两腿间别着别针、对生活中好东西毫无品味的蠢货。看来我不全对。干得好，德雷克。~
DO ~SetGlobal("C0DrakeEldoth1","GLOBAL",1)~
== BC0DRAKE ~换别人说，我会当成称赞。可你，埃尔多斯……我觉得你的称赞远不如你的辱骂，我宁愿听后者。~
== %ELDOTH_BANTER% ~这是什么？你居然宁愿挨骂也不愿受夸？你真是稀有种！来瞧，<CHARNAME>，我看我们碰上了一头前所未见的怪物！~
== BC0DRAKE ~哦，不是。我只是觉得可以借个由头，把你那油滑的屁股打到下礼拜去。你脸上要是多个塌鼻子、掉几颗牙，大概好看些。~
== %ELDOTH_BANTER% ~我想我还是收回先前对你的印象。你其实比我最初以为的更蠢。真叫人佩服。~
EXIT

CHAIN IF ~InParty("Eldoth")
See("Eldoth")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeEldoth2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeEldoth2
~嘿，那边，吟游诗人！下回我们上战场，给你一句忠告。~
DO ~SetGlobal("C0DrakeEldoth2","GLOBAL",1)~ 
== %ELDOTH_BANTER% ~我确信你的忠告更适合念给一头骡子听，不过还是说吧。兴许挺有趣。~
== BC0DRAKE ~是，嗯，下回我们对上敌人，我建议你拿琵琶换下弓。我确信那对敌人更致命。~
== %ELDOTH_BANTER% ~你是说我的曲子能杀人？我不知道该觉得受宠若惊还是受辱。~
== BC0DRAKE ~也许吧。或者我是说，你的准头太差，我更担心站在你身边的人，而不是前头的。~
== %ELDOTH_BANTER% ~那下回交手，你何不守在我身边，看看这话对不对？我一定留一两支毒箭……当然，为了演示。~
== BC0DRAKE ~哦，拜托。好像我平时替你遮那没用的屁股还遮得不够多似的。~
EXIT

// Faldorn

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeFaldorn","GLOBAL",0)~ THEN %FALDORN_BANTER% C0DrakeFaldorn
~你身上的臭气就是文明最糟的样子，牧师。你走在自然之中，它的孩子都会因你的气味枯萎、转开脸。~
DO ~SetGlobal("C0DrakeFaldorn","GLOBAL",1)~ 
== BC0DRAKE ~我跟这儿任何人一样常洗澡，法尔多恩。跟你比，我洗得还多些。也许你也可以考虑哪天进趟澡堂。~
== %FALDORN_BANTER% ~呸！我们要多去林子里走走，我立刻就能洗掉城市的污秽。可惜，去不成。~
== BC0DRAKE ~那也许住在玻璃房子里的人就别扔石头了。~
== %FALDORN_BANTER% ~我说的臭气，是你沉迷于那些城市里造的脏酒养出来的。无疑那东西把你的身和心都毒了。~
== BC0DRAKE ~我就是喝一点。那又碍着谁了？至少我不靠砍树过活。~
== %FALDORN_BANTER% ~是真的，可你甘心淹在人类的污秽里，把自然给你的生命白白耗掉。单这一点就冒犯我。~
== BC0DRAKE ~那自然显然给我这条命，让我爱怎么用就怎么用。所以，恕我直言……忍着点吧，狼姑娘。~
== %FALDORN_BANTER% ~你的无知令我作呕。我不再跟你说话了。~
EXIT

// Garrick

CHAIN IF ~InParty("Garrick")
See("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeGarrick1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeGarrick1
~作为一个吟游诗人，加里克，你好像很难弄清话从哪儿起、到哪儿止。你确定这行当真适合你？~
DO ~SetGlobal("C0DrakeGarrick1","GLOBAL",1)~ 
== %GARRICK_BANTER% ~这话伤人，实在没道理，先生。我的吟游技艺也许不算最精，可我把每一盎司灵魂都放进表演里了。~
== BC0DRAKE ~你那点灵魂若只按盎司算，想必已经缩减得厉害。~
== %GARRICK_BANTER% ~太无礼了！我做了什么冒犯你的事，先生，你要这样羞辱我？~
== BC0DRAKE ~哦，没有，只是句提醒。硬往自己显然没多少天分的事里钻，只会落得一场灾难。最好找找你力气在哪儿，免得在你不想丢脸的人面前成了个花花公子。~
EXIT

// Imoen

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeImoen1_BG1","GLOBAL",0)~ THEN %IMOEN_BANTER% C0DrakeImoen1
~嘿，嘿，德雷克！有空吗？~
DO ~SetGlobal("C0DrakeImoen1_BG1","GLOBAL",1)~
== BC0DRAKE ~这会儿不行，小鬼。到别处玩去。~
== %IMOEN_BANTER% ~呸！你这人真讨厌！你们牧师不该更有耐心、更……怎么说呢，更好心吗？~
== BC0DRAKE ~我侍奉的是正义之神，小鬼，不是好心之神。而正义常常……不好心。~
== %IMOEN_BANTER% ~可它总是公平的，对吧？~
== BC0DRAKE ~哈！不错。你在学。~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeImoen2_BG1","GLOBAL",0)~ THEN %IMOEN_BANTER% C0DrakeImoen2
~哦，这是什么？这么漂亮的琥珀色……不知道尝起来是不是跟看起来一样好？~
DO ~SetGlobal("C0DrakeImoen2_BG1","GLOBAL",1)~
== BC0DRAKE ~嘿，不行，我看不成！那东西你一滴都不该碰。~
== %IMOEN_BANTER% ~别把我当小孩，德雷克！我成年了。再说，老胖子那几样招牌我可喝过不少。~
== BC0DRAKE ~我信，可那瓶白兰地太好了，配不上你的舌头。~
== %IMOEN_BANTER% ~哎，来嘛，德雷克。你喝麦酒跟喝水似的，还真要来扫人兴？来嘛，就一口！~
== BC0DRAKE ~*叹息* 怎么有人能这么招人烦？~
== %IMOEN_BANTER% ~哈！靠天天烦<CHARNAME>练出来的，还能怎么着？~
== BC0DRAKE ~呸，走开吧。我得找个好地方把这东西藏起来。真是差一点……~
EXIT

CHAIN IF ~InParty("BIMOEN")
See("BIMOEN")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeImoen3_BG1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeImoen3
~嘿，小鬼。我知道你干了什么。不用装。~
DO ~SetGlobal("C0DrakeImoen3_BG1","GLOBAL",1)~
== %IMOEN_BANTER% ~噗……呃呵呵！没错，被你逮住了！不过你脸上那副惊恐的样子没我预想的那么厉害。我还有点失望。~
== BC0DRAKE ~我不知道你在我祈祷书里画这些荒唐画，指望我什么反应。我觉得挑个眉、皱个脸挺合适，你不觉得吗？~
== %IMOEN_BANTER% ~是啊，当然。可你知道吗，我看见你嘴唇抖了一下，像是忍着不笑。~
== BC0DRAKE ~嗯，是挺逗，虽说有点幼稚。我得承认，一个装天真的小鬼，脑子里还真不干净。~
== %IMOEN_BANTER% ~哈！你懂我！~
== BC0DRAKE ~不过，我看这算是亵渎提尔的圣物。你就不怕被雷劈？~
== %IMOEN_BANTER% ~呃……你这么一说……你会保证那事不发生吧？~
== BC0DRAKE ~不敢保证。算你走运，我觉着还有点好笑。~
== %IMOEN_BANTER% ~（千万别让他看见我对他那些祷词做的“改进”……）~
EXIT

// Jaheira

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeJaheira1_BG1","GLOBAL",0)~ THEN %JAHEIRA_BANTER% C0DrakeJaheira1
~注意你的眼睛往哪儿飘，德雷克。你若因为走神受了伤，我可不会来治你。~
DO ~SetGlobal("C0DrakeJaheira1_BG1","GLOBAL",1)~
== BC0DRAKE ~我的眼睛朝着我们前方，我的女士。只是你走在我前头。~
== %JAHEIRA_BANTER% ~我没耐心陪你玩孩子气的把戏，德雷克。我一放慢脚步，你就跟着放慢，好留在我后头。我对你的注意力在哪儿毫不怀疑。~
== BC0DRAKE ~哈！我赔不是，贾希拉，真心赔不是。不过听你这口气，你早就察觉了，却到这会儿才开口。~
== %JAHEIRA_BANTER% ~我起初觉得该给你个善意的余地。我知道大多数提尔信徒还有点底线，不至于盯着有夫之妇看。~
== BC0DRAKE ~啊。话够尖的，我的女士。看得出你丈夫为什么被你的每句话吓得服服帖帖。~
== %JAHEIRA_BANTER% ~什么？你这个——~
== BC0DRAKE ~哈！我开玩笑的，贾希拉。别怕，我不会再用目光冒犯你。只是看你怒气变成窘态，挺有意思。~
== %JAHEIRA_BANTER% ~*叹息* 你当初怎么会让这种浪荡子混进我们队里，<CHARNAME>？~
EXIT

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeJaheira2_BG1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeJaheira2
~竖琴手，嗯？我记得安姆也有竖琴手活动。我欠几个竖琴手人情，他们当年帮过我。你熟悉他们吗？~
DO ~SetGlobal("C0DrakeJaheira2_BG1","GLOBAL",1)~
== %JAHEIRA_BANTER% ~……是。认得几个。不过，像你这样的人会跟竖琴手打交道，倒叫人担心。你做了什么引来他们的注意？~
== BC0DRAKE ~我……也许……时不时插手过他们的事。说来讽刺，竖琴手自己不也以此出名。~
== %JAHEIRA_BANTER% ~这……听着叫人不安。我请你讲讲你跟我的同道相遇的经过。~
== BC0DRAKE ~哦，算不上什么了不起的故事。我常泡在阿斯卡特拉的穷人区。有一回，我在本地一家酒馆遇上个陌生人。我们聊着，喝了几杯，那人才漏出嘴，说他在追一伙散塔林会的密探。~
== %JAHEIRA_BANTER% ~他竟就这么告诉你了？我从没听说哪个竖琴手这么蠢。~
== BC0DRAKE ~我也许……怂了他几句。我干这个有天赋……哎，别那么瞪我！我哪知道会这样。反正，这种事我不能不管，就决定自己去找那些密探，好给他们一个友好的见面礼。~
== BC0DRAKE ~好，我确实找着他们了。我那位新结交的竖琴手朋友也找着了……我们一块儿把他们清了，那时候我才知道另一个人是竖琴手。他说他也该把我杀掉，不过我猜那几杯友好的酒让他心软了。我们和平分手，我再没见过他。只是偶尔会……从不知名的来路收到点风声。~
== %JAHEIRA_BANTER% ~你比你自以为的更走运，德雷克。有些竖琴手为守秘密毫不留情。希望这次经历让你长了记性。~
EXIT

// Kagain

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeKagain1","GLOBAL",0)~ THEN %KAGAIN_BANTER% C0DrakeKagain1
~你就让足足五千枚金币从你手里滑进<CHARNAME>的口袋，德雷克。你是天生就傻，还是给你那宝贝骑士团当差把脑子耗空了？~ 
DO ~SetGlobal("C0DrakeKagain1","GLOBAL",1)~
== BC0DRAKE ~我只是明白事理，我这贪财的非朋友。那金子要是落进我手里，我无疑会拿它浇一场金色的酒雨，全糟蹋掉。~
== %KAGAIN_BANTER% ~哼。至少你不会把它糟蹋在提尔的某座雕像或别的破烂上头。~
== BC0DRAKE ~正是，卡盖恩。那金子什么时候给需要它的人带来过好处？~
== %KAGAIN_BANTER% ~可你本可以拿那么多金子给自己办多少事。如今你这辈子都见不着它了。~
== BC0DRAKE ~金子揣在口袋里就是废物，这道理商人该最清楚。投进<CHARNAME>的成功里不是更值？你无疑也做过差不多的决定……包括眼下为<PRO_HISHER>效力。~
== %KAGAIN_BANTER% ~嗯。你说到点子上了，教堂小子。你倒没那么蠢。~
EXIT

// Khalid

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeKhalid1","GLOBAL",0)~ THEN %KHALID_BANTER% C0DrakeKhalid1
~你——你知道吗，德雷克……~
DO ~SetGlobal("C0DrakeKhalid1","GLOBAL",1)~
== BC0DRAKE ~什么？嗯，我发誓你刚才说了什么，卡立德。~
== %KHALID_BANTER% ~我本想提——提——提一提你那特别的战斗架势。那是安姆士兵常学的一种，不是吗？~
== BC0DRAKE ~哦，你认得出来？我可没想到你在军里待过，我的朋友。~
== %KHALID_BANTER% ~其——其实是，我在卡——卡林珊的民兵队里受过几年训。~
== BC0DRAKE ~真的？自愿的，还是被征的？我倾向于信后者，不过最好听你自己说。~
== %KHALID_BANTER% ~那是我……我自己的选择，其实。我……我不是父亲最疼的那个，而那是唯一让我找到目——目的的事。~
== BC0DRAKE ~……你也是，嗯？听着，我要是说过什么让你觉得受冒犯，别往心里去。我这人说话不大过脑子。~
== %KHALID_BANTER% ~没——没有冒犯，德雷克。也许改天，我们可——可以比比当兵的经历？~
== BC0DRAKE ~我看没什么不行。酒我备好。~
EXIT

CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(OUTDOOR)
!TimeOfDay(NIGHT)
Global("C0DrakeKhalid2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeKhalid2
~早啊，卡立德，我勇敢的朋友！今天正适合去铲除些邪恶，你不觉得吗？~ 
DO ~SetGlobal("C0DrakeKhalid2","GLOBAL",1)~
== %KHALID_BANTER% ~是——是的……正——正如你所说，德雷克。~
== BC0DRAKE ~我听见的是什么，我的朋友？恐惧？不，当然不会！我们天天并肩在前线面对敌人，有人的也有兽的。到底能出什么问题，我倒想知道。~
== %KHALID_BANTER% ~这——这样的话有什么来由吗，德雷克？我——我不想错判，可听起来你是在嘲——嘲弄我。~
== BC0DRAKE ~得了，你真把我看得这么低？我们过去干的事，难道不比我刚说的多得多？~
== %KHALID_BANTER% ~当——当然有。可为——为什——~
== BC0DRAKE ~那我提一提我们平常做的事，那些你一向勇猛面对的事，为什么忽然让你这么难受，嗯？~
== %KHALID_BANTER% ~你——你这么一说……担心确实有点傻——傻。~
== BC0DRAKE ~知道你这么想我很高兴，我的朋友。来，走吧，去找我刚说的那邪恶，教它一两课什么叫正义。~
EXIT

// Kivan

CHAIN IF ~InParty("Kivan")
See("Kivan")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeKivan1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeKivan1
~你知道，基万，别人也许会说你这复仇之心不健康，或是自寻死路，可换我处在你，我也会气得不行。~
DO ~SetGlobal("C0DrakeKivan1","GLOBAL",1)~
== %KIVAN_BANTER% ~那你是头几个这么说的人，德雷克。你可曾像我一样，因为一个残忍邪恶的怪物失去过心上人？~
== BC0DRAKE ~也许不像你跟你妻子那么亲，可是，是，我失去过许多好友，眼看杀他们的人逍遥自在。其中有些人，正是我被命令去效力的。~
== %KIVAN_BANTER% ~连给你所爱之人安宁都做不到的，算什么正义？~
== BC0DRAKE ~这是我这辈子的问题，我那耳朵尖的朋友。要说，我倒觉得你比我容易。我要去敲塔佐克的天灵盖，没人会眨眼。说不定他们还会因此敬我。~
== %KIVAN_BANTER% ~你觉得我更容易？我知道你心是好的，可你若别把我的处境说得这么轻描淡写，我会感激。~
== BC0DRAKE ~有道理，那就不再说这个了。这种情形下，我看最合适的是喝个烂醉，把烦心事忘了。听着怎么样？~
== %KIVAN_BANTER% ~我谢你的好意，但我不去。有些人必须带着分寸去用手中的家伙。~
EXIT

CHAIN IF ~InParty("Kivan")
See("Kivan")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeKivan2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeKivan1
~基万，我的朋友。我有个问题想问。~
DO ~SetGlobal("C0DrakeKivan2","GLOBAL",1)~
== %KIVAN_BANTER% ~你问吧。我不保证回答。~
== BC0DRAKE ~那个夺走你心上人性命的凶手……你报了仇，就会满足吗？~
== %KIVAN_BANTER% ~我看不出这问题对我有什么意义，德雷克。~
== BC0DRAKE ~你若宁愿我直说，那确实没多少意义。可我就是好奇。你本心是个好人，可你知道……这一生能做的善事，比杀掉一个怪物要多……不管它罪有多重。~
== %KIVAN_BANTER% ~也许你说得对。可复仇是我仅剩的动力。一旦杀了塔佐克，我就不打算在这个位面多留。我要去阿尔凡多，我的德赫里安娜在那儿等我。~
== BC0DRAKE ~随你。我知道光凭我的话改不了你的主意。可这真是白瞎了一个好人。~
EXIT

// Minsc

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeMinsc1_BG1","GLOBAL",0)~ THEN %MINSC_BANTER% C0DrakeMinsc1
~德雷克，你打仗很有一套，锤子使得厉害！可你不把自己当战士。布对此很困惑。~
DO ~SetGlobal("C0DrakeMinsc1_BG1","GLOBAL",1)~
== BC0DRAKE ~我有点担心你连困惑都得靠你的宠物……呃，朋友，替你困惑，大个子。没错，我受过提尔教会和军队几年的训练。可我首先还是个牧师。~
== %MINSC_BANTER% ~明斯克记得，拉舍曼有很多懂得草药、懂得治伤、还懂挠背止痒的智者。他们说过许多有智慧的话，虽然明斯克有时听不懂。可明斯克从没见过他们拿起武器、踏上揍人屁股的路。~
== BC0DRAKE ~嗯……我能说什么？我看我们南方人喜欢讲效率，样样都学。不过我承认，我从来记不住草药那一套。你要是痒了，别来找我。~
== %MINSC_BANTER% ~布现在更困惑了。你是战士，又不是战士。你也是智者，又不是智者！你说话绕圈圈！~
== BC0DRAKE ~我——哦，伟大的提尔，我把自己弄进什么了？我得跟你解释一整<DAYNIGHT>……~
== BC0DRAKE IF ~InParty("DYNAHEIR")~ THEN ~这就是你日夜得受的，女士？我很同情你。~
== %DYNAHEIR_BANTER% IF ~InParty("DYNAHEIR")~ THEN ~这……知道得多了就会容易些。你该放过我们这位朋友，明斯克。~
EXIT

// Montaron

CHAIN IF ~InParty("Montaron")
See("Montaron")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeMontaron1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeMontaron1
~胆子，蒙塔隆。你腰上挂的是胆子。晾干的。请告诉我那不是人的。~
DO ~SetGlobal("C0DrakeMontaron1","GLOBAL",1)~
== %MONTARON_BANTER% ~还有什么？（咧嘴笑）想尝一口吗？~
== BC0DRAKE ~我很想说是，可惜不是。我怀疑那东西对我消化不好。说到底，对我长远的健康也不好。~
== %MONTARON_BANTER% ~啊，反正就是逗你玩，软膝盖。~
== BC0DRAKE ~那你为什么把它凑到嘴边？~
== %MONTARON_BANTER% ~嘿嘿。我从没说过我自己怎样，对吧？~
== BC0DRAKE ~不知怎么，我觉得你还在耍我。至少，我向提尔祈愿你是。~
EXIT

// Quayle

CHAIN IF ~InParty("Quayle")
See("Quayle")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeQuayle","GLOBAL",0)~ THEN BC0DRAKE C0DrakeQuayle
~我一辈子没见过几个侏儒，可我在安姆碰上的每一个都像是满脑子萝卜的疯子。你只占了一半，奎尔。你另一半怎么了？~
DO ~SetGlobal("C0DrakeQuayle","GLOBAL",1)~
== %QUAYLE_BANTER% ~你还需要问吗，高个子铁脑袋？啊，当然你需要。毕竟不是每个人都能有我这样的伟大智慧。~
== BC0DRAKE ~那就开导开导我，无所不“聪明”的那位。~
== %QUAYLE_BANTER% ~你看，这话也许超出你那小脑袋的理解，可我是天生带着无尽的知识出生的。我身边所有侏儒都嫉妒我，想学我，全是白费。他们不肯认自己不如人，就转去练别的本事，好跟我的才华区分开。跟得上吗？~
== BC0DRAKE ~有意思，不过……我见过的每个侏儒之间都有相似之处。你跟他们谁都不像。~
== %QUAYLE_BANTER% ~那是因为没别人像我，我的大个子朋友。我和我这颗了不起的脑子都是独一份。~
== BC0DRAKE ~这点我不怀疑。*偷笑*~
EXIT

// Safana

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeSafana1","GLOBAL",0)~ THEN %SAFANA_BANTER% C0DrakeSafana1
~说真的，亲爱的德雷克，你听说过一样东西叫镜子吗？你看上去就像有人把一只猩猩塞进板甲里，还教它说话。~
DO ~SetGlobal("C0DrakeSafana1","GLOBAL",1)~
== BC0DRAKE ~是，我确信你对会说话的猩猩很了解，萨法娜。你睡过几只？嗯？~
== %SAFANA_BANTER% ~也许有一两只还合格。当你是我能拿来比较的最接近的人，要记住可就*太*难了。至少那些男人身上没有廉价麦酒的臭味。~
== BC0DRAKE ~看来我的气味能当驱赶恶毒鹰身女的药。这倒不错！~
== %SAFANA_BANTER% ~哎呀，德雷克，你是在跟我说你觉得我不迷人吗？~
== BC0DRAKE ~相信我，我还没醉到那份上。你身上那股“轻浮女子”的味儿……我在安姆见得太多了。~
== %SAFANA_BANTER% ~你的暗示几乎伤了我。几乎。~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeSafana2","GLOBAL",0)~ THEN %SAFANA_BANTER% C0DrakeSafana2
~我确实喜欢你的脸，亲爱的。我只是觉得该让你知道。~
DO ~SetGlobal("C0DrakeSafana2","GLOBAL",1)~
== BC0DRAKE ~是这样吗？我还以为你更中意那种瘦瘦的、女孩子气的类型。~
== BC0DRAKE IF ~InParty("CORAN")~ THEN ~毕竟，你好像把全副注意力都留给科兰了。我倒不怎么意外。他们总往精灵身上扑。~
== %SAFANA_BANTER% ~哦，我不是那个意思。我只是在说，你那张脸多自鸣得意啊。非常……想让人揍一拳。~
== BC0DRAKE ~哈！那你最好排队去。这话我听得太多，比揍本身还疼。~
== %SAFANA_BANTER% ~有时候，亲爱的德雷克，我在想你是不是比我还恨你自己。~
EXIT

CHAIN IF ~InParty("Safana")
See("Safana")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeSafana2","GLOBAL",1)~ THEN BC0DRAKE C0DrakeSafana3
~尽管你毛病一堆，萨法娜，我得承认，你也有张好看的脸。看着舒服。~
DO ~SetGlobal("C0DrakeSafana2","GLOBAL",2)~
== %SAFANA_BANTER% ~你只说对了一半，德雷克。要是你的眼睛没被那么多胡话糊住，你就会认出来我*没有*毛病，亲爱的。不过这话我还是收下。~
== BC0DRAKE ~啊——啊——啊，我还没说完。我从没说我觉着你的脸好看——嗯，也许我觉得，可不是你猜的那种。不，其实是因为你的脸让我想起我亲爱的母亲。~
== %SAFANA_BANTER% ~你是要把我比作五十好几的干瘪老妇？真刻薄，德雷克。~
== BC0DRAKE ~我看你最好把它当成称赞，萨法娜，我还得加一句，那是我能在你和我母亲之间找到的*唯一*相似。她不会把男人绑在床架上、衣服扔地上、钱包拿走。~
== %SAFANA_BANTER% ~哎呀，这样的暗示……你就这么恨我，亲爱的？你的话多伤我。~
== BC0DRAKE ~我不恨你，萨法娜。你威胁得还不够多。~
EXIT

// Shar-Teel

CHAIN IF ~InParty("Sharteel")
See("Sharteel")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeSharteel","GLOBAL",0)~ THEN BC0DRAKE C0DrakeSharteel
~怎么，看来我们猎到了一头凶性大发的母熊。睡错床沿了，莎尔-蒂尔？~
DO ~SetGlobal("C0DrakeSharteel","GLOBAL",1)~
== %SHARTEEL_BANTER% ~别跟我说话，好色的猪。~
== BC0DRAKE ~谁？你开始胡思乱想了，大姑娘？声音是从这儿这位跟你说话的英俊恶魔嘴里出来的。~
== %SHARTEEL_BANTER% ~你听见我说了，猪。我对你的讥讽没兴趣。顶多，我手里有一把刀，能让你闭嘴。~
== BC0DRAKE ~割了我的舌头，是吧？来吧，你能想点更好的。~
== %SHARTEEL_BANTER% ~我在想的东西要低得多，低得多。继续说。那只会让割起来更解气。~
== BC0DRAKE ~哈！你毕竟还有点机锋，莎尔-蒂尔。好，我知道什么时候该别去戳一头睡着的熊。~
EXIT

// Skie

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeSkie1","GLOBAL",0)~ THEN %SKIE_BANTER% C0DrakeSkie1
~你胡子又露出来了，德雷克。你母亲怎么能让你这么邋遢就出门？我母亲要是我早晨头发没梳好，她准要发作。~
DO ~SetGlobal("C0DrakeSkie1","GLOBAL",1)~
== BC0DRAKE ~*叹息* 斯基，斯基，斯基……~
== %SKIE_BANTER% ~什么？我说错什么了吗？~
== BC0DRAKE ~不完全是。只是我很纳闷，你的懵懂能延伸到这份上，你好像根本没意识到我们在哪儿。~
== %SKIE_BANTER% ~我们在哪儿？这算是什么刁钻问题吗？我们当然是在跟<CHARNAME>旅行啊，傻瓜。~
== BC0DRAKE ~哦，好。你总算明白了这些。那我这模样到底算什么胡话？你打招呼的方式，说个<DAYEVENING>好？~
== %SKIE_BANTER% ~不，当然不是。我只是觉得你该打扮得更像你本该是的那个贵族。~
== BC0DRAKE ~相信我，你是我见过的第一个真把考尔菲尔德家当回事、不只是当抬高了的农夫的贵族。倒不是我在意这个。~
== %SKIE_BANTER% ~天哪，你皱着眉，配上那把乱胡子，好吓人。我又说错什么了吗？~
== BC0DRAKE ~*叹息* 没有，斯基……没有。别理我。~
EXIT

CHAIN IF ~InParty("Skie")
See("Skie")
InParty("Eldoth")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeSkie2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeSkie2
~我知道你父亲大概忙得没工夫好好教你，斯基，可你不至于这么瞎、这么无知吧？~
DO ~SetGlobal("C0DrakeSkie2","GLOBAL",1)~
== %SKIE_BANTER% ~哼！你这人真无礼。我这回又做错了什么？~
== BC0DRAKE ~小鬼，你每做错一件事给我一枚铜板，我都能自己开家酿坊了，可你对你那所谓“心上人”的痴迷，至少值一箱金子。~
== %SKIE_BANTER% ~埃尔多斯？他有什么不好？至少他比你干净，你要是没注意的话。~
== BC0DRAKE ~当然。可他内里比爬虫还黏，唱起歌来我耳朵流血。你怎么就没看出来，我真不懂。~
== %SKIE_BANTER% ~住口！我不许你站在这儿诽谤我的心上人！你要是再说埃尔多斯一句坏话，我就……我就——~
== BC0DRAKE ~哦，行行好，闭上嘴吧，小鬼。你这一通闹脾气，只会把自己弄成个笑话。~
EXIT

// Tiax

CHAIN IF ~InParty("Tiax")
See("Tiax")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeTiax","GLOBAL",0)~ THEN BC0DRAKE C0DrakeTiax
~那么，提亚克斯，我那肮脏、矮小、可爱又可怖的疯朋友……已经拿下世界了吗？~
DO ~SetGlobal("C0DrakeTiax","GLOBAL",1)~
== %TIAX_BANTER% ~嗯？你真蠢到要问这个吗，愚蠢的人类？！提亚克斯的王朝兴起是必定的！~
== BC0DRAKE ~是，是，我信，可我说的是“现在”。我没看见博德之门或安姆升起绣着塞瑞克徽记的旗子，对吧？~
== %TIAX_BANTER% ~你见到塞瑞克旗帜的那天，就是你此生最后一天，提尔异端！趁还有时辰，尽情享乐吧，你的日子屈指可数了。~
== %TIAX_BANTER% ~除非……~
== BC0DRAKE ~哦，诸神。这就是你要逼我改信的那一段，对吧？~
== %TIAX_BANTER% ~看来你没看上去那么迟钝。好！你也许终究对提亚克斯的疆域有点用处……~
== %TIAX_BANTER% ~……当个铲马粪的契约苦工！~
== BC0DRAKE ~那就跟再当一回兵一样，嗯？我很失望，你就想出这个。等你想出更好的……或者更坏的，再叫我。~
== %TIAX_BANTER% ~哼！你最好相信我会的，蠢货！你就日日畏缩、忐忑等着你的命数吧！~
EXIT

// Viconia

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeViconia1BG1","GLOBAL",0)~ THEN %VICONIA_BANTER% C0DrakeViconia1
~你一身醋和汗的味儿，罗瑟。请站到下风处。~
DO ~SetGlobal("C0DrakeViconia1BG1","GLOBAL",1)~
== BC0DRAKE ~我？哎呀，我几乎没注意到。多谢你告知我，维康尼亚。~
== %VICONIA_BANTER% ~你这些俏皮话让我想起阿拉克-提尼利斯受训的年轻人，贾卢克。他们受的罚是割掉舌头。可惜地表不兴这种规矩。~
== BC0DRAKE ~哦，有些地方确实兴。只是不是我长大的地方。~
== %VICONIA_BANTER% ~那你也许该找个兴这规矩的地方，把你那条舌头在那儿摇。我确信他们比我更欣赏这份机智。~
== BC0DRAKE ~可要是没了舌头，我上哪儿去享受费伦最好的廉价酒和陈面包的滋味？算了，多谢。~
EXIT

CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeViconia2BG1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeViconia2
~嘿，那边，黑暗的女主人！据说幽暗地域的居民懂得用蘑菇酿好酒的法子。正好，我这儿有上回穿行自然之乐时采的一堆蘑菇。也许你愿意行个好……？~
DO ~SetGlobal("C0DrakeViconia2BG1","GLOBAL",1)~
== %VICONIA_BANTER% ~你的无知到了无法理解的地步，伊布利斯。幽暗地域的酿造用的是远比地表泥土里长出来的更复杂的东西。~
== BC0DRAKE ~嗯。那可真叫人失望。我还以为你或许会高兴尝一口家乡味。~
== %VICONIA_BANTER% ~说到卓尔的调配，蠢货，把普通饮料和毒药分开可不容易。错的一剂下去，就能让你悬在生死之间。~
== BC0DRAKE ~我这辈子试过够多恶心的酒，愿意赌一把。再说，我要是倒了，你是个够本事的治伤者，会拉我一把，对吧？~
== %VICONIA_BANTER% ~想到你的命或许能落在我手里，倒挺诱人……不过不必了。你浪费我的时间够多了。~
EXIT

// Xan

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeXan1","GLOBAL",0)~ THEN %XAN_BANTER% C0DrakeXan1
~在这群没指望的人里，至少看到一个接受我们生命之虚妄的人，倒也提神，德雷克。~
DO ~SetGlobal("C0DrakeXan1","GLOBAL",1)~
== BC0DRAKE ~什么，谁？除了你，我们这儿还有别人我不知道的？~
== %XAN_BANTER% ~我说的就是你，当然。~
== BC0DRAKE ~哈！你一定在开玩笑。我觉得活着挺快活。~
== %XAN_BANTER% ~可你却选择在恶习里把命耗掉。不管你知不知道，你已经接受了自己的终局，认了命。~
== BC0DRAKE ~你呀，我的朋友，把事情看得太重。下回我们进酒馆，你该给自己来一两杯。那能一下子把你的苦闷翻个面。~
== %XAN_BANTER% ~很遗憾，我必须谢绝。我毫不怀疑你们人类的酒会把我的脑子糊住，让我忘了我们终将面对的终局。~
EXIT

CHAIN IF ~InParty("Xan")
See("Xan")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeXan2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeXan2
~所以你认为生命是虚妄的，赞。那既然一切都注定，何不尽量榨点乐趣出来？~
DO ~SetGlobal("C0DrakeXan2","GLOBAL",1)~
== %XAN_BANTER% ~为什么？（叹气）因为那毫无意义，还能为什么？去找些毫无意义的妄想逗自己一时开心，只会让那不可避免的事更痛苦。~
== BC0DRAKE ~哦，得了。总不会比你本来这一堆苦闷更糟吧？~
== %XAN_BANTER% ~如果说我的经历教了我一件事，那就是一切总能更糟。~
== BC0DRAKE ~确实。那你打算怎么办，就闷闷不乐地耗到彻底触底？~
== %XAN_BANTER% ~我能，可那有什么意义？（叹气）这事不管怎样都会发生。~
EXIT

// Xzar 

CHAIN IF ~InParty("Xzar")
See("Xzar")
AreaType(WEATHER)
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeXzar1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeXzar1
~也许是你的疯病压过了你的理智，也许是你母亲压根没教好你，可你总知道在下雨吧，克萨？也许遮一下头比较合适。~
DO ~SetGlobal("C0DrakeXzar1","GLOBAL",1)~
== %XZAR_BANTER% ~可我为什么要那样做？妈妈又为什么要教我那个？雨不让人愉快吗？哎呀，我在这儿简直乐得发光！我几乎忍不住要唱歌！~
== BC0DRAKE ~请别唱。~
== %XZAR_BANTER% ~哦，别当这种扫兴的傻蛋。我得告诉你，我能唱出挺快活的调子！当然，配上人骨和血筋做的乐器更好，可就算没有，也值得一听！~
== BC0DRAKE ~是，我信，克萨，可我总有种不祥的预感，你的调子会比你使的法术更致命。而这，我的疯朋友，可不是容易的事。~
== %XZAR_BANTER% ~哼！你要这样，那就随你。我就跳过唱歌，直接来段舞！哦，绚丽、多雨、阴沉的一天！~
== BC0DRAKE ~你今晚要是打摆子，就会后悔的。~
== %XZAR_BANTER% ~我知道，德雷克，那不美妙吗？~
== BC0DRAKE ~*哼* 也许你淋个透，到头来对我们大家都有好处。别的不说，至少对你那股恶臭有点用。~
EXIT

CHAIN IF ~InParty("Xzar")
See("Xzar")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeXzar2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeXzar2
~今天剥了一两只兔子，克萨？我想不出你还能为什么这么高兴。~
DO ~SetGlobal("C0DrakeXzar2","GLOBAL",1)~
== %XZAR_BANTER% ~呸！谁会蠢到去剥兔子的皮？！我疼爱那些小东西，你不知道吗？~
== BC0DRAKE ~真的？~
== %XZAR_BANTER% ~哦，当然。我特别喜欢看它们的骨头跳个小舞。~
== BC0DRAKE ~只要剥它们皮的不是你，我猜？~
== %XZAR_BANTER% ~哎呀，我看你开始懂我了，德雷基。~
== BC0DRAKE ~我倒希望我不懂。~
EXIT


// Yeslick

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeYeslick1","GLOBAL",0)~ THEN %YESLICK_BANTER% C0DrakeYeslick1
~我这辈子遇过几个提尔信徒，小子，个个都是出众的品性。那你怎么就这么不一样，嗯？~
DO ~SetGlobal("C0DrakeYeslick1","GLOBAL",1)~
== BC0DRAKE ~当然是这把胡子。告诉你，它会动你的灵魂。~
== BC0DRAKE IF ~InParty("AJANTIS")~ THEN ~你看阿詹提斯就是个例子。如今他下巴上一根毛也没有，可等长出来，他马上就要去撩姑娘们了。~
== %AJANTIS_BANTER% IF ~InParty("AJANTIS")~ THEN ~我绝不会做那种事！~
== BC0DRAKE IF ~InParty("AJANTIS")~ THEN ~你就接着这么跟自己说吧，小鬼。~
== %YESLICK_BANTER% ~我说的是品性，小子，不是长相。恕我直言，这方面你……不大寻常。~
== BC0DRAKE ~听着，耶斯利克，老人家，你要我说什么？提尔教会里不是人人都是死板的机器。大多数是，没错，可我们有些人也能享点生活。~
== %YESLICK_BANTER% ~是，可看你这习惯，你可不大像适合侍奉正义之神的人。那你还留着做什么？~
== BC0DRAKE ~我侍奉正义，跟别人一样多，老人家。只是……用的是战士的锤子，不是法官的槌子。~
EXIT


// EE

// Neera

CHAIN IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeNeera","GLOBAL",0)~ THEN BC0DRAKE C0DrakeNeera
~你盯着我看了一阵子了，妮拉。有什么要忏悔的？别担心，我习惯了。~
DO ~SetGlobal("C0DrakeNeera","GLOBAL",1)~
== %NEERA_BANTER% ~呃，没有。我只是在想你有多怪。~
== BC0DRAKE ~我，怪？这岂不是锅嫌壶烂？~
== %NEERA_BANTER% ~呃……你不是想说“锅嫌壶黑”吗？~
== BC0DRAKE ~我更喜欢我那个说法。~
== %NEERA_BANTER% ~看吧，我就说。怪。~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeNeera","GLOBAL",1)~ THEN %NEERA_BANTER% C0DrakeNeera2
~嘿，怪人。有空吗？~
DO ~SetGlobal("C0DrakeNeera","GLOBAL",2)~
== BC0DRAKE ~当然。除非你是想让我成为你那混乱法术的牺牲品。要那样，我看我还是待在原地。~
== %NEERA_BANTER% ~哈！别担心，我不会拿什么野东西给你惊喜……不是故意的。不过我本来想问……你好像不*那么*怕我能对你做什么。~
== BC0DRAKE ~我为什么要怕？我过去也闯过火球和雷暴。我确信一群松鼠跟那些比算不了什么。~
== %NEERA_BANTER% ~可……说正经的，那可能糟得多。你知道的，对吧？~
== BC0DRAKE ~我会乐意去想我们同行时随时可能有个恶魔从你怀里跳出来吗？不太乐意。可为此怪你，也解决不了什么。只要<CHARNAME>让我们一块儿走，我就……尽量不去想。~
== %NEERA_BANTER% ~哦。这可……出乎意料地好，德雷克。谢了。~
== BC0DRAKE ~哈！别谢我。随时能看见这么个美人，变点颜色算是公道的价。~
== %NEERA_BANTER% ~唉。你还是个怪人。抱歉！~
EXIT

// Rasaad

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeRasaad","GLOBAL",0)~ THEN BC0DRAKE C0DrakeRasaad
~你知道，拉萨德……我看我老家那边像你这样的人不多。~
DO ~SetGlobal("C0DrakeRasaad","GLOBAL",1)~
== %RASAAD_BANTER% ~真的？卡林珊与安姆相距并不远。~
== BC0DRAKE ~不，那些人我见得多了。商人、佣兵、走私客……可你哪个都不是。你不是来填自己口袋的。~
== %RASAAD_BANTER% ~日魂修会的武僧确实看不起物质，这是真的，可……你是说你从没见过一个不贪的卡林珊人？~
== BC0DRAKE ~其实我见过不少。我曾跟我哥哥那队人一起，跟一小组卡林珊士兵并肩作战。他们都是好人，干着没人感谢的差事，只为养家。可我看，那些完全不求私利的人，大多不离家乡太远。是什么把你带到这儿来的，朋友？~
== %RASAAD_BANTER% ~我有很多理由。有些只我自己知道……但我向你保证，我唯一的愿望是尽我所能行善，把塞伦涅的光带给他人。~
== BC0DRAKE ~哈！这种大话我听过，可你……不，你是个诚实的人。能见到一个真信这些、还这么坦白承认的人，真是难得。我看我们会处得挺好，拉萨德。~
== %RASAAD_BANTER% ~但愿如此。多谢你这份信任，德雷克。~
EXIT

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeRasaad","GLOBAL",1)~ THEN BC0DRAKE C0DrakeRasaad2
~来，朋友，尝一口这个。我确信你这样的人最懂这滋味。~
DO ~SetGlobal("C0DrakeRasaad","GLOBAL",2)~
== %RASAAD_BANTER% ~嗯……我看不必尝。光这气味就太熟了。这么上等的金沙酒，你从哪儿弄来的，德雷克？~
== BC0DRAKE ~我有个收集安姆少见的麦酒的习惯。上回我们过集市时找到了这瓶好东西。想着你该更熟它，毕竟它出身你那儿。~
== %RASAAD_BANTER% ~我明白了。~
== BC0DRAKE ~怎么？来嘛，这么好的酒都开了塞，你不会放着不碰吧？喝啊！~
== %RASAAD_BANTER% ~修院的武僧很少许我们喝酒。他们说那会影响我们的身手和平衡。~
== BC0DRAKE ~我们这会儿离卡林珊可不近，再说小小一口从不害人，对吧？~
== %RASAAD_BANTER% ~（微笑）你没让我说完，我的朋友。小时候，我跟我哥哥总对地窖里那些瓶子好奇，那些很少被动过，却偶尔凭空少几瓶。我们想，再多两瓶不见，肯定没人会注意。~
== BC0DRAKE ~那你们……？~
== %RASAAD_BANTER% ~说来惭愧，我们确实喝了。我跟我哥哥一人一瓶，到早晨，我们试创一门新打法，试完就瘫在地上。别的武僧……很不高兴，至少可以这么说。~
== BC0DRAKE ~哈！这才是我爱听的故事。我喜欢你，拉萨德。你是个好人。这瓶留着……我看你比我更懂得珍惜它。~
EXIT

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
Dead("rsgamaz")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeRasaad2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeRasaad3
~你哥哥的事，我很遗憾。~
DO ~SetGlobal("C0DrakeRasaad2","GLOBAL",1)~
== %RASAAD_BANTER% ~我也一样。~
== BC0DRAKE ~得知他……最后那样，一定很难受。你要是觉得承受不住，我不怪你。谁都会。~
== %RASAAD_BANTER% ~我……想到加马兹已经去了，还是疼。我想他，等再见到他，他……嗯，你已经知道了。~
== BC0DRAKE ~是……不过你要是不介意我说，至少你在场，听到了他最后的话。我连这机会都没有。~
== %RASAAD_BANTER% ~我的朋友，我很——~
== BC0DRAKE ~不，抱歉。我这话太不顾人了，真的。这事不该扯到我。可我是真心的。我是说，那份歉意。~
== %RASAAD_BANTER% ~我知道，德雷克。谢谢你。~
EXIT

// Dorn

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeDorn","GLOBAL",0)~ THEN %DORN_BANTER% C0DrakeDorn
~滚出我的视线，棋子。你那晃悠的样子碍眼。~
DO ~SetGlobal("C0DrakeDorn","GLOBAL",1)~
== BC0DRAKE ~如今走路也算罪了，多恩？把冒犯你的人都宰了，是你的习惯？~
== %DORN_BANTER% ~你若不肯服从，我会的。你该知道你毫无胜算，只要我动手。~
== BC0DRAKE ~别这么肯定，大个子。我这辈子推倒过比你更大的砖头。~
EXIT

CHAIN IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeDorn","GLOBAL",1)~ THEN BC0DRAKE C0DrakeDorn2
~多恩，一个人得绝望到什么地步，才会为单纯的复仇把灵魂卖掉？顺便——我知道你不是最聪明的那个——那是个反问句，别真回答。前提是你懂什么叫反问。~
DO ~SetGlobal("C0DrakeDorn","GLOBAL",2)~
== %DORN_BANTER% ~我懂，至少懂我什么时候被人挑衅，棋子。反过来你也得懂这个：你活着，全凭<CHARNAME>一句话。这话要变了，你脑袋离肩的时候你都来不及察觉。~
== BC0DRAKE ~那你自己不也成了听<CHARNAME>差遣的棋子？你想杀我，还得<PRO_HISHER>点头？~
== %DORN_BANTER% ~嗯。你也许觉得自己说这话很聪明，可我早有准备。我听从<CHARNAME>的命令，因为<PRO_HESHE>是个有力量与伟大潜质的人。而你，这两样都致命地欠缺。~
== BC0DRAKE ~我从没否认自己身上那一部分。可我见过伟大的人。~
== %DORN_BANTER% ~什么蠢话你会当成伟大，棋子？说吧。让我乐一乐。~
== BC0DRAKE ~我认识一个人，哪怕戴着年岁的镣铐，也率一队人以一对三的劣势取胜，直视死亡，把锤子砸进敌将的甲胄。我认识一个如太阳般闪耀的人，领着百人，个个愿为他死，直到他为自己所信的事业舍了命。~
== BC0DRAKE ~可惜，你哪一样都及不上。~
EXIT