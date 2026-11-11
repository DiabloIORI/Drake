BEGIN C02DRAKJ

// Dialogue

CHAIN IF ~Global("C02DrakeTalk","GLOBAL",2)~ THEN C02DRAKJ t1
~事情真是升级得厉害。一城的长官都指望一个人解决他们的麻烦。你怎么看，<CHARNAME>？~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",1)~
END
++ ~不太好。这担子挺沉。~ + t1.1
++ ~我觉得我拿的报酬最好对得起这份苦。~ + t1.2
++ ~*耸肩* 到这份上，我习惯扛别人的担子了。不算什么。~ + t1.3
++ ~我看你该安静点，跟着走。我对闲聊没兴趣。~ + t1.0

CHAIN C02DRAKJ t1.0
~是，我确信你需要时间想想眼下的处境。随你。~
EXIT

CHAIN C02DRAKJ t1.1
~我想也是。只是确保它别把你压翻、拖下去。~
EXTERN C02DRAKJ t1.4

CHAIN C02DRAKJ t1.2
~我确信你现在扛的这份担子，早晚会以金子般的分量回报你。可那样真能满足你吗？~
EXTERN C02DRAKJ t1.4

CHAIN C02DRAKJ t1.3
~你要真是这么想的，那我佩服你。也同情你。不过别往坏处想。没多少人能替这么多人扛这么多。~
EXTERN C02DRAKJ t1.4

CHAIN C02DRAKJ t1.4
~说我没心没肺也行，可我主要是庆幸那不是我。~
END
++ ~我没生气。换我也一样。~ + t1.5
++ ~要是换成你呢？你担得起这差事？~ + t1.6
++ ~闭嘴吧。你根本不知道我得忍受些什么。~ + t1.0

CHAIN C02DRAKJ t1.5
~生活有时不公道，是吧？可话说回来，总得有人背上统率的锁链。不是你，就是别人，也许还是不如你的那个。那将是多大的灾难。~
= ~...~
= ~*笑* 也许我说得过火了，可我说你配得上，是认真的。你这日子也许难熬，可我看你也许是唯一担得起的人。~
END
++ ~为什么？我有什么特别的？~ + t1.7
++ ~我不管你怎想。我只指望你的本事对我有用。~ + t1.8

CHAIN C02DRAKJ t1.6
~我不知道。大概不能。我不是你所谓的那种英雄，不像我父亲，不像我哥哥加布里尔，也不像你自己……我一向更习惯听命，不是下令。~
EXTERN C02DRAKJ t1.5

CHAIN C02DRAKJ t1.7
~最明显的是你的血脉，可这回我不谈那个。是你把最不可能的人——男人也好女人也好——拉到你这边来的本事。你的统率才能非同寻常，很像我已故的哥哥。~
= ~了不起。你甚至赢得了我作为同伴、作为士兵、作为准骑士的信任与敬重。这就是你特别的地方。~
END
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~你说得真好听。我在想你还怎么看我的……？~ DO ~IncrementGlobal("C02DrakeFlirt","GLOBAL",1)~ + t1.rom
++ ~我不觉得那有什么特别。谁肯下功夫都能做到。~ + t1.9
++ ~你眼力不错。我没料到你那粗犷外表底下有这个。~ + t1.10
++ ~谢你这番话，德雷克，可我看我们该走了。~ + t1.11

CHAIN C02DRAKJ t1.8
~哦，别误会，我会像任何自重士兵那样忠心为你效力。只是你好像比我以为的没意思。那就这样吧。~
DO ~SetGlobal("C0DrakeTalkStopped","GLOBAL",1)~ EXIT

CHAIN C02DRAKJ t1.rom
~*笑* 我想的多了。不过你要纯粹想听好话，那我就得再费点脑子……~
EXTERN C02DRAKJ t1.11

CHAIN C02DRAKJ t1.9
~也许吧，可没那么容易。那是天赋，我没那运气练出来。~
EXTERN C02DRAKJ t1.11

CHAIN C02DRAKJ t1.10
~嘿。我真不是。说实话，多半是我在拿屁股说话。不过话说回来，也许我父亲那些教诲终究起了点作用。~
EXTERN C02DRAKJ t1.11

CHAIN C02DRAKJ t1.11
~我看我们这会儿说够了。毕竟还有很多事要做。带路，我跟着。~
EXIT

CHAIN IF ~Global("C02DrakeTalk","GLOBAL",4)~ THEN C02DRAKJ t2
~睡前想吃点东西吗，<CHARNAME>？来，坐下。今晚饭我请。~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",1)~
END
	++ ~你下厨？我该兴奋还是担心？~ + t2.1
	++ ~那我就不客气了。~ + t2.2
	++ ~算了。我不饿。~ + t2.3
	++ ~谢了，可我更想去睡。~ + t2.0

CHAIN C02DRAKJ t2.0
~随你。好好歇着，<CHARNAME>。也许早晨还能给你剩点。~
DO ~RestParty()~ EXIT
	
CHAIN C02DRAKJ t2.1
~哈！我得让你知道，厨子的活是我一门秘密本事。当然，看我们眼下这地方，我的材料……不算理想，可现在正是试验的好时候，你不觉得？~
EXTERN C02DRAKJ t2.4

CHAIN C02DRAKJ t2.2
~聪明的<MANWOMAN>。嗯，我承认有些日子没动过手了，材料也有限，可现在正是试验的好时候，你不觉得？~
EXTERN C02DRAKJ t2.4

CHAIN C02DRAKJ t2.3
~嗯，不管怎样先坐下陪陪我。一个人做饭没那么有意思。尤其材料有限，可现在正是试验的好时候，你不觉得？~
EXTERN C02DRAKJ t2.4

CHAIN C02DRAKJ t2.4
~没什么特别。扎营时我用一个命令术放倒了一头熊。切了几个萝卜，加了点盐，生起火，全扔锅里。~
= ~不比好酒馆里弄的强，可总比没有好。我们现在也许干的是士兵的活，可总有工夫偷点自在。~
END
	++ ~闻着不错。我们几天没正经吃过饭了。~ + t2.5
	++ ~呃，萝卜？萝卜跟熊肉通常配吗？~ + t2.6
	++ ~我没料到你有这本事，德雷克。你哪儿学的做饭？~ + t2.7
	++ ~我喜欢会做饭的男人。~ + t2.8
	++ ~你知道，我看我没那么饿。晚安，德雷克。~ + t2.0
	
CHAIN C02DRAKJ t2.5
~我也这么想。行军口粮是好，可冷夜里没什么比一锅热腾腾的咸炖菜更实在，你知道吧？对士气有好处。~
EXTERN C02DRAKJ t2.7

CHAIN C02DRAKJ t2.6
~*耸肩* 谁知道？以前没试过。可要那些疯疯癫癫的詹森家的话能信，萝卜跟任何能扔到火上煮的东西都配，还配得更多。~
EXTERN C02DRAKJ t2.7

CHAIN C02DRAKJ t2.7
~这是我从我母亲那儿学来的一样本事。一家五口要照料，对她意味着一大堆活。我得像个体贴儿子那样学点东西，好让她日子哪怕轻松一丁点。~
EXTERN C02DRAKJ t2.9

CHAIN C02DRAKJ t2.8
~是吗？我很高兴我的手艺得你认可。不，真的，这挺要紧。嘿。~
EXTERN C02DRAKJ t2.9

CHAIN C02DRAKJ t2.9
~*吸气* 哦，你瞧瞧。炖菜好像快好了。想尝一口吗？~
END
++ ~嗯……可以再放点盐。~ + t2.10
++ ~头一回做熊肉萝卜炖菜，不算坏。~ + t2.11
++ ~呃……算了。我可不想带着消化不良上床。~ + t2.12

CHAIN C02DRAKJ t2.10
~我下次记着。当然，前提是有下次。无疑我们很快又要靠干果和饼子过活。~
EXTERN C02DRAKJ t2.13

CHAIN C02DRAKJ t2.11
~我也这么想。过了那么久净吃没味道的东西，舌头上再有点滋味真好。~
EXTERN C02DRAKJ t2.13

CHAIN C02DRAKJ t2.12
~哈！你伤我心了，<CHARNAME>。我确信没那么糟。肯定不比干果和硬肉干差。~
EXTERN C02DRAKJ t2.13

CHAIN C02DRAKJ t2.13
~嗯，总的来说，今晚比大多数晚上都好。当然不全因为饭。眼前这位作伴的也挺顺眼。~
= ~让我想起安姆军里的好日子。当然，那时我哥哥加布里尔还活着。当兵……他走了以后就没那么吸引人了。~
END
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~那现在呢，嗯？我这迷人的统率还没把你迷住？~ DO ~IncrementGlobal("C02DrakeFlirt","GLOBAL",1)~ + t2.rom
++ ~你是在拿我跟你哥哥比？~ + t2.14
++ ~那现在呢？还是那么想？~ + t2.15
++ ~今晚挺好，可我看我该去歇歇了。~ + t2.16

CHAIN C02DRAKJ t2.rom
~*笑* 嗯，我在想。你还差得远，可……照你这么下去，我很快就会为你神魂颠倒。~
EXTERN C02DRAKJ t2.17

CHAIN C02DRAKJ t2.14
~我的话在你听来是那个意思？别误会，那是称赞。加布是独一无二的，至少我以前这么信。英雄中的英雄。~
EXTERN C02DRAKJ t2.17

CHAIN C02DRAKJ t2.15
~嗯……嘿，这个真难答。我看你的统率帮着找回了一些那种激动。~
EXTERN C02DRAKJ t2.17

CHAIN C02DRAKJ t2.16
~是，你大概说得对。~
EXTERN C02DRAKJ t2.17

CHAIN C02DRAKJ t2.17
~总之，今天漫长，我看我不该再拦着我们该得的休息。毕竟疲劳的领袖没好处，同样疲劳的医者也没好处。晚安。~
DO ~RestParty()~ EXIT

CHAIN IF ~Global("C02DrakeTalk","GLOBAL",6)~ THEN C02DRAKJ t3
~一条龙。一条*龙*，<CHARNAME>。别的不说，单这个就让这整趟路值了。~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",1)~
END
+ ~Dead("bdmorent")~ + ~现在是条死龙了。~ + t3.4
++ ~德雷克，你喜欢龙？~ + t3.1
++ ~在这儿撞见那么个东西，真是好大一个意外。~ + t3.2
++ ~随便吧。我们有活要干。~ + t3.0

CHAIN C02DRAKJ t3.0
~一条*龙*，<CHARNAME>。你怎么能不激动？~
EXIT

CHAIN C02DRAKJ t3.1
~谁不激动？龙是庄严的生灵。传说长出了鳞片和血肉。~
END
IF ~!Dead("bdmorent")~ THEN EXTERN C02DRAKJ t3.3
IF ~Dead("bdmorent")~ THEN EXTERN C02DRAKJ t3.4

CHAIN C02DRAKJ t3.2
~走进这些洞窟之前，我自己也想不到。可提尔在上，我一点不后悔。~
END
IF ~!Dead("bdmorent")~ THEN EXTERN C02DRAKJ t3.3
IF ~Dead("bdmorent")~ THEN EXTERN C02DRAKJ t3.4

CHAIN C02DRAKJ t3.3
~我从小就被这种巨兽震住。也许我这名字也太贴切了……嘿。这大概也真有点关系。~
= ~我父亲——杜兰德教长——曾跟我哥哥和几位老练骑士一起打过一伙黑暗精灵。他们追进幽暗地域，可狡诈的卓尔把他们引进的不是一条，而是一对深龙的巢穴。~
= ~那仗打得凶——至少他们爱这么讲。鳞爪对钢铁，一场够写进歌里的厮杀。我父亲的锤子和我哥哥的矛，对上费伦最了不得的巨兽。最后他们赢了，至少那场遭遇里少数活下来的赢了。他们把巨兽的鳞剥下来，锻成我父亲从此一直穿着的威武铠甲。~
= ~这是我最爱的故事之一。真正打动过我的，就只有那一个。~
EXIT

CHAIN C02DRAKJ t3.4
~可惜我们不得不杀了它，不过我看这本身也算一桩成就。它也许是邪恶的巨兽，可依然壮美。~
EXTERN C02DRAKJ t3.3

CHAIN IF ~Global("C02DrakeTalk","GLOBAL",8)~ THEN C02DRAKJ t4
~你有墨水吗，<CHARNAME>？~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",1)~
END
++ ~干什么用？~ + t4.1
++ ~我还真有。给你。~ + t4.2
++ ~现在不是时候，德雷克。~ + t4.0

CHAIN C02DRAKJ t4.0
~那真可惜。我只好另找。~
EXIT

CHAIN C02DRAKJ t4.1
~我早就想往家里写信了。现在回头看，真的很久了。几个月前我从安姆一路到这儿，从那以后一直没机会听家里的消息。~
END
++ ~有人惦记你，一定很好。~ + t4.3
++ ~往家里写信听着是个好主意。你打算说什么？~ + t4.4
++ ~你自己安排时间。我没兴趣听。~ + t4.5

CHAIN C02DRAKJ t4.2
~谢谢你。~
EXTERN C02DRAKJ t4.1

CHAIN C02DRAKJ t4.3
~我想是。我承认我确实想念我弟弟和妹妹在身边。父亲在骑士团的差事让他忙，照看他们一向是我和我母亲的事。~
EXTERN C02DRAKJ t4.4

CHAIN C02DRAKJ t4.4
~我还不知道写什么。要补的事很多……不过我估计不管怎样，我都得写写我伺候的这位奴隶监工……~
END
++ ~奴隶监工？！~ + t4.6
++ ~哈哈。真逗。~ + t4.6
++ ~我真那么苛刻？~ + t4.6
++ ~你想写什么写什么。我不在乎。~ + t4.5

CHAIN C02DRAKJ t4.5
~也好。不管怎样，谢你的墨水。~
EXIT

CHAIN C02DRAKJ t4.6
~我开玩笑。你没那么糟，<CHARNAME>，别担心。不过我会写你。毕竟不管怎样，你已经挺要紧了。~
END
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~是对大局要紧，还是对你个人要紧，嗯？~ DO ~IncrementGlobal("C02DrakeFlirt","GLOBAL",1)~ + t4.7
++ ~对。务必把我的荣耀全记在纸上。~ + t4.8
++ ~我不觉得自己有多特别。~ + t4.9
++ ~随便。你爱怎样就怎样。~ + t4.5

CHAIN C02DRAKJ t4.7
~嗯，先别扯那么远。虽说你这两个想法都不全错，我就这么说法吧。~
EXTERN C02DRAKJ t4.10

CHAIN C02DRAKJ t4.8
~*笑* 我看已经有一大群吟游诗人和说书人在替你干这个了。我确信你的故事这会儿已经传到安姆了。~
EXTERN C02DRAKJ t4.10

CHAIN C02DRAKJ t4.9
~别那样看自己的要紧。依赖你的人想把你当英雄、当救星。你顶多能做的就是至少演出那个样子。~
EXTERN C02DRAKJ t4.10

CHAIN C02DRAKJ t4.10
~啊，可我们在这儿说了这么久我的事……我在想，<CHARNAME>，你呢？你想烛堡的什么吗？你还把它当家吗？~
END
++ ~没了戈里昂，没了伊莫恩，也没家可回……我为什么要想？~ + t4.11
++ ~有时候。可我没你对你家那么眷恋。~ + t4.11
++ ~我每天都想烛堡。就算没了家，我还是把它当我唯一知道的家。~ + t4.11
++ ~不关你的事，德雷克。~ + t4.11

CHAIN C02DRAKJ t4.11
~也好。不管你梦想回哪儿，要真有那么个地方……我看时不时想一想是好事。那我们就把这场圣战了结，也许到时候我们都能回家。~
EXIT

CHAIN IF ~Global("C02DrakeTalk","GLOBAL",10)~ THEN C02DRAKJ t5
~那些圣战军……他们管卡伊拉·阿金特叫英雄。更要紧的是，他们真信。你怎么看，<CHARNAME>？~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",1)~
END
++ ~他们是一群蠢货。~ + t5.1
++ ~我什么都不想。他们只是挡我路的人。~ + t5.2
++ ~卡伊拉真能叫手下忠心。我不觉得圣战军天生就是恶的。~ + t5.3
++ ~我看现在不是彼此讨论敌人哲学的时候。走吧。~ + t5.0

CHAIN C02DRAKJ t5.0
~你有时候真没意思，<CHARNAME>。~
EXIT

CHAIN C02DRAKJ t5.1
~刻薄，可大概是真的。不过我得说“可悲地误入歧途”更准确。~
EXTERN C02DRAKJ t5.4

CHAIN C02DRAKJ t5.2
~你真冷。可我还是想问一句，因为我在想……~
EXTERN C02DRAKJ t5.4

CHAIN C02DRAKJ t5.3
~也许。*叹息* 那这就更难办了。~
EXTERN C02DRAKJ t5.4

CHAIN C02DRAKJ t5.4
~你后悔不得不杀他们吗？~
END
++ ~我每次不得不杀人，都后悔。这回也不例外。~ + t5.5
++ ~有些人吧。不过总有些人该死。~ + t5.6
++ ~一点都不。他们要跟我们作对，那他们死了就是他们的错。~ + t5.7
++ ~我倒宁愿不去想。那会让事情更难办。~ + t5.8

CHAIN C02DRAKJ t5.5
~那一定很难受。尤其对一个生自谋杀之神的人。可这非常可敬。~
EXTERN C02DRAKJ t5.9

CHAIN C02DRAKJ t5.6
~每个人早晚都会干点让别人觉得他该死的事。谁来判断他们对不对？你，还是我？谁有这资格？~
EXTERN C02DRAKJ t5.9

CHAIN C02DRAKJ t5.7
~哼。谋杀之神的子孙说得好。我看某种扭曲意义上，你确实有那资格。~
EXTERN C02DRAKJ t5.9

CHAIN C02DRAKJ t5.8
~嘿。我当兵时就明白这点了。你把个人道德全忘了、变成个不想事的棋子、完全照命行事，那对你轻松得多。~
= ~我不能说那是我这辈子最自豪的时候。~
EXTERN C02DRAKJ t5.9

CHAIN C02DRAKJ t5.9
~你有你的看法，我有我的。我不后悔我在害死那些圣战军里的一份，跟杀别人没什么两样。他们选择坚守自己的信念，与我的相冲。~
= ~倒不是说我没有半点悔意。我不信谁真有权利夺走别人的命。那是给有力量者的特权。~
= ~我不喜欢这样，可生活里许多问题，只要把不同意你的人杀掉就解决了。哪怕为了好目的，比如骑士团。~
END
++ ~你要真觉得杀人是这么可怕的事，那你还留在这儿干什么？~ + t5.10
++ ~你错了。我相信总有比把挡路的人全杀了好些的替代办法。~ + t5.11
++ ~这我一点不懂。我只是觉得这事挺好玩。~ + t5.12
++ ~这真不是个适合聊的刺激话题，德雷克。我们打住。~ + t5.0

CHAIN C02DRAKJ t5.10
~*耸肩* 好问题。有时我也在想，我怎么不干脆扔了兵器回家。我看是因为这仍比站在一边什么都不做强。你不同意？~
EXTERN C02DRAKJ t5.13

CHAIN C02DRAKJ t5.11
~*哼* 我最想的就是我错了，可你真能这么说？你要是不杀达瓦翁、安杰洛或萨雷沃克那样的人，你还能怎么办？~
EXTERN C02DRAKJ t5.13

CHAIN C02DRAKJ t5.12
~哈！你知道我把无缘无故的杀人叫什么？谋杀。这词配你倒挺合适，你不觉得？~
EXTERN C02DRAKJ t5.13

CHAIN C02DRAKJ t5.13
~你不必回答。就算你能答，给这种问题找答案，生活就没趣味了。~
= ~嘿。我在想你会不会为这个失眠。我肯定会。~
EXIT

CHAIN IF ~Global("C02DrakeTalk","GLOBAL",12)~ THEN C02DRAKJ t6
~来喝一杯，<CHARNAME>！白天过去了，夜还长。还有什么比这时候在暖火边、就一品脱麦酒松快松快更好？~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",1)~
END
+ ~Global("C02DrakeKnowsBG1","GLOBAL",1)~ + ~我不喝酒。我以为你知道。~ + t6.1
+ ~!Global("C02DrakeKnowsBG1","GLOBAL",1)~ + ~我不喝酒。~ + t6.2
++ ~我不爱酒，可我陪你。~ + t6.3
++ ~干嘛不。我们喝什么？~ + t6.4
++ ~我打算喝。希望你跟得上我。~ + t6.4
++ ~算了。我累了，更想去睡。~ + t6.0

CHAIN C02DRAKJ t6.0
~你真没趣。随你吧。我打算放纵到天亮。~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",2)~ EXIT

CHAIN C02DRAKJ t6.1
~还这么坚决？你确定我勾不动你？~
EXTERN C02DRAKJ t6.4

CHAIN C02DRAKJ t6.2
~真可惜。可再没有比现在更好的开始时候，你不觉得？~
EXTERN C02DRAKJ t6.4

CHAIN C02DRAKJ t6.3
~有多少算多少。再说，我确信很快就能说服你。~
EXTERN C02DRAKJ t6.4

CHAIN C02DRAKJ t6.4
~我不打算拿廉价酒招待你，我的朋友。这是私人珍藏。一瓶最上等的阿拉贝尔干葡萄酒，一直没开，留到如今。这种时候，就该跟亲近的同袍分享。~
= ~来，趁还能，好好闻闻它的香气，因为我打算在日出前把瓶喝空。~
= ~不错，是吧？我们分了吧？~
END
++ ~拿杯子来。我们喝个烂醉。~ + t6.5
++ ~你先来。我就在这儿陪你。~ + t6.6
++ ~我更想去睡。你玩得开心。~ + t6.0

CHAIN C02DRAKJ t6.5
~*咽* 啊，就是这个味儿。可惜火上没烤着一块好肉配这美酒。不过我本来也不太饿。~
= ~嘿。你知道，我在军队那会儿，跟老朋友们常这么喝。跟我父亲和哥哥也是。我们唱些粗俗的歌，回忆心上人，吹嘘过去的胜仗……~
= ~嗯，反正我朋友们喜欢那么干。我嘛，更爱听。（举起杯子）我在场就是为了这个。~
END
++ ~德雷克，你就为这个活着？~ + t6.7
++ ~你就没点故事可讲？~ + t6.7
++ ~好。那我们就一起喝。~ + t6.8
++ ~那样的话，我看没理由耗着。晚安。~ + t6.0

CHAIN C02DRAKJ t6.6
~随你。杯子就在你跟前，你改主意就喝。~
EXTERN C02DRAKJ t6.5

CHAIN C02DRAKJ t6.7
~我是个简单人，图简单的乐子，也差不多是世上最没意思的那类。你要听故事，怕是我帮不上忙。~
= ~倒不是我不能编……像我听过的大多数侍从故事那样。可那不是我的路子。吹什么单枪匹马宰了几十条龙和巨人之类的胡话……哈！~
EXTERN C02DRAKJ t6.8

CHAIN C02DRAKJ t6.8
~你杯子空了。要我替你倒上？~
END
++ ~尽管来。~ + t6.9
++ ~我说过我不喝酒。~ + t6.10
++ ~不了，谢了。我要去睡。~ + t6.0

CHAIN C02DRAKJ t6.9
~*咕咚*~
= ~你知道，我喜欢你，<CHARNAME>。你脑子清楚，还让事情有意思。跟你在一起，我看我想说什么都行，想喝多少也行。~
= ~不像我亲爱的老爹。我年轻时他不喜欢我的习惯，所以我跟哥哥夜里常溜去本地酒馆。当然被抓过几回，可那从没拦住我们。~
= ~说起来，他本来除了社交场合也不怎么喝。可他爱抽半身人烟斗草。家里老飘着烟味，母亲恨透了。说来好笑，我有一阵还真有点想念。哪怕我在家时，父亲通常也忙着当骑士团教长。~
= ~不过……加布里尔死后，他在家哀悼，三天三夜抽个不停。那以后，我也恨上那东西了。像段坏记忆，我一闻到那鬼东西就想吐。~
END
++ ~奇怪，你刚说你不擅长讲故事。看来你错了。~ + t6.11
++ ~多讲讲你家的事。我想多听些。~ + t6.12
++ ~呃，我看我今天够了。我去睡了。~ + t6.0

CHAIN C02DRAKJ t6.10
~随你。~
EXTERN C02DRAKJ t6.9

CHAIN C02DRAKJ t6.11
~*哼* 我讲我父亲抽烟这故事你都能觉得有意思，那你准没听过多少好故事。~
EXTERN C02DRAKJ t6.13

CHAIN C02DRAKJ t6.12
~当然，当然，让我想想……~
EXTERN C02DRAKJ t6.13

CHAIN C02DRAKJ t6.13
~该死，这瓶空了。好在我这儿还有两瓶……~
= ~*咕咚*~
= ~说实话，我更爱麦酒。可阿拉贝尔红酒是加布里尔的最爱。我每个月喝空一两瓶，纪念他。~
= ~我个人一直觉得那回味对我舌头来说有点过。配奶酪倒好。可惜我们没奶酪。~
= ~我们最后一次一起喝酒，就在穆兰那事之前。他说等我们打赢仗，就要回家娶他心上人。他要是知道……~
END
++ ~你哥哥有未婚妻？~ + t6.14
++ ~那你呢？那时候你有谁吗？~ + t6.15
++ ~你接着说。我接着喝。~ + t6.16
++ ~算了。我去睡了。~ + t6.0

CHAIN C02DRAKJ t6.14
~他确实有。啊……可我不该讲。上回我喝醉了说起她，我……嗯，你现在最好别知道。~
EXTERN C02DRAKJ t6.16

CHAIN C02DRAKJ t6.15
~我？你一定在开玩笑。加布里尔得了宫里所有女士的心，还有不少男人的。我哪能比。~
EXTERN C02DRAKJ t6.16

CHAIN C02DRAKJ t6.16
~哦，我亲爱的哥哥……他一直英雄到最后一刻，像个可敬的傻瓜那样死了，可……我想他。我真的想。~
= ~我喝这酒的时候，就想起我们互相讲笑话、一起笑的所有时候……就像他又在我身边。然后我再灌一杯，再尝一次那种感觉，再一杯，直到……~
= ~唉，我们都能喝醉，我干嘛还说这些？我再倒一杯。你呢，<CHARNAME>？~
END
++ ~好吧。~ + t6.17
++ ~不了，谢谢。~ + t6.17

CHAIN C02DRAKJ t6.17
~今晚挺好玩，<CHARNAME>。我玩得开心。让我们把这份开心留住！~
DO ~RestParty()~ EXIT

CHAIN IF ~Global("C02DrakeTalk","GLOBAL",14)~ THEN C02DRAKJ t7
~呃，我脑袋……昨晚我怕是喝多了。希望你好歹比我强些。~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",1)~
END
++ ~呃呃呃……嗯？什……现在什么时辰？~ + t7.1
++ ~希望你长了教训。~ + t7.2
++ ~这就是我不喝酒的原因。~ + t7.3
++ ~其实我睡得挺好。那不算什么。~ + t7.4
++ ~我们得走了，德雷克。快点醒酒，收拾东西。~ + t7.0

CHAIN C02DRAKJ t7.0
~*嘟囔* 好，好……~
EXIT

CHAIN C02DRAKJ t7.1
~*呻吟* 我哪知道。我分不清头顶上是太阳还是火球。我到底睡过没有……？~
EXTERN C02DRAKJ t7.5

CHAIN C02DRAKJ t7.2
~你听着像我爸。可惜，我倔。看来倔得对自己身体都不好。~
EXTERN C02DRAKJ t7.5

CHAIN C02DRAKJ t7.3
~也许那样最好。可惜对我来说没那么容易。~
EXTERN C02DRAKJ t7.5

CHAIN C02DRAKJ t7.4
~唉，你真叫人不敢信。我再也不跟你喝酒了。~
EXTERN C02DRAKJ t7.5

CHAIN C02DRAKJ t7.5
~唔……我们从喝那香料酒开始，我记忆就一片模糊……万一你记得比我清楚，我……没做什么、说什么出格的话吧？~
END
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~我隐约记得你昏过去之前，我们俩贴得挺近，还动手动脚……~ DO ~IncrementGlobal("C02DrakeFlirt","GLOBAL",1)~ + t7.6
++ ~别问我。我几乎肯定在你前头就倒了。~ + t7.7
++ ~你唱着关于驴和大石头的什么东西睡着了。别的我都不记得。~ + t7.8
++ ~你昏过去后我给你盖了条毯子，然后去睡了。什么都没发生。~ + t7.9
++ ~别问我。反正我们还有很长的路，我建议你快点醒酒。~ + t7.0

CHAIN C02DRAKJ t7.6
~什——哦不。我不上这个当，<CHARNAME>。我比这更了解我自己。~
EXTERN C02DRAKJ t7.10

CHAIN C02DRAKJ t7.7
~那真可惜。~
EXTERN C02DRAKJ t7.10

CHAIN C02DRAKJ t7.8
~*呻吟* 我真不敢信我还记得那首歌。侍从们当年老拿我编这歌取笑。失陪一下，我试着把它从脑子里彻底钻出去。~
EXTERN C02DRAKJ t7.10

CHAIN C02DRAKJ t7.9
~好，好……我看我该庆幸自己没伤了自尊，大概。~
EXTERN C02DRAKJ t7.10

CHAIN C02DRAKJ t7.10
~不过我不能说我没玩得开心。我好久没有能真正说心里话的酒伴了。希望我没让你觉得闷。~
END
++ ~一点没有。我倒挺爱听。~ + t7.11
++ ~至少酒不错。~ + t7.12
++ ~我不想再听你的私事了。~ + t7.13

CHAIN C02DRAKJ t7.11
~嗯，我很高兴。说实话，我没以为你会。~
EXTERN C02DRAKJ t7.14

CHAIN C02DRAKJ t7.12
~挺好，总算有样东西抓住了你的注意力。~
EXTERN C02DRAKJ t7.14

CHAIN C02DRAKJ t7.13
~是吗？我不怪你。我不会再拿这些烦你。~
EXIT

CHAIN C02DRAKJ t7.14
~改日再一起喝几杯？下回你可以把你的烦心事全说给我。我保证不管多闷都听。~
END
++ ~当然，干嘛不。~ + t7.15
++ ~我看不必。~ + t7.16

CHAIN C02DRAKJ t7.15
~这才是好<PRO_MANWOMAN>。我去找几瓶更烈的。下回我们俩都能顶着一脑袋剧痛醒来。~
EXIT

CHAIN C02DRAKJ t7.16
~随你。开心过就好。~
EXIT

CHAIN IF ~Global("C02DrakeHellTalk","GLOBAL",2)~ THEN C02DRAKJ t8
~阿弗纳斯，九层地狱的第一层……我还以为圣书是夸张。真是个好地方。~
DO ~IncrementGlobal("C02DrakeHellTalk","GLOBAL",1)~
END
++ ~你好像格外镇定。~ + t8.1
++ ~这儿挺热的，是吧？~ + t8.2
++ ~真是个好地方。我从没想到自己真会到这儿。~ + t8.3
++ ~这绝对不是说话的地方，德雷克。我们得找到卡伊拉·阿金特，了结这事。~ + t8.0

CHAIN C02DRAKJ t8.0
~确实……前提是这地方还没把她收了。我们自己去看看。~
EXIT

CHAIN C02DRAKJ t8.1
~要换了别人，我也许不这么想……可说实话，跟你走了这么久，我已经习惯往最坏处想了，不管那是什么。~
EXTERN C02DRAKJ t8.4

CHAIN C02DRAKJ t8.2
~哦，当然。一个适合好好度个长假的好地方……嘿，我倒希望是。~
EXTERN C02DRAKJ t8.4

CHAIN C02DRAKJ t8.3
~我打赌你现在后悔小时候干的那些坏事了，嗯？我肯定后悔。~
EXTERN C02DRAKJ t8.4

CHAIN C02DRAKJ t8.4
~嘿。我知道我这幽默在这地方看着不合时宜，可我想也许能缓和点气氛。不过说正经的……我不能否认这地方让我不安。~
= ~可我不怪你把我们带到这儿。真要说，就算我有别的选择，我也会选择跟你来。不只是因为我职责所在，还因为，嗯……~
= ~我看你至少配得上我这份忠心。你真是独一无二，<CHARNAME>。~
END
+ ~Global("C02DrakeRomanceActive","GLOBAL",2)~ + ~哎呀，德雷克……你是不是爱上我了？~ + t8.5
++ ~谢谢你，德雷克。不只为你这些话，也为了别的所有。~ + t8.6
++ ~你也独一无二，德雷克。只是方式不同。~ + t8.7
++ ~那我们就一起找到卡伊拉，了结这场疯事。~ + t8.0

CHAIN C02DRAKJ t8.5
~嗯……换任何别的情形，我都会一笑置之。可现在……嘿。也许是这热度，可我几乎觉得脸上有道热流爬上来。你也许没说错。~
EXTERN C02DRAKJ t8.8

CHAIN C02DRAKJ t8.6
~谢谢你，<CHARNAME>。我被打动了。真的。~
EXTERN C02DRAKJ t8.8

CHAIN C02DRAKJ t8.7
~用一种远没那么体面的方式，我确定。你就是这么想的，对吧？~
END
++ ~你说对了。~ + t8.7a
++ ~一点没有。我敬重你，德雷克。~ + t8.7b

CHAIN C02DRAKJ t8.7a
~这话伤人，<CHARNAME>，更因为你说的大概没错……嘿。~
EXTERN C02DRAKJ t8.8

CHAIN C02DRAKJ t8.7b
~这话不能随口说，我的朋友。可你要真是这个意思，那……嗯，谢谢，我只能这么说。~
EXTERN C02DRAKJ t8.8

CHAIN C02DRAKJ t8.8
~我从没觉得自己是个特别可敬或英雄的人。那些词我一向宁愿用来形容我哥哥。我以为我不会再用在别人身上，可现在……我会用在你身上。看你自己走到多远，看所有跟着你的人，包括我……这真让我想起他。~
= ~假设我们俩都能活着离开这地狱，我就要回家了。也许我们再也见不着，要真如此……我看我会记着你。偶尔想起你。~
END
++ ~这话很动人。从你嘴里说出来，动人得不自然。~ + t8.9
++ ~我确信我们哪天还会再见。在那之前，我们还有这一刻，还有接下来几刻。~ + t8.10
++ ~你太多愁善感了。你是个忠心的盟友，可我不把你当更多。~ + t8.11
++ ~等我们找到卡伊拉、处理完再谈。走吧。~ + t8.0

CHAIN C02DRAKJ t8.9
~是吧？我也不知道自己怎么了。~
EXTERN C02DRAKJ t8.12

CHAIN C02DRAKJ t8.10
~你说得对。可万一我倒下、真死了……我宁愿趁你还听得见，把这些话说出来。~
EXTERN C02DRAKJ t8.12

CHAIN C02DRAKJ t8.11
~要真如此，我就不再烦你太久，可我还是坚持我的话。我们不必是朋友，我也能敬重你。~
EXTERN C02DRAKJ t8.12

CHAIN C02DRAKJ t8.12
~现在这些多愁善感的胡话都说完了，你看我们一劳永逸了结这事怎么样？我们一起把前头剩下的敌人全猎了。听着如何？~
END
++ ~听着不错。动手吧。~ + t8.13

CHAIN C02DRAKJ t8.13
~那就动手。我要是还剩一口气，我也会为你把它用在战斗上。我发誓。~
EXIT

CHAIN IF ~Global("C02DrakeLastTalk","GLOBAL",2)~ THEN C02DRAKJ t9
~我们活着。真没想到。你干得漂亮，<CHARNAME>。~
DO ~IncrementGlobal("C02DrakeLastTalk","GLOBAL",1)~
END
++ ~我们大家都干得漂亮。不只我。~ + t9.1
++ ~我只是做了该做的。~ + t9.1
++ ~你说得对。希望我总算能得点安宁。~ + t9.1

CHAIN C02DRAKJ t9.0
~你真宁愿那样？那好吧。~
EXIT

CHAIN C02DRAKJ t9.1
~是，你说得对。~
= ~让我向你致敬，<CHARNAME>。他们全为你欢呼时，我……嘿，我几乎以为我又看见了加布里尔。我从没想到还能再见到那样的景象。~
= ~我现在想跟你握个手，<CHARNAME>，因为庆祝一完，我就要回安姆了。也许很久以后我们才会再见。~
END
++ ~我会想你的，我的朋友。~ + t9.2
++ ~当然。~ + t9.3
++ ~你一直是个好朋友，德雷克。~ + t9.4
++ ~我们以后可以慢慢谈。眼下我没那个心情。~ + t9.0

CHAIN C02DRAKJ t9.2
~是，是，我也会想你。你是个好朋友，也是个了不起的领袖。我会舍不得走。~
EXTERN C02DRAKJ t9.3

CHAIN C02DRAKJ t9.3
~不过我确信我们还会再碰上。但愿到那时候，我能再为你举起盾。在那之前……~
= ~你看我们砸开几桶酒、把自己淹在金黄的麦酒雨里怎么样？我看我们的作为该得这些。~
END
+ ~Global("C02DrakeRomanceActive","GLOBAL",2)~ + ~那晚上呢？你晚上有什么打算？~ + t9.rom
++ ~我听着不错。~ + t9.5
++ ~你先去。我眼下更想要点清静。~ + t9.6
++ ~不如来一顿正经、有模有样的晚餐？~ + t9.7
++ ~我看不必。~ + t9.0

CHAIN C02DRAKJ t9.rom
~嘿。怕是对眼下来说有点过了。再说你也不会喜欢一个醉得站不住的我在你卧房里。可我确实动心……（笑）~
EXIT

CHAIN C02DRAKJ t9.4
~你也是……我的领袖，我的朋友。~
EXTERN C02DRAKJ t9.3

CHAIN C02DRAKJ t9.5
~这才是我爱听的。~
EXIT

CHAIN C02DRAKJ t9.6
~随你。不过你要改主意，我给你留一桶。你随时来都欢迎。~
EXIT

CHAIN C02DRAKJ t9.7
~哈！那你还不够了解我。可你要真这么想，这回我就依你。~
EXIT

// Romantic dialogue

CHAIN IF ~Global("C02DrakeRomanticTalk","GLOBAL",1)~ THEN C02DRAKJ r1
~听着，<CHARNAME>，我看我们该谈谈。谈谈我们彼此一直以来的相处方式。~ [C0BLANK]
DO ~IncrementGlobal("C02DrakeRomanticTalk","GLOBAL",1)~
END
++ ~我看这大概是个好主意。~ + r1.1
++ ~怎么，你不领我的情？~ + r1.2
++ ~现在不行，德雷克。~ + r1.0

CHAIN C02DRAKJ r1.0
~现在不说就永远不说了，<CHARNAME>。你确定不想听？~
END
++ ~也好。我听着。~ + r1.1
++ ~我没兴趣。~ + r1.6

CHAIN C02DRAKJ r1.1
~这一路我们谈了很多，我承认我跟你说过些我绝不会对别人说的话，你也一样。到现在我一直没提，可我怕有些事得说清楚。~
= ~你对我显出些兴趣，我不介意，事实上我觉得受用。我佩服你，不止一方面。可不管是当朋友、知心、结义兄弟还是情人……我更希望弄明白我们彼此算什么。我也希望你能明白。~
= ~说实话，我要年轻几岁，大概压根不在乎。可这条路我走过不止一回。彼此坦白，能省掉很多痛苦和误会。~
END
++ ~既如此，那我就说实话。你已不只是朋友，我想我们更亲近。~ + r1.3
++ ~说实话，我没想那么远。我说的那些全是闹着玩。~ + r1.4
++ ~也许换个时候，我们的关系能更进一步……可说实话，我爱着别人。~ + r1.5
++ ~你说得有理。知道你的想法后，我不觉得继续这样自在。~ + r1.6

CHAIN C02DRAKJ r1.2
~不，要说是我的感受，那正相反。我只是觉得有些话得说。~
EXTERN C02DRAKJ r1.1

CHAIN C02DRAKJ r1.3
~我的一部分……其实比我预料的多……盼着你会那么说……~
END
IF ~Gender(Player1,MALE)~ + r1.7
IF ~!Gender(Player1,MALE)~ + r1.8
IF ~OR(10)
	Global("bd_neera_romanceactive","global",2)
	Global("bd_rasaad_romanceactive","global",2)
	Global("bd_dorn_romanceactive","global",2)
	Global("bd_corwin_romanceactive","global",2)
	Global("bd_glint_romanceactive","global",2)
	Global("bd_voghiln_romanceactive","global",2)
	Global("bd_viconia_romanceactive","global",2)
	Global("bd_safana_romanceactive","global",2)
	Global("C02SireneRomanceActive","global",2)
	Global("C02AuraRomanceActive","global",2)~ + r1.x

CHAIN C02DRAKJ r1.4
~是，我知道。可你要对我有过什么感觉，那……~
END
IF ~Gender(Player1,MALE)~ + r1.7
IF ~!Gender(Player1,MALE)~ + r1.8
IF ~OR(10)
	Global("bd_neera_romanceactive","global",2)
	Global("bd_rasaad_romanceactive","global",2)
	Global("bd_dorn_romanceactive","global",2)
	Global("bd_corwin_romanceactive","global",2)
	Global("bd_glint_romanceactive","global",2)
	Global("bd_voghiln_romanceactive","global",2)
	Global("bd_viconia_romanceactive","global",2)
	Global("bd_safana_romanceactive","global",2)
	Global("C02SireneRomanceActive","global",2)
	Global("C02AuraRomanceActive","global",2)~ + r1.x

CHAIN C02DRAKJ r1.5
~我猜到了。就当我什么都没说。~
DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",3)~ EXIT

CHAIN C02DRAKJ r1.6
~我明白。我不会为这个怪你。~
DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",3)~ EXIT

CHAIN C02DRAKJ r1.7
~真该死。我希望有一天能带你回我家，可看我们关系的性质、我的身份，还有对我的要求，我知道那大概不可能。~
= ~尽管我希望不是这样，可我知道我们之间的事多半不会长久。你真想要这样吗，<CHARNAME>？~
END
++ ~我不在乎。我想跟你在一起。~ + r1.9
++ ~谁说得准将来会怎样？我们只管享受这一刻，我们也该享受。~ + r1.9
++ ~也许你说得对。也许这终究不是我想要的。~ + r1.6

CHAIN C02DRAKJ r1.8
~你是一位真正的淑女，<CHARNAME>，我哪能比，可你要真想要这样，我就尽力为你做到最好。~
EXTERN C02DRAKJ r1.10

CHAIN C02DRAKJ r1.9
~（咧嘴笑）你想要什么的时候，就是个死倔的傻瓜。我就喜欢这种男人。~
EXTERN C02DRAKJ r1.10

CHAIN C02DRAKJ r1.10
~那我就不再多说了。我们就照原样继续，不管我们会怎样，都一起面对。~
EXIT

CHAIN C02DRAKJ r1.x
~不，算了。我知道你已心有所属。我压根不该提这个。~
DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",3)~ EXIT

CHAIN IF ~Global("C02DrakeRomanticTalk","GLOBAL",4)~ THEN C02DRAKJ r2
~快到头了。你知道的，对吧？~ [C0BLANK]
DO ~IncrementGlobal("C02DrakeRomanticTalk","GLOBAL",1)~
END
++ ~我知道。~ + r2.1
++ ~紧张吗？~ + r2.2
++ ~那就动手吧。~ + r2.1

CHAIN C02DRAKJ r2.1
~现在说这个也许早了点，可……这一路挺有趣。尤其有你在一起。我知道这大概不会长久，毕竟我还要当骑士什么的，可……~
= ~我一直在想你是不是认真的。我是说，关于我。起初像是玩笑，等你找到别人就腻了，可……你说的那些真是认真的，对吧？~
= ~我也索性说实话，<CHARNAME>。我已把你当朋友，当<PRO_BROTHERSISTER>，也许还更近，可要不要再往前走，不由我定。那取决于你。~
= ~当然，前提那真是你想要的。是吗？~
END
++ ~是。我真在乎你，德雷克。~ + r2.3
++ ~我不确定了。不管怎样，我也玩得开心。~ + r2.3
++ ~不。我不想要了。我都不确定自己真想要过。~ + r2.4

CHAIN C02DRAKJ r2.2
~不。嗯，是……也许有一点。这事有点不对劲，可……也许没什么。~
EXTERN C02DRAKJ r2.1

CHAIN C02DRAKJ r2.3
~这对我来说够了。这让……我难得地高兴。知道自己在这外头不是孤身一人。~
= ~谢谢你，<CHARNAME>。~
DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",2)~ EXIT

CHAIN C02DRAKJ r2.4
~我看你最清楚。我还以为你想要更多……看来我错了。~
DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",3)~ EXIT

CHAIN IF ~Global("C02DrakeLastRomanticTalk","GLOBAL",1)~ THEN C02DRAKJ r3
~我想把这个给你，<CHARNAME>。~ [C0BLANK]
DO ~GiveItem("c0dlock",Player1) IncrementGlobal("C02DrakeLastRomanticTalk","GLOBAL",1)~
END
+ ~Global("C02DrakeKnowsBG1","GLOBAL",1)~ + ~这吊坠……不是你家的传家宝吗？我不能收！~ + r3.1
+ ~!Global("C02DrakeKnowsBG1","GLOBAL",1)~ + ~这是个吊坠，对吧？你为什么给我？~ + r3.2
++ ~这是临别礼物？~ + r3.3
++ ~我不要。~ + r3.1

CHAIN C02DRAKJ r3.1
~拿着。我要你收下。我们很快就要分开……但愿它能让你别想我这张脸。或者别忘了它。~
EXTERN C02DRAKJ r3.4

CHAIN C02DRAKJ r3.2
~这是一件老传家宝。可我并没多舍不得。其实，我把它给你，是因为……~
EXTERN C02DRAKJ r3.4

CHAIN C02DRAKJ r3.3
~只是暂时。我确信我们哪天还会再见。毕竟安姆离剑湾不远。~
EXTERN C02DRAKJ r3.4

CHAIN C02DRAKJ r3.4
~（德雷克啪地打开吊坠，露出一幅手绘的他自己的肖像，隔着玻璃护着。德雷克尴尬地挠挠头。）~
= ~呃……我那时年轻。胡茬没这么黑，头发短一点，鼻子还没被打断好几回。可至少还认得出。~
END
++ ~你为什么把这个给我？~ + r3.5
++ ~你那时看着就跟现在一样得意。~ + r3.6
++ ~这是份好礼。谢了，德雷克。~ + r3.7
++ ~我说了我不要。~ + r3.8

CHAIN C02DRAKJ r3.5
~我不知道。我看我是想让你有样东西记得我。~
EXTERN C02DRAKJ r3.7

CHAIN C02DRAKJ r3.6
~嘿。我看有些东西永远不变。不过要我当时就像现在知道这么多，我怀疑我笑不了这么开。~
EXTERN C02DRAKJ r3.7

CHAIN C02DRAKJ r3.7
~我上一个把它送出去的人，跟我分得不算和气。我绝不会当面认，可我后悔。我不想这回也那样。~
= ~好好收着。我希望你哪天看着它，想起我们至今有过的所有好时光。这样我睡得安稳些。~
EXIT

CHAIN C02DRAKJ r3.8
~嗯，我也真不想要。光是看看我以前那副样子就让我难受。帮我个忙，从我手上拿走吧。~
EXTERN C02DRAKJ r3.7

// interjections

// Al-Alai

I_C_T BDALALAI 0 C0DrakeBDALALAI0
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~把火元素带进酒馆。还是木头盖的。这绝不会出任何岔子。~
END

// Alyth

INTERJECT BDALYTH 32 C0DrakeBDALYTH32
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~哈！精灵之歌愿意背这种名声吗，女士？把自己的利润摆在其他一切之上，连穷人的需求都不顾？我已经能看出，这事一旦传到寻常百姓耳朵里，你这生意会走到哪儿去，你看不出来？~
EXTERN BDALYTH 33

// Barrel

I_C_T BDBARREL 0 C0DrakeBDBARREL0
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~*嗅* 闻着差不多。谁手上有干净的杓子？拿手去碰好酒从来不是好主意。~
== BDBARREL ~把那桶拿走？~
END

// Bence

I_C_T BDBENCE 41 C0DrakeBDBENCE41
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~*叹气*~
END

// Bridgefort

I_C_T BDBF1 1 C0DrakeBDBF11
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~啊……任何有点本事的祭司，一感到负能量的冲击就认得出。可它是从哪儿来的，我在想？~
END

// Corwin

I_C_T BDSCHAEL 39 C0DrakeBDSCHAEL39
== BDSCHAEL ~还有一位从安姆来的提尔祭司，叫德雷克·考尔菲尔德，住在三只老酒桶。怪的是，他竟自愿帮燃焰铁拳参加讨伐圣战军的远征，尽管安姆和博德之门之间关系……不算和睦。~
== BDSCHAEL ~听说他据说是光辉之心骑士团的成员，可我头一回见他的印象，让我对这说法有点怀疑。不过你要认识他，他也许会信你。~
DO ~SetGlobal("C0DrakeBDSCHAEL39","GLOBAL",0)~
END

I_C_T BDSCHAEL 154 C0DrakeBDSCHAEL154
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~这是什么？我看这不是跟着你走的燃焰铁拳那位漂亮队长吗，<CHARNAME>？~
== BDSCHAEL ~没错。沙尔·科温。我想我们简短见过。~
== C02DRAKJ ~确实见过，队长。我在想，你接待我会不会有你同僚对我的一半热络。~
== BDSCHAEL ~我看你会发现，我们并非人人都像你以为的那样对安姆人有那么多偏见，先生。也请你别作别的假设。~
== C02DRAKJ ~记下了。毕竟我们很快就要并肩做事。可愿一起喝杯友好的酒，队长？~
== BDSCHAEL ~如你所见，我眼下挺忙。你准备好走了吗，<CHARNAME>？~
END

I_C_T BDSCHAEL 251 C0DrakeBDSCHAEL324
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~说得真有分寸，队长。~
END

I_C_T BDCORWIJ 324 C0DrakeBDCORWIJ324
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~哈！只有跟你，<CHARNAME>，只有跟你才会有这种奇迹……嗯，我说干嘛不？也许能提供个有趣的视角。~
END

I_C_T BDCORWIJ 106 C0DrakeBDCORWIJ106
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~他是个自私、怯懦的烂人。他走了别难过。那大概是他为你孩子做过的最好一件事。~
== BDCORWIJ ~你说得轻巧，德雷克。我看你没独自养过孩子。~
END

I_C_T2 BDCORWIJ 123 C0DrakeBDCORWIJ123
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~趁我们虚弱时从背后捅刀，那会给圣战军所谓的正义立个坏样子，你不觉得吗，队长？来，我们不该浪费这机会。~
END

// Dauston

I_C_T BDDAUSTO 2 C0DrakeBDDAUSTO2
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~*哼* 可对我们有些人来说，显然已经太迟了。~
END

// de Lancie

I_C_T2 BDDELANC 16 C0DrakeBDDELANC16
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~你知道，我从没想到我会想念又像普通士兵那样被人使唤的感觉。~
END

I_C_T BDDELANC 23 C0DrakeBDDELANC23
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~倒不是我在主张什么，可削弱敌人也会让他们更容易被饶过……不过我不能保证士兵们会那么看。~
END

I_C_T2 BDDELANC 26 C0DrakeBDDELANC26
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~不管怎样那大概是最妥当的，<CHARNAME>。要传出去说我们下毒害敌人，我想不出士兵们还能有多少信心打仗。就当我们从没提过这事。~
END

// Earth Elemental

I_C_T2 BDEARTHE 1 C0DrakeBDEARTHE1
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~你偏挑了大的那个，是吧？~
== BDEARTHE ~咕噜噜隆隆！~
END

// Endless

INTERJECT BDENDLES 2 C0DrakeBDENDLES2
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake") Dead("BDZHADRO")~ THEN ~站住，幽魂！我以平衡者提尔的祭司与信徒身份说话，我告诉你们，巫妖已不存在了。你的守夜结束了。~
EXTERN BDENDLES 4

// Flaming Fist

I_C_T2 BDFFXXII 5 C0DrakeBDFFXXII5
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~嗯，那真是……有点意思。我看我是被比下去了，<CHARNAME>。~
END

// Halatathlaer

I_C_T BDHALATA 4 C0DrakeBDHALATA4
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~嗯……奇怪。我的训练让我对幽魂有些见识，可这一个……嗯，这么说吧，我从没遇到过语气这么……懊悔的。~
END

// Hephernaan

I_C_T BDHEPHER 10 C0DrakeBDHEPHER10
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~有种就自己来拿，你这怯懦的贱种！~
END

// Hester

EXTEND_TOP BDHESTER 6 #3
+ ~IsValidForPartyDialogue("C0Drake")~ + ~德雷克，你看着像有话要说。~ EXTERN C02DRAKJ bdhester
END

EXTEND_TOP BDHESTER 7 #3
+ ~IsValidForPartyDialogue("C0Drake")~ + ~德雷克，你看着像有话要说。~ EXTERN C02DRAKJ bdhester
END

CHAIN C02DRAKJ bdhester
~你让我想起我在安姆军头一回上战场时的自己。我知道，我知道……头一回面对痛苦或可能的死亡总是可怕，是，可不熬过去，就永远不变。没人靠总走容易的路长本事。~
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_hester_skill","global",2)~
== BDHESTER ~所以我想躲开战斗和它带来的一切，就是错过我眼下的生活……？~
== C02DRAKJ ~瞧？你明白了。当然，当场会很吓人，可我保证一个月后你会跟同袍们就着一杯麦酒和一块热烤肉大笑。当然，前提你有胆子熬过去。~
EXTERN BDHESTER 10

// Hyreth

INTERJECT BDHYRETH 2 C02DrakeHYRETH2
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~啊……原来这位信奉殉道之神伊尔玛塔。怪不得他这么固执。~
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake") IsValidForPartyDialogue("C0Sirene")~ THEN ~既如此，也许该让我们的慈悲女士去跟他谈？无疑她作为泣神勇士的身份，会让她的声音比我们俩都更有分量。~
DO ~SetGlobal("BD_WOUNDED_ZEALOT_DOSIA","BD3000",1)~ EXTERN BDHYRETH 3

EXTEND_TOP BDHYRETH 4 #3
+ ~IsValidForPartyDialogue("C0Drake")~ + ~德雷克？你有什么主意？~ EXTERN C02DRAKJ bdhyreth4
END

CHAIN C02DRAKJ bdhyreth4
~嗯……我不能说我多熟伊尔玛塔教义，可我以前在阿斯卡特拉本地的礼拜堂跟泣神的祭司谈过，所以我对他们行事的路数懂个一两分。我记得，信徒可以卸下自己的痛苦……只要有别人愿意替他们承受。~
== C02DRAKJ ~换句话说，<CHARNAME>……你要他放下痛苦，你就得替他流点血。你还确定你有兴趣？~
EXTERN BDHYRETH 8

// Imoen

EXTEND_BOTTOM BDIMOEN 104
+ ~Global("bd_player_exiled","global",1)
Global("C0Drake_party_epilogue","global",1)~ + ~德雷克在哪？他肯定想帮我。~ EXTERN BDIMOEN bdimoen1
+ ~Global("bd_player_exiled","global",0)
Global("C0Drake_party_epilogue","global",1)~ + ~德雷克在哪？他肯定想帮我。~ EXTERN BDIMOEN bdimoen2
END

EXTEND_BOTTOM BDIMOEN 109
+ ~Global("bd_player_exiled","global",1)
Global("C0Drake_party_epilogue","global",1)~ + ~德雷克在哪？他肯定想帮我。~ EXTERN BDIMOEN bdimoen1
+ ~Global("bd_player_exiled","global",0)
Global("C0Drake_party_epilogue","global",1)~ + ~德雷克在哪？他肯定想帮我。~ EXTERN BDIMOEN bdimoen2
END

CHAIN BDIMOEN bdimoen1
~我试着找过他，可他出城了。听说他一听到你受审的事就大怒，说必要时他会把整个骑士团从安姆带过来。我看他没料到我会先把你救出来。~
EXTERN BDIMOEN 119

CHAIN BDIMOEN bdimoen2
~我不知道。我一直没找到他。我猜他回安姆了。看来他终究没信你。~
EXTERN BDIMOEN 119

// Litila

EXTEND_BOTTOM BDLITILA 0
+ ~IsValidForPartyDialogue("C0Drake")~ + ~德雷克，你的祭司本事在这儿用得上吗？~ EXTERN C02DRAKJ bdlitila
END

CHAIN C02DRAKJ bdlitila
~也许用得上。听我说，幽魂！我们无意害你们。听我话中的真实，我以伤残之神提尔之名说话。~
== BDSOTUK ~我听见你的声音……你显形了。~
END
++ ~谢了，德雷克。幽魂，你现在能听懂我了吗？告诉我你生前是谁。~ DO ~AddXPObject("C0Drake",500)~ EXTERN BDLITILA 1
++ ~总算，你说得有点道理了。多多少少吧。你生前是谁？~ EXTERN BDLITILA 1
++ ~你们想从我们这儿得到什么，幽魂？~ EXTERN BDLITILA 1

// Lluis

I_C_T BDLLUIS 5 C0DrakeBDLLUIS5
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~不如你们把自己捆起来，我们就能留你们脑袋完整？~
END

// Mizhena

I_C_T BDMIZHEN 22 C0DrakeBDMIZHEN22
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~哼。你知道，我父亲跟我常下策略棋。跟策略女士的信徒较量一下，也许会有意思。~
END

// Nantrin

I_C_T BDNANTRI 7 C0DrakeBDNANTRI7
== BDNANTRI IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~看来德雷克现在跟着你了。那好。他人不坏，虽说一见机会就爱贫嘴。我毫不怀疑他会是个值得的同伴。~
== BDNANTRI ~我能为你做什么？~
END

// Ophyllis

I_C_T2 BDOPHYLL 40 C0DrakeBDOPHYLL40
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~嗯，那真是份不折不扣的执着。我都不知道该佩服他还是同情他。~
END

// Pedro

I_C_T BDPEDRO 0 C0DrakeBDPEDRO0
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~省点力气吧，士兵。一个显然淹死在自己酒里的人，是叫不醒的。~
END

// Rhayla

I_C_T BDRHAYLA 0 C0DrakeBDRHAYLA0
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~被人当成恶棍，而对方又不是在反讽，这对我来说倒是新鲜。~
END

// Rayphus

I_C_T BDRAYPHU 23 C0DrakeBDRAYPHU23
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~对一个圣武士来说，这立场少见——尤其是信奉提尔的。当然我不是不同意。不然我也不会在这儿。~
END

// Tristian

EXTEND_BOTTOM BDTRISTI 14
+ ~IsValidForPartyDialogue("C0Drake")~ + ~德雷克。~ DO ~SetGlobal("C02DrakePlaysCoroniir","GLOBAL",1)~ EXTERN C02DRAKJ bdtristi
END

CHAIN C02DRAKJ bdtristi
~好久没坐下来下策略棋了。我确信我很快就能学会规则。~
EXTERN BDTRISTI 15

INTERJECT BDTRISTI 1 C02DrakeBDTRISTI1
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake") Global("C02DrakePlaysCoroniir","GLOBAL",1)~ THEN ~嗯，那真是……长见识。红骑士的信徒完全另是一回事，棋盘上和真战场上都是。~
END
++ ~可你还是赢了。我佩服。~ EXTERN C02DRAKJ tristian1
++ ~你提过跟你父亲学棋。你们俩谁更强？~ EXTERN C02DRAKJ tristian2
++ ~干得好。走吧。~ EXIT

CHAIN C02DRAKJ tristian1
~嗯，我有好老师。跟红骑士的信徒斗智，我不是头一回。当然，我从没料到那些课会这么派上用场。~
EXIT

CHAIN C02DRAKJ tristian2
~当然是他。还差一大截。我认真起来甚至能赢加布里尔。可我父亲？一次都没赢过。~
EXIT

// Uncommon Cold

EXTEND_BOTTOM BDXERRA 1
+ ~IsValidForPartyDialogue("C0Drake")~ + ~保持镇定，士兵。德雷克会来看看你。~ EXTERN C02DRAKJ bdxerra1
END

CHAIN C02DRAKJ bdxerra1
~*哼* 不用我说你也看得出他烧得厉害。我们得想办法对付那热病，而且要快。我不是草药师，可我对战地医术还算熟，救得了一两条命。交给我。~ DO ~SetGlobal("bd_patient_xerra","global",2) IncrementGlobal("bd_sdd302_death_count","global",-1)~ 
EXTERN BDXERRA 2

EXTEND_BOTTOM BDZIDRAN 1
+ ~IsValidForPartyDialogue("C0Drake")~ + ~德雷克，你愿不愿意出个主意？~ DO ~SetGlobal("bd_patient_zidrand","global",2) IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN C02DRAKJ bdzidran1
END

CHAIN C02DRAKJ bdzidran1
~她看着比其他人糟，也不奇怪。把病人塞在一堆病人中间从来不是好主意。最好把她挪到私密些的地方。最好是空气干净的地方。~
EXTERN BDZIDRAN 2

EXTEND_BOTTOM BDYESTIM 1
+ ~IsValidForPartyDialogue("C0Drake")~ + ~呃，德雷克？有什么建议？~ DO ~SetGlobal("bd_patient_yestimell","global",2) IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN C02DRAKJ bdyestim1
END

CHAIN C02DRAKJ bdyestim1
~...~
= ~我的建议？拔兵器。顺手再备把铲子。~
EXTERN BDYESTIM 5

EXTEND_TOP BDDOSIA 11 #3
+ ~IsValidForPartyDialogue("C0Drake")~ + ~德雷克，我看你也没什么主意？~ EXTERN C02DRAKJ bddosia11
END

CHAIN C02DRAKJ bddosia11
~*耸肩* 医术真不是我的强项。这么重的病，多数治法都贵，还得要城里训练出来的医者。在这外头，我看我们最好的替代是黑刺李树皮。那跟任何药一样顶用。~
DO ~SetGlobal("bd_sdd302_uncommon_cold","global",2)
SetGlobal("bd_sdd302_blackthorn","global",1)
AddJournalEntry(61438,QUEST)~ EXTERN BDDOSIA 14

// Zelma

I_C_T2 BDZELMA 7 C0DrakeBDZELMA7
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~利刃只能带你到这儿，扒手。该教你什么叫钝而硬的正义了！~
END

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 26
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 27 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 28 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 29 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 30
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 31 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 32 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 33 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 34
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 35 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 36 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 37 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 38
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 39 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 40 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 41 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 42
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 43 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 44 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 45 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 46
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 47 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 48 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 49 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 50
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 51 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 52 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 53 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 54
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 55 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 56 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 57 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 58
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 59 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 60 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 61 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 62
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 63 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 64 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 65 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 66
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 67 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 68 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 69 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 70
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 71 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 72 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 73 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 74
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 75 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 76 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 77 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 78
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 79 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 80 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 81 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 82
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 83 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 84 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 85 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 90
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 91 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 92 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 93 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

CHAIN BDTHRIX ThrixWager1
~那个提尔祭司，对……他那俗世皮囊底下，善与神圣的臭味明明白白。无疑他的灵魂会是个好彩头。~
END
++ ~也许。不过我赌德雷克的灵魂，只是不知道提尔肯不肯放手。~ DO ~SetGlobal("C02DrakeSacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
++ ~德雷克不该沦为你游戏里的棋子，魔鬼。我看不行。~ DO ~SetGlobal("C02_Saved_Drake","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN C02DRAKJ ThrixWager2
++ ~我看不必。把我的盟友排除在外，我们就赌我的灵魂，只赌我的，明白？~ EXTERN BDTHRIX 113
++ ~我不玩你这扭曲的把戏，魔鬼。让开，不然就付代价。~ EXTERN BDTHRIX 12

CHAIN C02DRAKJ ThrixWager2
~哎呀，谢谢你，<CHARNAME>。我可不能说自己这就舍得撇下这副肉身。~
EXTERN BDTHRIX ThrixWager3

CHAIN BDTHRIX ThrixWager3
~哼，特里克丝早料到了。那好吧。~
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("C02DrakeSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("C02DrakeSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("C02DrakeSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("C02DrakeSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("C02DrakeSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
~好……这个跟神有牵连的，无疑能让特里克丝对他们有影响。你按我们说好的，把他交出来吗，巴尔之子？~
END
++ ~交易就是交易，我看。~ DO ~SetGlobal("C02_thrix_mark_Sirene","global",1)~ EXTERN C02DRAKJ ThrixWager5
++ ~休想。死掉的魔鬼收不了灵魂。~ EXTERN BDTHRIX 10

CHAIN C02DRAKJ ThrixWager5
~哦，那我可不那么确定。你想要我的灵魂，行……只是别指望我让你轻易得手。~
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

// Burnt Inn

CHAIN IF ~Global("C02DrakeInnTalk","GLOBAL",1)~ THEN C02DRAKJ inntalk
~嗯，这地方看着挺惬意。无疑是圣战军的手笔。~
DO ~SetGlobal("C02DrakeInnTalk","GLOBAL",2)~
= ~你知道，我路过圣战军经过的一个村子，那村子有那份……可疑的荣幸招待过圣战军。最后他们付出的远多于他们原打算的。~
END
++ ~那村子叫什么？~ + inntalk.1
++ ~我不太明白你具体指什么。~ + inntalk.2
++ ~现在不是闲聊的时候，德雷克。~ + inntalk.0

CHAIN C02DRAKJ inntalk.0
~随你。~
EXIT

CHAIN C02DRAKJ inntalk.1
~我不知道。圣战军……或者说那些混蛋对这地方干的事之后，门上的字完全认不出了。~
EXTERN C02DRAKJ inntalk.2

CHAIN C02DRAKJ inntalk.2
~我从那些没被征走、也没被赶走的可怜幸存者那儿听说，他们给了面包和住处……圣战军却拿走了一切。然后为了保险，他们把村子烧了，好给敌人什么也不留。~
= ~军中俗称“焦土”策略。战时不算罕见，可我们说的不是富裕丰产的地方。那只是个小村子，村里人对跟自己无冤无仇的人太厚道了。~
= ~我不明白他们为什么觉得有必要。那看着就跟我过去见过的许多匪帮和佣兵扫荡一样。无谓的暴行，我看着那些烧黑的屋子和田地的残骸，只看到这个。~
END
++ ~你以前见过很多这种事？~ + inntalk.3
++ ~我感觉有个故事要来了。你打算讲给我听？~ + inntalk.4
++ ~我倒不想听这个。~ + inntalk.0

CHAIN C02DRAKJ inntalk.4
~是，我要讲。你愿意听吗？~
END
++ ~我看行。你见过很多像这样被毁的家？~ + inntalk.3
++ ~不，不算多。~ + inntalk.0

CHAIN C02DRAKJ inntalk.3
~我不会说很多。没到我眼下跟你讲的这地步。可那个村子，或者说它剩下那点，让我想起多年前一桩类似的事，在安姆边境一个差不多的村子，叫橡郡。~
= ~那是个建在山谷中间的小农庄。我那时才十四岁，跟我叔叔德里克住在那儿。我为什么在那儿……嗯，跟你无关，就说我父母那时照顾不了我。那差不多是我有过的最接近平静日子的一段。直到那桩事为止。~
= ~那天，一伙穿紫衣的人——我至今不知道他们是谁——冲进村子，杀掉所有躲得慢、让得慢的人，把一切烧成灰……我们除了我叔叔，没有受过训练的战士，而他多年没举过剑。我们毫无胜算，所以我们能做的顶多是趴低，等一切过去。就连那也不够救下所有人。~
= ~我算走运，出来没留下什么永久的伤。我叔叔就没那么走运，他残了。他打架时丢了一只眼和用剑的手，从那以后再没能挥过兵器。可我得说他算走运，想想我后来看到的其他一些男人……或者说男人的尸体的样子。~
END
++ ~太可怕了！~ + inntalk.5
++ ~那你呢？那天你没打？~ + inntalk.6
++ ~这可怕的故事我听够了，德雷克。我们走吧。~ + inntalk.0

CHAIN C02DRAKJ inntalk.6
~我？哈！你打赌我想打。可我那位好叔叔的固执，把我跟我父亲都羞死了。他像头骡子。他一点不肯，毕竟我是他监护的。~
EXTERN C02DRAKJ inntalk.5

CHAIN C02DRAKJ inntalk.5
~哪怕经过后来那么多仗、见过那么多可怕的事……橡郡那场屠杀在我脑子里还是清清楚楚。~
= ~骑士团被迫出手，我听说村子重建了，幸存者也缓过来了，可……我再没回去过。~
= ~可我希望你能明白我为什么坚决反对圣战军和它干的一切。我那时看到的，跟我现在看到的……太像了。像得让人难受。~
= ~如果我想防止再发生多年前那种我无能为力的惨事……那我就把我的力量加到你的力量上。这种事不能让它继续。~
EXIT

// Thrix reaction - non-romanced

APPEND C02DRAKJ

IF ~Global("C02DrakeSacrifice","bd4500",1)~ ThrixTalk0
SAY ~...~
= ~嗯，那真是……有点意思。我们走吧。~
+ ~Global("C02_thrix_mark_Drake","global",1)~ + ~你就没什么要说的？~ DO ~SetGlobal("C02DrakeSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("C02_thrix_mark_Drake","global",1)~ + ~你就没什么要说的？~ DO ~SetGlobal("C02DrakeSacrifice","bd4500",2)~ + ThrixTalk2
+ ~Global("C02_thrix_mark_Drake","global",1)~ + ~对不起。~ DO ~SetGlobal("C02DrakeSacrifice","bd4500",2)~ + ThrixTalk3
+ ~!Global("C02_thrix_mark_Drake","global",1)~ + ~对不起。~ DO ~SetGlobal("C02DrakeSacrifice","bd4500",2)~ + ThrixTalk4
+ ~Global("C02_thrix_mark_Drake","global",1)~ + ~是。走吧。~ DO ~SetGlobal("C02DrakeSacrifice","bd4500",2)~ + ThrixTalk5
+ ~!Global("C02_thrix_mark_Drake","global",1)~ + ~是。走吧。~ DO ~SetGlobal("C02DrakeSacrifice","bd4500",2)~ + ThrixTalk6
END

IF ~~ ThrixTalk1
SAY ~何必呢？我看这情形我们俩都够清楚了。~
= ~我不是为自己怕。说实话，我更怕别的被你游戏卷进来的人。让这念头在你那邪心里转一会儿。~
IF ~Global("C02DrakeRomanceActive","GLOBAL",2)~ DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",3)~ + ThrixTalk6
IF ~!Global("C02DrakeRomanceActive","GLOBAL",2)~ + ThrixTalk6
END

IF ~~ ThrixTalk2
SAY ~有什么可说的，<CHARNAME>？要么你对自己的机敏有十足把握，要么你对自己赌注的代价在乎得不够。你宁愿我怎么想？~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk3
SAY ~不，你不是。我们就别来这套善意谎言了，行吗？~
IF ~Global("C02DrakeRomanceActive","GLOBAL",2)~ DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",3)~ + ThrixTalk6
IF ~!Global("C02DrakeRomanceActive","GLOBAL",2)~ + ThrixTalk6
END

IF ~~ ThrixTalk4
SAY ~为什么道歉？不如让我们俩都相信，你从头到尾都对自己的头脑有十足信心。再说……我看终究也没造成什么害。~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk5
SAY ~也许你指望我会为刚发生的事心碎？学着习惯失望吧。~
IF ~Global("C02DrakeRomanceActive","GLOBAL",2)~ DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",3)~ + ThrixTalk6
IF ~!Global("C02DrakeRomanceActive","GLOBAL",2)~ + ThrixTalk6
END

IF ~~ ThrixTalk6
SAY ~你要还剩点善心，我们就再也不提这事。~
IF ~~ EXIT
END

// Tender of the Dead

IF ~Global("C02DrakeVelsharoon","GLOBAL",1)~ velsharoon
SAY ~嗯，那真不愉快。不过看先前给我们的那些线索，我不能说这完全出乎意料。~
++ ~你什么意思？~ + velsharoon1
+ ~CheckStatGT(Player1,14,INT)~ + ~那位“女祭司”有些事要解释。~ + velsharoon1
++ ~你早知道会这样？~ + velsharoon1
END

IF ~~ velsharoon1
SAY ~我怀疑过有点不对，可，嗯……在证实之前说什么也没用。~
= ~这显然是祭司的手笔，<CHARNAME>。要我没弄错，是维尔沙伦的信徒。我记得那是遥远的塞尔地方挺流行的神。死灵术正是他信徒的本行。~
= ~我建议审审我们那位“高贵”的洛山达女祭司。而且兵器在手……无疑她还藏着更多瞒着我们的事。~
IF ~~ DO ~SetGlobal("C02DrakeVelsharoon","GLOBAL",2) SetGlobal("KNOW_VELSHAROON","GLOBAL",1)~ EXIT
END

END

INTERJECT BDJUNIA 16 C0DrakeBDJUNIA16
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~“晨星”？哈！这倒是头回听说。连我们这些三神教会的信徒都知道洛山达是“晨之主”。你真懂你自己的信仰吗，女士？~
EXTERN BDJUNIA 18

// Drake-Voghiln

CHAIN IF ~Global("C02DrakeVoghilnRestTalk","GLOBAL",1)
IsValidForPartyDialogue(Myself) IsValidForPartyDialogue("Voghiln")~ THEN BDVOGHIJ voghresttalk
~你剑臂有力，德雷克，可沃吉尔恩从不在比力气上退让！~
DO ~IncrementGlobal("C02DrakeVoghilnRestTalk","GLOBAL",1)~
== C02DRAKJ ~大话，路斯坎人，可瓶子还没空一半。我总会尝到胜利的酒。举臂，吟游诗人！~
== BDVOGHIJ ~嚯嚯，这才是沃吉尔恩懂的话！再来！~
END
++ ~这儿怎么了？~ EXTERN C02DRAKJ voghresttalk1

CHAIN C02DRAKJ voghresttalk1
~只是场小小的友好……掰手腕……啊，我的专注没了。你又赢了。喝！~
== BDVOGHIJ ~我这就喝！*咕咚咕咚*……啊！~
== C02DRAKJ ~趁还能就放纵吧，朋友，我还没完。这回用左臂。来！~
== BDVOGHIJ ~如你所愿！~
== C02DRAKJ ~嗯嗯呃……~
== BDVOGHIJ ~啊啊……~
== C02DRAKJ ~……哈！胜利归我！~
== BDVOGHIJ ~唉，打得好，我的朋友。看来我另一只臂还得练。~
== C02DRAKJ ~日夜扛盾有它的好处。~
== BDVOGHIJ ~你说的是实话。啊，可给老沃吉尔恩留点酒！我们要玩到夜里完，对吧？~
== C02DRAKJ ~当然。你不是打算退出吧？~
== BDVOGHIJ ~绝不！~
DO ~RestParty()~ EXIT

// Personal Quest

CHAIN IF ~Global("C02DrakeQuest","GLOBAL",2)~ THEN C02DRAKJ quest
~<CHARNAME>。借你一点时间，有件事……私人的，烦我一阵了。~
DO ~IncrementGlobal("C02DrakeQuest","GLOBAL",1)~
END
++ ~我听着。怎么了？~ + quest.1
++ ~行，可你最好快点。~ + quest.1

CHAIN C02DRAKJ quest.1
~我们过博尔斯基尔桥之前一阵，我往安姆送了一封文书，详述我们朝龙矛城堡进军的进展。~
= ~我向骑士团的上司请求援助，他们回准了一支小队，等我们在联军营地扎好，就给铁拳送来些有用的物资。~
END
++ ~你说的物资是什么？~ + quest.2
++ ~说重点。~ + quest.3

CHAIN C02DRAKJ quest.2
~我请求的是“任何我们用得上的东西”。医药、食物、兵器之类。那些也许不特别对你胃口，可里面也塞了几件更合我们这层次的强力物品。~
EXTERN C02DRAKJ quest.3

CHAIN C02DRAKJ quest.3
~我一直在数日子，假设没出岔子，那些物资该已经到营地了。可我一直没收到确认消息，我谈过的斥候也没见到符合我等的人。~
= ~当然，人有时会耽搁，可我总有种不好的预感，觉得可能出了事。他们要是在路上撞上了圣战军，那性命就有危险；最糟的情况，那些物资会落到圣战军手里。~
= ~不说“那些物资”里有几件骑士团丢了会不高兴的魔法器物，我也担心那些人出了什么事。这虽许跟我们眼下目标无关，我更愿意查查究竟怎么了……要是你不介意。~
END
++ ~你看着真担心。好，我们看看能不能找到他们。~ + quest.4
++ ~要真对你这么要紧，我们就留意着。可不保证能找到人。~ + quest.4
++ ~我们眼下没工夫分心。我们的主要目标是龙矛城堡。~ + quest.5

CHAIN C02DRAKJ quest.4
~谢谢你，<CHARNAME>。也许没事……据我所知，他们只是被些小麻烦拖住了，可万一不是……嗯，有备无患。~
DO ~AddJournalEntry(%Drake_SoD_Quest_1%,QUEST)~ EXIT

CHAIN C02DRAKJ quest.5
~*叹息* 嗯，不知道我的同袍出了什么事，我没法安心，可我看我们手头有更大的事。好吧，我试着说服营地里几位指挥官替我们处理。可我还是希望我们不管怎样留意线索……以防万一。~
DO ~AddJournalEntry(%Drake_SoD_Quest_1%,QUEST)~ EXIT

// ---------------------------------------------
// Player Initiated Dialogue
// ---------------------------------------------

APPEND C02DRAKJ

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN BEGIN pid
 SAY ~有事吗，<CHARNAME>？~ [C0DRA023]
	+ ~HPPercentGT(Myself,74) RandomNum(4,1)~ + ~你怎么样？~ + a1
	+ ~HPPercentGT(Myself,74) RandomNum(4,2)~ + ~你怎么样？~ + a2
	+ ~HPPercentGT(Myself,74) RandomNum(4,3)~ + ~你怎么样？~ + a3
	+ ~HPPercentGT(Myself,74) RandomNum(4,4)~ + ~你怎么样？~ + a4
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,1)~ + ~你怎么样？~ + b1
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,2)~ + ~你怎么样？~ + b2
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,3)~ + ~你怎么样？~ + b3
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,4)~ + ~你怎么样？~ + b4
	+ ~HPPercentLT(Myself,50) RandomNum(2,1)~ + ~你怎么样？~ + c1
	+ ~HPPercentLT(Myself,50) RandomNum(2,2)~ + ~你怎么样？~ + c2
	+ ~RandomNum(4,1)~ + ~想喝一杯吗？~ + drink1
	+ ~RandomNum(4,2)~ + ~想喝一杯吗？~ + drink2
	+ ~RandomNum(4,3)~ + ~想喝一杯吗？~ + drink3
	+ ~RandomNum(4,4)~ + ~想喝一杯吗？~ + drink4
	+ ~Class("C0Drake",FIGHTER_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~你现在成了战士，感觉如何？~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass
	+ ~Class("C0Drake",THIEF_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~你现在成了盗贼，感觉如何？~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass2
	+ ~Class("C0Drake",RANGER_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~你现在成了游侠，感觉如何？~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass3
	+ ~Class("C0Drake",MAGE_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~你现在成了法师，感觉如何？~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass4
	+ ~!Global("C0DrakeTalkStopped","GLOBAL",1)~ + ~赶路时我希望你少说点话。~ + pausedialog
	+ ~Global("C0DrakeTalkStopped","GLOBAL",1)~ + ~你要再跟我说话，我不介意。~ + startdialog
	++ ~你嗓子有问题？~ + stringfix	
	++ ~眼下没有。~ EXIT
END

IF ~~ a1
 SAY ~我也许有点醉了，可我撑得住。~
IF ~~ EXIT
END

IF ~~ a2
 SAY ~好得很，就是好得很。我有什么让你觉得不是这样？~
IF ~~ EXIT
END

IF ~~ a3
 SAY ~肚子里装满酒我会更高兴，可我们不能总要什么有什么。~
IF ~~ EXIT
END

IF ~~ a4
 SAY ~你是想让我也回一句？抱歉让你失望了。~
IF ~~ EXIT
END

IF ~~ b1
 SAY ~我比这好过。~
IF ~~ EXIT
END

IF ~~ b2
 SAY ~怎么……你关心我，我受宠若惊，<CHARNAME>。其实，也许你没注意，可我确实受伤了。~
IF ~~ EXIT
END

IF ~~ b3
 SAY ~哦，太好了。这些血迹绝对衬出了我内在的美。~
IF ~~ EXIT
END

IF ~~ b4
 SAY ~我是法术用光了？因为我发誓我在流血。要么就是醉得不成人样。不管哪样，都真够烦的。~
IF ~~ EXIT
END

IF ~~ c1
 SAY ~哦，真是好极了。我现在绝对没有肚子流血流得要死。我也绝对不需要马上救治，谢谢。继续，继续。~
IF ~~ EXIT
END

IF ~~ c2
 SAY ~这也许会让你挺吃惊，可……我受伤了。其实伤得挺重。我看我们俩谁能想点办法？~
IF ~~ EXIT
END

IF ~~ drink1
 SAY ~我向来如此，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ drink2
 SAY ~何必只喝一杯？把烦心事放下，喝到天旋地转。~
IF ~~ EXIT
END

IF ~~ drink3
 SAY ~我虽然很想，可上回钻进醉坑留下的偏头痛还没走干净。算了。~
IF ~~ EXIT
END

IF ~~ drink4
 SAY ~你要有的话。不过务必来烈的。~
IF ~~ EXIT
END

IF ~~ pausedialog
 SAY ~哎呀，你伤我心了，<CHARNAME>。不过你既这么说，那就这样。~
IF ~~ DO ~SetGlobal("C0DrakeTalkStopped","GLOBAL",1)~ EXIT
END

IF ~~ startdialog
 SAY ~学乖了，是吧？算你走运我心情大方。~
IF ~~ DO ~SetGlobal("C0DrakeTalkStopped","GLOBAL",0)~ EXIT
END

IF ~~ dualclass
 SAY ~好，很好。让我想起军中那些好日子。倒不是说有多少好日子，别管老兵们怎么说。血倒是流了不少，脑袋碎了不少，士气垮得更多。~
 = ~倒不是说更有效地挥锤感觉不好。我本来就不擅长治疗之术。这远更合我的本事。~
IF ~~ EXIT
END

IF ~~ dualclass2
 SAY ~你知道，这感觉不坏。懂了盗贼怎么想、怎么做，事情忽然比从前明白多了。~
 = ~骑士团那些家伙要知道我在干什么准会炸锅，可我还在干我的活，只是比从前更有效率。~
IF ~~ EXIT
END

IF ~~ dualclass3
 SAY ~要不是你拿那些训练手册磨我、把这一套全给我灌进去，我看这事不会发生。~
 = ~听说考尔菲尔德家有几个远亲是游侠。我外祖父当年是安姆军里的斥候。我看他要还活着，会赞同的。~
IF ~~ EXIT
END

IF ~~ dualclass4
 SAY ~我，法师？我，骑士世家传人，扔了铠甲，像老家那些斗篷巫师一样背一袋书卷和卷轴。哈！我承认，我完全没料到。~
 = ~看这非同寻常的转变，骑士团无疑会有几句挑拣的话。可我确信我总能应付。这期间，我们就看看我会不会在回到家之前把大家全点着，嗯？~
IF ~~ EXIT
END

IF ~~ stringfix
 SAY ~嗯……你知道，你也许说得对。给我一下……*咳*~
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("C0DRESET")~ EXIT 
END
END