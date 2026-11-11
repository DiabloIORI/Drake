BEGIN C0DRAKEJ

// PC Talks

// TALK 1

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",2)~ THEN C0DRAKEJ t1
~我看你到目前为止干得不错，至少该受点夸，<CHARNAME>，毕竟你才刚入这一行。要放倒一个像巴希勒斯这么厉害的家伙，是要点本事的……哪怕他疯得彻底，那也了不起。~ [C0DRAK02]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	++ ~你怎么知道我是新入这一行的？~ + t1.1
	++ ~我打算做的可不只是这些。~ + t1.2
	++ ~多谢你这句夸奖。~ + t1.3
	++ ~我们现在没工夫说话。~ + t1.0
	
APPEND C0DRAKEJ

IF ~~ t1.0
SAY ~哈！看来你宁愿动手不愿动嘴？那也好……我就看着你动手……你若喜欢，我静悄悄地看。~
IF ~~ EXIT
END

IF ~~ t1.1
SAY ~这不难看出来。你身上有那种刚接触外面广阔世界的人才有的谨慎与惊奇。过个一二十年，你往往会失掉身上那一部分。~
IF ~~ + t1.4
END

IF ~~ t1.2
SAY ~哦，我确信。不过你最好别让那份自信跑在你前头……控制不住它，往往收场难看。~
IF ~~ + t1.4
END

IF ~~ t1.3
SAY ~别太习惯这话。我身边那几个亲近的人会说，我说话有个毛病……挺粗鲁。~
IF ~~ + t1.4
END

IF ~~ t1.4
SAY ~不过，这才是我猜会相当有意思的一段同袍情的开头。也许你会继续让我刮目相看，或者开始拿平庸让我失望。谁知道呢？~
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~哦，我会让你刮目相看的。用不了多久，你就会为我神魂颠倒。~ + t1.5
+ ~Kit(Player1,OHTYR)~ + ~希望别的同信仰的弟兄没你这么混蛋。~ + t1.6
+ ~!Kit(Player1,OHTYR)~ + ~提尔的信徒都跟你一样混蛋吗？~ + t1.6
++ ~希望我配得上你的期望。~ + t1.7
++ ~那就跟着我。我会让你见识一两件值得佩服的事。~ + t1.8
END

IF ~~ t1.5
SAY ~那么，这是个挑战？好，我很乐意接下，<CHARNAME>。~
IF ~~ + t1.9
END

IF ~~ t1.6
SAY ~哦，不。怕是没有第二个我这样的人。只是你运气不好，头一个就撞上了我。~
IF ~~ + t1.9
END

IF ~~ t1.7
SAY ~哦，你可不是来让我刮目相看的，我的朋友。别忘了这一点。~
IF ~~ + t1.9
END

IF ~~ t1.8
SAY ~哈！你有自信，好。我喜欢。我见过的跟你一样大的孩子，多半吓得靴子都在抖。~
IF ~~ + t1.9
END

IF ~~ t1.9
SAY ~我有的是时间看你是一颗升起的新星，还是烧过就熄，可我们站在这儿空谈不会有半点进展，嗯？带路吧，我年轻的朋友。~
IF ~~ EXIT
END
END

// TALK 2

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",4)~ THEN C0DRAKEJ t2
~那么你追的这个人是怎么回事？我猜你对他有点私怨。~ [C0DRAK18]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
== C0DRAKEJ IF ~InParty("%IMOEN_DV%")~ THEN ~我，呃，从你朋友伊莫恩那儿听到过一两句，不过她更希望由你自己说，只要你愿意。当然，这些压根不关我的事。~
END
++ ~他杀了我的养父戈里昂。~ + t2.1
++ ~我没在追谁，德雷克。我只是出来看看世界。~ + t2.2
++ ~你说得对，这不关你的事。~ + t2.0

APPEND C0DRAKEJ

IF ~~ t2.0
SAY ~当然不关。那我就闭嘴。~
IF ~~ EXIT
END

IF ~~ t2.1
SAY ~啊。那确实是个追他的好理由。那你要是真找着他，打算怎么办？~
++ ~我不知道。可他伤了我，他得付代价。~ + t2.3
++ ~我想知道他为什么杀戈里昂，又为什么追我。~ + t2.4
++ ~说实话，我只是对烛堡外面的世界感兴趣。~ + t2.2
++ ~我的理由是我的，不是你的，德雷克。~ + t2.0
END

IF ~~ t2.2
SAY ~好，我尊重这个。不过，一个这么拼命要你脑袋的人，不会只试一次就罢手，你知道的。~
IF ~~ + t2.5
END

IF ~~ t2.3
SAY ~是这样吗？~
IF ~~ + t2.5
END

IF ~~ t2.4
SAY ~啊，是。我看只要他还想要你的血，你就别想歇着。~
IF ~~ + t2.5
END

IF ~~ t2.5
SAY ~你想过你这个披甲的仇人是个什么样的人吗？除了复仇的念头，你还了解他什么？~
++ ~他自愿跟强盗厮混。他几乎不可能是好人。~ + t2.6
++ ~戈里昂视他为敌，而戈里昂是个善良正直的人。我知道这些就够了。~ + t2.6
++ ~你要是见过他那身漆黑扭曲的铠甲，还有头盔底下那双残忍的眼睛，你就知道他纯粹是恶。~ + t2.6
+ ~Class(Player1,PALADIN_ALL)
!Kit(Player1,Blackguard)~ + ~我感觉过他的气场。阴暗、残忍、暴戾……我知道他是什么东西，就算他身上有善，也埋得太深，看不见。~ + t2.6
++ ~我不在乎他是什么样的人。他对我做的事，他得付代价。~ + t2.7
++ ~这不是我愿意跟一个像你这样的陌生人分享的事。别理我。~ + t2.0
END

IF ~~ t2.6
SAY ~好。我只是好奇你有没有想过，你这个仇人是否真该受正义之罚。至少看得出你想过这些，这挺好。~
IF ~~ + t2.7
END

IF ~~ t2.7
SAY ~这世界没那么简单，不能只把你的朋友和敌人分成善与恶，<CHARNAME>……我只希望你能明白这一点。~
= ~不过我看我这回戳你的意图和私事戳得够多了。我让你自己想想……暂时。~
IF ~~ EXIT
END
END

// TALK 3

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",6)~ THEN C0DRAKEJ t3
~剑湾真是人类最糟那部分的家园。我不能说骑士团派我来这儿是错的，哪怕他们只是想甩掉我。~ [C0DRAK03]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	++ ~他们想甩掉你？为什么？~ + t3.1
	++ ~这儿也有正派人。~ + t3.2
	++ ~我们现在没工夫说话。~ + t3.0
	
APPEND C0DRAKEJ

IF ~~ t3.0
SAY ~你这么说那就这样。~
IF ~~ EXIT
END

IF ~~ t3.1
SAY ~我在光辉之心里的同僚中间可不算受欢迎。他们说我带坏风气。~
IF ~InParty("AJANTIS")~ + t3.3
IF ~!InParty("AJANTIS")~ + t3.4
END

IF ~~ t3.2
SAY ~哦，当然。可你不能否认我们在这片广袤荒野里撞见了多少渣滓，附近哪个聚落都没试着管一管。他们任由邪恶滋长，把责任推给手边方便的人。~
= ~说到这个，我也不能说多看得上燃焰铁拳的无能。偷块面包的小贼他们像苍蝇扑腐肉一样追，可像巴希勒斯这样的疯子杀人犯在外头横行时，他们顶得上一袋牛粪。~
= ~也许骑士团说剑湾需要正义，还真有点道理。这一回我不能说不同意。~
++ ~你跟骑士团似乎不大合得来。~ + t3.1
++ ~这会儿说够了。~ + t3.0
END

IF ~~ t3.3
SAY ~他们有一整屋子像我们那位漂亮小子阿詹提斯那样的人，然后就是我。黑羊，那个不满足于只照吩咐办事的家伙。~
IF ~~ + t3.4
END

IF ~~ t3.4
SAY ~也许我还没提过，可我之所以还能留在骑士团，尽管他们瞧不上我，是有原因的。我父亲，杜兰德·考尔菲尔德二世，是阿斯卡特拉骑士团的三位教长之一。~
= ~他虽不比别人更看得上我的态度，可我要是辞职或被革职，他会当我是耻辱。单凭我那些当众醉酒的次数，我早该被踢出去好几回了。可从来没发生。~
++ ~你做那些都是故意惹你上司生气？~ + t3.5
++ ~你父亲是你走不了的唯一原因？~ + t3.6
++ ~你行事跟骑士团别的成员这么不同，肯定有原因。~ + t3.7
END

IF ~~ t3.5
SAY ~嗯，不。我是说，隔三差五惹那些老铁脑袋发火，我确实觉得有趣，可那不是我这么做的原因。这事复杂。~
IF ~~ + t3.7
END

IF ~~ t3.6
SAY ~嗯，是，我不能说他要是那样会很乐意，可……我并不反对骑士团。只是我们不总看法一致。~
IF ~~ + t3.7
END

IF ~~ t3.7
SAY ~你看，我当初只是某个老骑士的侍从，头几年替他擦甲、扛剑，那时候还没这么糟。可那差事完了，我就被放出去，在老家积点，呃，“实地”执法经验。~
= ~记住，我是在安姆首都出生长大的，那地方实际上被影贼把着。欺诈与腐化在每一个街角，所以有机会出一份力去对付一些，我倒挺高兴。~
++ ~这听着像是你会喜欢的事。哪里出了岔子？~ + t3.8
++ ~你宁愿给执法者当跟班？~ + t3.7a
++ ~这会儿说够了。~ + t3.0
END

IF ~~ t3.7a
SAY ~不，不完全是。那些日子确实无聊，可我那时……对某些可怕的真相还瞎着眼。起初我挺兴奋，一个提尔的信徒，终于有机会做些讨我神欢心的事。~
IF ~~ + t3.8
END

IF ~~ t3.8
SAY ~问题是，我很快发现没那么简单。清剿地下的奴隶贩子和盗贼窝点是简单活，可我想对付的是贵族里的毒蛇。那些人不是我提着锤子就能去收拾的。~
= ~我说不清我把多少腐化贵族报到骑士团跟前，最后只能眼看着他们脱身，因为证人神秘失踪，或者证据在法庭上恰巧被找出来。~
= ~我心里憋闷，眼看着我明知是卑劣怪物的那些人，以自由人的身份走在阿斯卡特拉的街上，嘲弄我，继续作恶。我把他们的案子又提到议会和骑士团，只换来一再受斥。那些年后，我对两边都失了不少敬意。~
++ ~你为什么不能把他们再送上去审？~ + t3.9
++ ~这些我听够了。走吧。~ + t3.0
END

IF ~~ t3.9
SAY ~你得懂安姆贵族怎么运作才明白，<CHARNAME>。没错，论身份我是贵族，可考尔菲尔德家原本是平民，靠战功才升上来。那些贵族，那些“真正的”贵族，待我们还不如最低的阶层。~
= ~而官僚大多出自那些贵族家族之一，其中至少一半口袋里装着影贼，这对我的处境可没半点好处。靠法律或正义几乎办不成任何事。~
= ~所以到了我第一次骑士试炼，我……啊，没去。我真看不出有什么意义，套上更亮的铠甲，只意味着被骑士团的条规箍得更紧。于是我留在原位，也因此被好几个比我年轻的同僚嘲弄。~
++ ~这就是骑士团别的成员这么不敬重你的原因？~ + t3.10
++ ~可成为正式骑士不是能给你更大的权柄吗？~ + t3.11
++ ~我明白了。总之，我们该走了。~ + t3.0
END

IF ~~ t3.10
SAY ~对。当然，他们不知道我背后全部的理由，只当我是个懒混账，宁愿把岁月喝掉也不肯有点出息。倒也不是他们全错。~
IF ~~ + t3.16
END

IF ~~ t3.11
SAY ~当然。同时，那也只会在背后给我画个更大的靶子，贵族们只会更看不起我。不引人注目有它的好处，因为你不被登记为威胁。~
IF ~~ + t3.16
END

IF ~~ t3.12
SAY ~要去追我说的那些人，那些在法之上的人，我靠着爱在酒馆喝酒，交了些……鬼祟的朋友。说实话，都是些讨人喜欢的家伙，只要你能不理会他们摸你口袋的企图。~
= ~他们给我弄来零碎消息，能帮着把那些傲慢混蛋送上正义的秤，我呢，等他们免不了犯法时，给他们一个公道的审理。~
++ ~你偷偷跟犯法的人合作？这可不大高贵。~ + t3.13
++ ~光辉之心知道你跟混混勾结吗？~ + t3.14
++ ~你为什么告诉我这些？你不怕我把你的秘密漏出去？~ + t3.15
END

IF ~~ t3.13
SAY ~我从没说我睁一只眼闭一只眼。记住，这些所谓的“犯法者”里，很多最后是替别人的罪当替罪羊，而法庭乐意让他们吊死。~
= ~我会说我是在稍微弯一弯我信仰的规矩，可要是我真犯了，提尔早就把我劈了。~
++ ~所以你认为提尔知道并认可你的做法。可骑士团知道吗？~ + t3.14
++ ~你不怕我哪天把这些告诉别人？~ + t3.15
END

IF ~~ t3.14
SAY ~不怕。他们要真知道，我怀疑连我父亲都说不动他们不把我永久放逐。他们绝不会承认我的想法背后有任何道理。~
IF ~~ + t3.16
END

IF ~~ t3.15
SAY ~哈！说实话，你要是更了解我，本来也会看出我是什么人。与其以后知道，不如现在知道，好让你明白我是诚实的。~
= ~再说，在这外头几乎没人知道我名字的地方，你觉得会有人知道或在乎，更别说信你？我看不会。~
IF ~~ + t3.16
END

IF ~~ t3.16
SAY ~我要是求稳，本不该跟你说这些，可……我觉得你最好知道我是什么样的人。~
= ~既然你知道我比我这个身份的人通常更没顾忌，你还信我吗？还是你也是同样想法的那类人？~
++ ~其实，知道这些让我更信你。~ + t3.17
++ ~我不赞成，可我知道你心怀善意。我不会拿这事怪你。~ + t3.17
++ ~我不确定我想要你这样的人待在队里。~ + t3.18
END

IF ~~ t3.17
SAY ~好，我就盼你这么说。这样我少失眠些。~
IF ~~ + t3.19
END

IF ~~ t3.18
SAY ~我留不留，由你决定，我的朋友。你要这样，就说一声。在那之前，我在这儿，也就留在这儿。~
IF ~~ + t3.19
END

IF ~~ t3.19
SAY ~我看今天我该说的都说够了。你继续吧，要是愿意。~
IF ~~ EXIT
END
END

// TALK 4

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",8)~ THEN C0DRAKEJ t4
~你怎么看这一路杀来杀去，嗯，<CHARNAME>？我猜你躲在那个书库里，对这事不会太熟。~ [C0DRAK04]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	++ ~是难受，可我撑得住。你问这个做什么？~ + t4.1
	++ ~不熟，可我挺享受。~ + t4.2
	++ ~我真希望自己不必对杀戮这么熟悉。~ + t4.3
	++ ~这会儿别烦我，德雷克。~ + t4.0

APPEND C0DRAKEJ

IF ~~ t4.0
SAY ~你说了算。~
IF ~~ EXIT
END

IF ~~ t4.1
SAY ~我大概不该突然把这话抛给你。你要知道我为什么问，嗯……我没别的意思。只是好奇。~
= ~往好处看，你像个正派孩子。我很难回头看着我们丢下的那些尸首，再把你跟它们联系起来。别误会……我不是说他们不该死，可……这事就是有点不对劲。~
++ ~就像你说的，我还没入门。这日子不是我选的。~ + t4.4
++ ~那你呢，德雷克？你头一回杀人是什么感觉？~ + t4.5
++ ~我没兴趣谈杀人，德雷克。~ + t4.0
END

IF ~~ t4.2
SAY ~是吗？我希望你别开始把这事当成好事。为你自己好。~
IF ~~ + t4.1
END

IF ~~ t4.3
SAY ~正派人不会从四处送人见神里找乐子，<CHARNAME>。只是有时我们不得不做，哪怕我们厌恶……有时，我们要是不杀，会有更糟的事发生。~
IF ~~ + t4.1
END

IF ~~ t4.4
SAY ~这我明白。只是我很少认识像你这年纪就被逼着杀人的人……更少见识过在这么多不利处境下还活到现在的。~
IF ~~ + t4.5
END

IF ~~ t4.5
SAY ~我头一回为活命动手，嗯……你听了也许失望，那对我没多大冲击。我直到二十几岁进了军队，才见到头一场真正的仗。~
= ~那时安姆没跟别的人类国家公开开战……所以我打的只是赛西利斯军里的兽人和地精类。那容易……我从没把他们当比怪物更多的东西。直到我不得不把兵器转向同类，我才明白杀人能有多难。~
= ~安姆边境附近一个聚落出了场叛乱的麻烦事……本该是个轻松差事……镇压叛军，留个警告，回家。他们不是士兵。他们没有赛西利斯人那样的武器和法术。嗯……我学到，有时不是“杀或被杀”的时候，打起来反而更难。~
++ ~这么说你参与了杀那些叛军？~ + t4.7
++ ~那些人为什么叛乱？~ + t4.6
++ ~你的故事我听够了。走吧。~ + t4.0
END

IF ~~ t4.6
SAY ~不知道。直到今天我也不知道为什么……他们不是恶人。我看他们只是穷苦人，受够了被这样对待。也许他们做得过了头，可他们不该死。~
IF ~~ + t4.7
END

IF ~~ t4.7
SAY ~我不打算假装我手是干净的。我帮同袍杀了他们。我记得有个叛军，跟我差不多年纪的男孩，把矛指向我。~
= ~*哼* 其实那不过是绑在棍子头上的铁尖。他手在抖，可他还是先动了。我反击挥回去，不是要杀他，是想把他打晕……可我忘了，我打的不是兽人。~
= ~当兵器上沾的血和碎骨是红色而不是黑色，感觉完全不同。我记得我把兵器丢了，觉得自己要吐。事实上……我吐了。~
++ ~太可怕了！~ + t4.8
++ ~听得出你深深后悔。~ + t4.9
++ ~他攻击你。你杀了他有什么好难受的？~ + t4.10
++ ~别说了。这恶心的故事我听够了。~ + t4.0
END

IF ~~ t4.8
SAY ~我同意。那时我也是这么想的……可我的长官不这么看。他夸我们干得好，哪怕这差事压根不危险……他甚至好像对我只杀了一个男孩还有点失望。~
IF ~~ + t4.10
END

IF ~~ t4.9
SAY ~有那么明显吗？我看是挺难装作没有。~
IF ~~ + t4.10
END

IF ~~ t4.10
SAY ~我不知道自己做的是不是对，可我知道自己的感受要紧：那男孩不是威胁，也不是我的敌人。可我还是把他放倒了，跟我先前杀的那些食人魔和地精没什么两样。~
= ~不用说，那之后我对军队心灰意冷。我差点就辞了，哪怕这会让我蒙羞……要不是我哥哥，我大概真辞了。~
++ ~你哥哥？~ + t4.11
END

IF ~~ t4.11
SAY ~啊。我说得比我愿意的多了一点。我不介意把亲爱的哥哥的事全讲给你听，可我觉着不该把他跟我那段恶心经历放在同一场话里说。留到改日吧。~
IF ~~ EXIT
END
END

// TALK 5

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",10)~ THEN C0DRAKEJ t5
~呃，五十五……五十六……哈！~ [C0DRAK05]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~光着膀子是图实用，还是想勾引我？~ + t5.1
	++ ~不错。看得出你习惯了。~ + t5.2
	++ ~在锻炼，嗯？介意我跟你一起吗？~ + t5.3
	++ ~歇会儿吧，德雷克。早晨我们需要你满状态。~ + t5.0
	
APPEND C0DRAKEJ

IF ~~ t5.0
SAY ~这就完，<CHARNAME>……五十九！怕是我还差不到一半。嗯嗯嗯……哈，六十！天亮时我准醒着、备好，别担心。~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5.1
SAY ~哈！你定你更中意哪样，<CHARNAME>。五十八！~
IF ~~ + t5.2
END

IF ~~ t5.3
SAY ~请便，来吧。不过你要是想跟上我，怕是要落后六十个俯卧撑，可练轻一点也不碍谁的事。~
IF ~Gender(Player1,FEMALE)~ + t5.4
IF ~!Gender(Player1,FEMALE)~ + t5.2
END

IF ~~ t5.4
SAY ~不过我忍不住觉得，换个花样，看一位女士在我身边汗淋淋地趴着，而不是在我上边或下边，倒挺有意思。来吧，你要还有兴趣。~
++ ~我看不必。你刚好把我的心都弄没了。~ + t5.5
++ ~就凭这些话，我挺意外你居然还有过女人在你上边或下边。~ + t5.6
++ ~好，让开。我看我也该开始了。~ + t5.7
++ ~你这猪！算了，我去睡了。~ + t5.8
++ ~算了。你也早点歇，德雷克，明天会是漫长的一天。~ + t5.0
END

IF ~~ t5.5
SAY ~真可惜。那我猜你就只能留下看这赏心悦目的景了。还是你宁愿走？~
IF ~~ + t5.2
END

IF ~~ t5.6
SAY ~哈！好，<CHARNAME>，这一下戳到点上了。~
IF ~~ + t5.2
END

IF ~~ t5.7
SAY ~当然。你若愿意，也可以靠近些。~
IF ~~ + t5.2
END

IF ~~ t5.8
SAY ~哈！别担心，<CHARNAME>，我只是想撩你一下。那你去吧，天亮见。~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5.2
SAY ~也许你没经历过，可我在安姆军里时这是常例。比我眼下做的还严。光提一提那些操练，新兵就能听得膝盖打颤。~
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~真的？不过不像你这样强壮、勇敢、坚韧的人，对吧？~ + t5.9
++ ~我确信周围那些光膀子、汗淋淋的男人让你一直有动力。~ + t5.10
++ ~军队里是什么样子？~ + t5.11
++ ~我干嘛听这些？我去睡了，失陪。~ + t5.x
END

IF ~~ t5.x
SAY ~那可真遗憾。我很快就练完、准备睡，你先去吧。~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5.9
SAY ~哈！“坚韧”够了，别的我也乐得都收下。~
IF ~~ + t5.11
END

IF ~~ t5.10
SAY ~哈！也许有那么点。不过我确信，谁看见这景都难免有点心思。~
IF ~~ + t5.11
END

IF ~~ t5.11
SAY ~你从没当过兵，是吧？那真是段经历。有好有坏。它练出纪律和相互信任，可也有蠢货互相较劲，跟在上什么课似的。还有那口粮？别提了。相信我，你没咬过比安姆硬饼更难嚼的东西。~
= ~当然，对我而言，那更像个机会。跟上我哥哥加布里尔的机会。~
+ ~!GlobalGT("C0DrakeCaulfield","GLOBAL",1)~ + ~加布里尔？~ + t5.12
+ ~GlobalGT("C0DrakeCaulfield","GLOBAL",1)~ + ~你之前提过这名字。他是你兄长，对吧？~ + t5.13
++ ~我听够了。该歇了。~ + t5.x
END

IF ~~ t5.12
SAY ~我难道没提过这名字？加布里尔是我兄长。~
IF ~~ + t5.14
END

IF ~~ t5.13
SAY ~是……他*曾*是我哥哥。~
IF ~~ + t5.14
END

IF ~~ t5.14
SAY ~加布里尔是军中的高级军官。我在提尔那边修完神职基础训练，他就提议我跟他去军队，好让我的本事派上用场。~
= ~通常当兵得走官僚的核准，可……那时安姆正跟兽人开战，征兵官急到连罪犯都收进队伍。我入伍没费多少事。~
= ~到头来我不过是个举旗的……可我不在乎。我只想跟哥哥一起在战场上，顺便砸碎几个兽人的脑袋。~
++ ~看得出你极敬重你哥哥。他是个什么样的人？~ + t5.15
++ ~至少你上过战场吗？~ + t5.16
++ ~够了。我去睡了。~ + t5.x
END

IF ~~ t5.15
SAY ~加布里尔毫无疑问就是英雄的定义。骑士团骑士，统率自己的一支队伍，他手下士兵个个忠心到极点，愿为他死……多讽刺，到头来他们谁都没得到那个机会，虽说有好多倒在他身边。~
+ ~!GlobalGT("C0DrakeCaulfield","GLOBAL",1)~ + ~他死在战争里？~ + t5.17
+ ~GlobalGT("C0DrakeCaulfield","GLOBAL",1)~ + ~我记得你提过他的死。~ + t5.17
++ ~算了。你不介意的话，我去睡了。~ + t5.x
END

IF ~~ t5.16
SAY ~哦，当然。医者在军中是有价值的资产，虽说我才刚训完，加布里尔还是把我收进了他那一排。正式上不算升职……可谁都知道我担着要紧的位子。~
IF ~~ + t5.15
END

IF ~~ t5.17
SAY ~是……那个傻瓜。他守穆兰，死在食人魔法师赛西利斯手里。~
= ~那是一场没指望的战役，至少我当时这么想。我试着劝他认清这点，退回去另谋出路，可他拒绝了。“这是我作为骑士团骑士的职责，”他这么说。该死的傻瓜……嗯，至少他如愿了。穆兰保住了……代价是他的命，还有他手下一半人的命。~
= ~时至今日我仍不知道那值不值。赛西利斯还活着，毫无疑问还会再来，不管是很快还是多年以后。加布里尔的牺牲只给我们换来了时间。~
++ ~你是说你哥哥亲自跟赛西利斯交手？~ + t5.18
++ ~听到这话我很遗憾。~ + t5.19
++ ~至少他死得光荣。不是吗？~ + t5.20
END

IF ~~ t5.18
SAY ~按各种说法，是*独自*一个，一对一。只是我没在场看见。~
++ ~你不在场？~ + t5.21
++ ~你抛下他跑了？~ + t5.22
++ ~我没兴趣再听了。晚安。~ + t5.x
END

IF ~~ t5.19
SAY ~我没在场，可比不上我没能跟他一起死在那儿那么遗憾。~
++ ~你不在场？~ + t5.21
++ ~你抛下他跑了？~ + t5.22
++ ~我没兴趣再听了。晚安。~ + t5.x
END

IF ~~ t5.20
SAY ~哦，是，非常光荣，我父亲最爱反复说这个。按各种说法，他一对一跟赛西利斯交手。只是我没在场看见。~
++ ~你不在场？~ + t5.21
++ ~你抛下他跑了？~ + t5.22
++ ~我没兴趣再听了。晚安。~ + t5.x
END

IF ~~ t5.21
SAY ~不，我不在。我抛下了他，我不为此自豪，哪怕下令的是他。我本会在他身边跟赛西利斯拼杀，拿我的身子当盾，只要那样能让加布里尔有机会就地了结那东西。~
IF ~~ + t5.23
END

IF ~~ t5.22
SAY ~...~
= ~唉……是。我抛下了他，我不为此自豪，哪怕下令的是他。我本会在他身边跟赛西利斯拼杀，拿我的身子当盾，只要那样能让加布里尔有机会就地了结那东西。~
IF ~~ + t5.23
END

IF ~~ t5.23
SAY ~不管我怎么哀求，他都既不肯撤，也不许我跟他并肩。我求他讲道理，他不听。后来怎样？他死了，就是这样。诚然死得高贵，可那有什么用？怎么看都是失败。~
++ ~你好像因为你哥哥死了而记恨他。为什么？~ + t5.24
++ ~可他没有失败。他的举动很可能救了无数人命。~ + t5.25
END

IF ~~ t5.24
SAY ~我才不在乎他的事迹看着多英雄。他毫不犹豫地选了死，全不顾家里会怎样，也不顾他为一搏荣耀把命扔了、给我肩上压下的那份该死的担子。自私的混账……~
++ ~你说的担子是什么？~ + t5.26
END

IF ~~ t5.25
SAY ~他救了我们？我们失去了他，只换来一点微薄的喘息。他也许只是把我们的灭亡往后推了推。~
IF ~~ + t5.24
END

IF ~~ t5.26
SAY ~没什么。没什么。我说得太多了，反正我也累了。去睡吧，<CHARNAME>。我也一样。~
IF ~~ DO ~RestParty()~ EXIT
END
END	

// TALK 6

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",12)~ THEN C0DRAKEJ t6
~听着，<CHARNAME>，我欠你一句道歉。你知道，为我上回的态度。我不是有意发那一通脾气，只是一牵扯到我哥哥，我往往就比平常更糟。~ [C0DRAK06]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	++ ~我明白。他的死对你打击很大。~ + t6.1
	++ ~你后悔没跟他并肩作战吗？~ + t6.2
	++ ~我们现在没工夫闲聊，德雷克。~ + t6.0

APPEND C0DRAKEJ

IF ~~ t6.0
SAY ~嘿，也好。你大概不想听我再发一通牢骚。那就走吧。~
IF ~~ EXIT
END

IF ~~ t6.1
SAY ~我因为加布里尔死了而生气，看着一定像个不知感恩的可怜虫。是，我知道这不对，可你要是知道他死对我家、更对我的人生造成了什么，你就会明白……至少，我希望如此。~
= ~加布里尔本该接替我父亲的位置，既管骑士团也管我们家。我们太专注这个念头，压根没停下来想过，万一这忽然不可能了会怎样。~
= ~没多久我就从军队被抽出来，编进了骑士团。记住，那时我年轻些，还抱着为我哥哥报仇的蠢念头。然后忽然有人告诉我，不许我那么做，我得回家再见父亲。~
= ~嗯，我们见了，场面不好看。到那时我已明白，作为次子，我排在加布里尔之后接他的位。我从没想过真会发生，更从没想要。我跟父亲争吵，当面质问他是不是要把我塞进一双比我的脚大得多的鞋。~
= ~他一点不爱听。我们的关系……还有我这张脸，都在那时挨了一下，再没完全好过。直到今天，除了骑士团的事，我们几乎不说话。~
++ ~你家里别人呢？你跟他们也都疏远吗？~ + t6.3
++ ~我听够了。~ + t6.5
END

IF ~~ t6.2
SAY ~嗯……也许我确实恨他。可我庆幸自己活着，我不撒谎。我不……无畏，不像加布里尔那样。~
IF ~~ + t6.1
END

IF ~~ t6.3
SAY ~哦，没有。真的，我不常见他们，可那多是境况所迫，不是我的选择。我对弟弟妹妹有份软心肠。对我母亲也是，哪怕她也盼我振作起来、担起责任。~
= ~可惜，加布里尔之死也重创了他们。母亲因悲伤病倒，至今还虚弱。我弟弟托马斯拼命想加入骑士团，好承继我们那位英雄兄长的遗志。这傻小子根本不明白那样做到底意味着什么。~
= ~还有我妹妹克劳迪娅……提尔慈悲，有时我庆幸她还小，不明白这些。我不忍看她在那样绝望里。~
IF ~~ + t6.4
END

IF ~~ t6.4
SAY ~光辉之心骑士团得知这里与安姆的关系紧张，就想派人去查铁危机。我自愿去了，主要是想离我父亲越远越好。~
= ~别的骑士都巴不得甩掉我，出人意料的是我父亲也是。我以为他会反对，怕我在这外头把命送了，可也许我逼他逼到他不再在乎，只想我走。~
= ~自家里遭了那场损失，日子就没舒坦过。我看出来这儿，是好久以来头一回觉得自己活着、自在。~
++ ~可你终究得回去，不是吗？~ + t6.5
++ ~那在这期间，我很乐意留着你。~ + t6.6
++ ~你想过干脆把这一切都甩了、一走了之吗？~ + t6.7
END

IF ~~ t6.5
SAY ~别提醒我。假如我没在这鬼地方把命送了，那，是，我得回安姆。可趁还能，我要把自由用尽。~
IF ~~ + t6.8
END

IF ~~ t6.6
SAY ~哈！你现在这么说，可我好奇你还能忍我多久？不过，我领这份情。~
IF ~~ + t6.8
END

IF ~~ t6.7
SAY ~哦，是，想过好多回。我现在就能跑，没人会知道。可提尔不会认可，加布里尔也不会。要不是这个，我不能说我没动过心。~
IF ~~ + t6.8
END

IF ~~ t6.8
SAY ~唉，这倒霉话题弄得我想喝到烂醉，我怕。也许我们该到此为止，免得我成了累赘。~
IF ~~ EXIT
END
END

// TALK 7

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",14)~ THEN C0DRAKEJ t7
~你知道，我一直不懂我们安姆人为什么这么瞧不起北方人。你们跟我们这帮人没多大不同。~ [C0DRAK07]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
++ ~这是好事还是坏事？~ + t7.1
++ ~你这话什么意思？~ + t7.2
++ ~我不把自己当北方人。烛堡跟剑湾别处不一样。~ + t7.3
++ ~现在别说，德雷克。~ + t7.0

APPEND C0DRAKEJ

IF ~~ t7.0
SAY ~随你。这本来也不是什么要紧事。~
IF ~~ EXIT
END

IF ~~ t7.1
SAY ~要说得具体，两样都是。我在这儿的人身上看到的毛病，跟老家的人一样，可你们远不是安姆人爱以为的那种蛮子。~
IF ~~ + t7.2
END

IF ~~ t7.2
SAY ~安姆人——至少上等阶层，那些唯一爱操心的人——以“有教养”自豪。我自己从不大看得上这念头，可它是安姆社会的一个常见主题。~
= ~我们——我是说安姆人——往往有很强的自豪，许多人觉得剑湾的人缺这个。可我在这地界待了些日子，不能同意这说法。~
++ ~知道你这么想挺好。我同意大多数安姆贵族好像都看不起我们。~ + t7.4
++ ~你为什么对我们文化的差异或相似这么感兴趣？~ + t7.5
++ ~我们不能谈点跟目标有关的吗？~ + t7.0
END

IF ~~ t7.3
SAY ~也好。也许我这比较说得太笼统了。你确实是特例。~
IF ~~ + t7.2
END

IF ~~ t7.4
SAY ~嗯，他们看不起任何他们觉得不如自己的人。有权的人就是这样。可你说得对，他们对外乡人尤其厌恶。~
IF ~~ + t7.5
END

IF ~~ t7.5
SAY ~让我着迷的是，这两个地方这么近，却对彼此的相似之处这么无知。博德之门与安姆互相不信任，到一边挑衅、另一边立刻就开战的地步，可他们对彼此最要紧的事一无所知。~
= ~说到底，我看正是无知造成了这种不信任。不只是无知本身之罪，还有安于无知。那句俗话怎么说来着？“无知即是福？”我看这词用来形容双方都挺合适。~
++ ~这话很愤世。你觉得你高过这种无知？~ + t7.6
++ ~那我呢？你会说我也无知吗？~ + t7.7
++ ~你这傲慢的抱怨我听够了，德雷克。走吧。~ + t7.0
END

IF ~~ t7.6
SAY ~我？见鬼，不。我跟别人一样无知。我不假装懂我自己国家的人，更别说你的。可……我试着去下功夫。毕竟这才是来这儿、来这地界、跟你同行的原因。~
IF ~~ + t7.8
END

IF ~~ t7.7
SAY ~别往坏处想。无知不一定是坏事。我还是觉得我们彼此都无知。可我在努力跨过去，也希望你能。不然我也不会答应跟你走。~
IF ~~ + t7.8
END

IF ~~ t7.8
SAY ~多谢你有耐心听我胡说这些没用的。我本人倒觉得挺有意思。不过我看还是改日再续……只要你有意。~
IF ~~ EXIT
END
END

// TALK 8

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",16)~ THEN C0DRAKEJ t8
~想喝一杯吗，<CHARNAME>？你看上去有点发蔫。也许这能让你暖一暖。~ [C0DRAK08]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
++ ~我算了，谢了。~ + t8.1
++ ~这是什么？~ + t8.2
++ ~我不喝酒，德雷克。~ + t8.3
++ ~好，给我尝一口。~ + t8.4

APPEND C0DRAKEJ

IF ~~ t8.0
SAY ~那是你的损失。~
IF ~~ EXIT
END

IF ~~ t8.1
SAY ~你确定？这可不是你平常那种廉价麦酒。你自己看看。~
++ ~这是……到底是什么？~ + t8.2
++ ~谢了，可我不喝酒。~ + t8.3
++ ~你非要这样，那我就试试。~ + t8.4
END

IF ~~ t8.2
SAY ~这个，我的朋友，是火酒。我认识的一个酿酒师多年前从一位拉舍曼旅人手里买下配方。他管它叫“朱尔德”，至少我是这么听说的。~
= ~我离家前有人送了我一瓶，一路就搁在我背包里，没开过。想着跟你分点。~
IF ~!InParty("Minsc") !InParty("Dynaheir")~ + t8.2d
+ ~InParty("Minsc") InParty("Dynaheir")~ + ~为什么不跟我们那几位拉舍曼朋友分享？~ + t8.2a
+ ~InParty("Minsc") !InParty("Dynaheir")~ + ~为什么不跟我们那位拉舍曼朋友分享？~ + t8.2b
+ ~!InParty("Minsc") InParty("Dynaheir")~ + ~为什么不跟我们那位拉舍曼朋友分享？~ + t8.2c
END

IF ~~ t8.2a
SAY ~我提过了。可我们那位黛娜希尔女士不中意这东西，她还建议我离我们那位大个子朋友远点。据说这会招来他出名的那阵暴怒。我可不想去找块石头钻底下。~
IF ~~ + t8.2d
END

IF ~~ t8.2b
SAY ~我提过了。可我们那位大个子朋友谢绝了，他跟我说他的女巫不让他碰这东西。我也没兴趣问为什么。~
IF ~~ + t8.2d
END

IF ~~ t8.2c
SAY ~我提过了。可我们那位黛娜希尔女士不中意这东西。~
IF ~~ + t8.2d
END

IF ~~ t8.2d
SAY ~你要没兴趣，我看就让它在我背包里再多待一阵。不过这么好的异乡酒积灰，真可惜。~
++ ~那我给我来一口。~ + t8.4
++ ~算了，我不喝酒。~ + t8.3
END

IF ~~ t8.3
SAY ~嗯，什么时候开始都不晚。头一回喝也许有点冲，你确定？这滋味很值。~
++ ~嗯，我承认我好奇。好，我试试。~ + t8.4
++ ~不，就这么定了。~ + t8.0
END

IF ~~ t8.4
SAY ~这才是好<PRO_MANWOMAN>。~
+ ~CheckStatGT(Player1,15,CON)~ + ~干杯！~ + t8.5
+ ~CheckStatLT(Player1,15,CON)~ + ~干杯！~ + t8.6
++ ~再想想，我看我别试了。~ + t8.0
END

IF ~~ t8.5
SAY ~不坏。你显然比大多数人肚子强。你确定没觉得烧？~
++ ~还不算太糟。~ + t8.5a
++ ~真恶心！里头是什么？~ + t8.5b
++ ~嗯，我还想再来一口。~ + t8.5c
END

IF ~~ t8.5a
SAY ~对吧？我是说，刚入口时确实像嘴里着了火，可你等等那回味。~
IF ~~ + t8.7
END

IF ~~ t8.5b
SAY ~谁知道？我尝着像果汁加辣椒，可要造出液体火，总得放点特别的东西。~
IF ~~ + t8.7
END

IF ~~ t8.5c
SAY ~嘿，打住！你把整瓶喝完，晚上肚子要后悔。再说，我也没得喝了。~
IF ~~ + t8.7
END

IF ~~ t8.6
SAY ~哈！我该先警告你这东西不好下咽。你该看看你自己的脸，<CHARNAME>。~
++ ~*咳* 呃！我嗓子在烧！~ + t8.6a
++ ~这是故意逗人笑的？~ + t8.6b
END

IF ~~ t8.6a
SAY ~是，头一回多半这样。可回味好得多，你就等着。~
IF ~~ + t8.7
END

IF ~~ t8.6b
SAY ~也许有一点。我承认我想看看你咽下头一口脸会不会红。~
IF ~~ + t8.7
END

IF ~~ t8.7
SAY ~你喝过了，就递过来。我要来点。~
= ~*咳* *咳* 啊……正对胃口。它也许烧舌头，可确实暖人心。~
++ ~你跟我分这个，有什么缘故吗？~ + t8.8
++ ~这挺好玩，可我们该走了。~ + t8.9
END

IF ~~ t8.8
SAY ~我也说不清。我需要个伴，我想你也会喜欢歇一歇。这几天对我们俩都不容易。~
= ~平常我挺习惯一个人旅行、干活、喝酒，可，呃，有个不嫌我烦的伴儿，倒挺舒坦，这我认。我看我该谢你忍我到现在。~
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~哎呀，德雷克，你是不是开始喜欢我了？~ + t8.10
++ ~我该谢你留下来。~ + t8.11
++ ~我们最好走。还有事要做。~ + t8.9
END

IF ~~ t8.9
SAY ~好，你说了算。可我们走前最好把这瓶喝完。~
IF ~~ EXIT
END

IF ~~ t8.10
SAY ~哈！嗯，现在，别扯那么远。我们可不想在随时可能倒下一个的时候太亲近，你知道的？~
IF ~~ + t8.12
END

IF ~~ t8.11
SAY ~得了，为这么点小事你也得谢我？不过话说回来，谁不欣赏我作伴？哈！~
IF ~~ + t8.12
END

IF ~~ t8.12
SAY ~唉，该死。看来瓶快空了。那我们就得走了。也许改日还能再这样待一阵？~
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~跟你？当然。~ + t8.13
++ ~我听着不错。~ + t8.13
++ ~看吧。走吧。~ + t8.14
END

IF ~~ t8.13
SAY ~好，我等着……但愿这期间能再找着值得分享的酒。~
IF ~~ + t8.14
END

IF ~~ t8.14
SAY ~我就跟在你后头……朋友。~
IF ~~ EXIT
END
END

// TALK 9

CHAIN IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_4%)
Global("C0DrakeTalk","GLOBAL",18)~ THEN C0DRAKEJ t9
~我们把矿里那些渣滓清了，这是好事，可我承认这整桩事还是在我嘴里留了股苦味。~ [C0DRAK09]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
== C0DRAKEJ ~今天我们赢了一场，可我们还没完，对吧？那现在呢，<CHARNAME>？我们去找到这个“铁王座”，正面碰他们？~
END
++ ~你有更好的主意？~ + t9.1
++ ~安姆能对他们动手吗？~ + t9.2
++ ~我们去博德之门，找到铁王座的总部，该干什么就干什么。~ + t9.3
++ ~至少不是站在这儿闲聊。走吧。~ + t9.0

APPEND C0DRAKEJ

IF ~~ t9.0
SAY ~也好。只是……花点时间想想我们面对的是什么。~
IF ~~ EXIT
END

IF ~~ t9.1
SAY ~哦，一点没有。我不是说那主意不好。可我看你最好在太晚之前弄明白我们面对的是什么。~
IF ~~ + t9.4
END

IF ~~ t9.2
SAY ~哈！鬼才信。记住，这里跟安姆边界内已经很紧张了。哪边动一步，立刻就是战争。怕是我们只能靠自己。~
IF ~~ + t9.4
END

IF ~~ t9.3
SAY ~哈！你倒说得轻松。我希望你明白我们面对的是什么，我年轻的朋友。~
IF ~~ + t9.4
END

IF ~~ t9.4
SAY ~你现在面对的可不只是强盗和混混，<CHARNAME>。这一切背后有一股强大的力量。我不怀疑你已经知道，可你想过自己准备好了没有？~
++ ~经历了这么多，还能糟到哪儿去？~ + t9.5
++ ~我准没准备好都无所谓。我不能就这么放弃。~ + t9.6
++ ~那是我自己该操心的事。我不想跟你谈。~ + t9.0
END

IF ~~ t9.5
SAY ~这你可问住我了。哪怕我们的敌人比我们后头那个死巫师更强，怪的是，我也看不出他们能真正打垮你。至少打不垮到底。~
IF ~~ + t9.7
END

IF ~~ t9.6
SAY ~哦，你真想放弃的话，放弃很容易。可那样收场太可悲，这我同意。我不怀疑你会成功。我只是想知道你自己是不是也这么想。~
IF ~~ + t9.7
END

IF ~~ t9.7
SAY ~我好久没跟过像你这么……坚决的人了。加布里尔很像你，直到我失去他……那时我以为他是独一无二的。看来我错了。~
++ ~那我是否可以认为你不再怀疑我了？~ + t9.8
++ ~你对别人就这么没信心？~ + t9.9
++ ~我很高兴听你总算承认自己错了。~ + t9.10
++ ~好。那我们走吧。~ + t9.11
END

IF ~~ t9.8
SAY ~我什么时候声称过？你要是觉得我怀疑过你，<CHARNAME>，那全是你自己想出来的。~
IF ~~ + t9.11
END

IF ~~ t9.9
SAY ~至少我信你。眼下，这就足够了。~
++ ~你在回避问题。~ + t9.9a
++ ~那就好。~ + t9.11
END

IF ~~ t9.9a
SAY ~我看我是在回避。我想信别人，可……当你连诸神是否把我们凡人的命放在心上都怀疑时，嗯……~
= ~也许我这么快就对别人失望是不对的。只有时间知道。~
IF ~~ + t9.11
END

IF ~~ t9.10
SAY ~我知道，这很少见。~
IF ~~ + t9.11
END

IF ~~ t9.11
SAY ~带路吧，<CHARNAME>。我这就把信任交给你，所以你务必让我们成功。~
IF ~~ EXIT
END

END

// TALK 10

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",20)~ THEN C0DRAKEJ t10
~万斯和影贼那档子事，我很抱歉，<CHARNAME>。我知道那很突然，我不该把你拖进这摊乱事。~ [C0DRAK10]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	++ ~我更在意的是，你压根没打算告诉我石心的事。~ + t10.1
	++ ~你觉得影贼会为他们的人报仇吗？~ + t10.2
	++ ~没事。我随时准备对付罪犯。~ + t10.3
	++ ~别再提这事了，德雷克。~ + t10.0

APPEND C0DRAKEJ

IF ~~ t10.0
SAY ~好，你这么说就这样。~
IF ~~ EXIT
END

IF ~~ t10.1
SAY ~说实话，撞上他之前我压根没想起来。我跟万斯的过去，是我不太乐意去想的事。~
IF ~~ + t10.4
END

IF ~~ t10.2
SAY ~我看不会，除非有人漏了你的眼，毕竟他们全死了。公会大概要等发现手下没了音信才会知道。~
IF ~~ + t10.4
END

IF ~~ t10.3
SAY ~那好，这点我们倒一样。可我还是不该把要不要处理这事丢给你定。~
IF ~~ + t10.4
END

IF ~~ t10.4
SAY ~回头看，那大概是我跟万斯自己就能应付的事。我只是不够信他，不肯不带个人在身边就去。希望你能明白。~
++ ~要是可以问……我们头回见他时你叫他“石心”。现在怎么改了？~ + t10.5
++ ~不过我看你现在信他了？~ + t10.6
++ ~你当初怎么认识石心这样的人的？~ + t10.7
++ ~我们现在真得谈这个吗？留到改日吧，德雷克。~ + t10.0
END

IF ~~ t10.5
SAY ~我那时还……对他憋着气。隔了这么久再见他，多年前我们分开的样子勾回了好多坏情绪。说来话长。~
IF ~~ + t10.7
END

IF ~~ t10.6
SAY ~信任一旦丢了，就不容易捡回来，<CHARNAME>。我见过证据，他是改好了，可要我再把他当个朋友，光这个还不够。~
IF ~~ + t10.7
END

IF ~~ t10.7
SAY ~我头回见万斯是在安姆抗击兽人入侵那阵。他是军中的斥候，我们偶尔碰面。有一回我给他治了逃跑时中的箭伤，他回报我，救了我的命。~
= ~我们打退兽人、回归平常日子后，我跟许多老朋友分了手——那些没死在仗里的——可没跟万斯分。我们试着保持联络，哪怕我被逼回提尔教会，他成了议会的密探。~
= ~最后我们发现彼此有许多共同之处，成了密友，等我终于有了些自由，我们就一起对付安姆的罪犯和奴隶贩子。我还以为他是个天才，总知道那些人怎么运作。~
++ ~然后你发现他曾经就是他们中的一个？~ + t10.8
++ ~后来怎样？~ + t10.9
++ ~这故事我听够了。~ + t10.0
END

IF ~~ t10.8
SAY ~不，我从没起过疑，也许是我自己选择无视那些迹象。最后是他自己跟我说的。~
IF ~~ + t10.9
END

IF ~~ t10.9
SAY ~有天晚上，我们狠狠打击了敌人奴隶贩子，大获成功，就……花时间庆祝。喝了很多酒，比我让你见过的多得多。然后……我们就在那儿待了一夜，醉得不成样子。~
= ~第二天早晨……嗯，我得赞他一句，他留下了……他把一切都告诉了我。他的过去，一个只顾自己的罪犯，为了在影贼里往上爬割了多少喉咙，甚至包括他为了逍遥法外杀了我哪些朋友，直到他们终于逮住他。~
= ~我受不了。他说完，我就看着他。我宿醉着，向提尔祈祷这一切都是噩梦，最后我一拳打在他脸上，把他从酒馆窗户扔了出去。~
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~太可怕了……我能理解你为什么那样反应。~ + t10.10
++ ~我很遗憾。那一定很难受。~ + t10.11
++ ~那是不是反应过头了？~ + t10.12
++ ~够了。我不想再听这个。~ + t10.1x
END

IF ~~ t10.1x
SAY ~你当然不想。连我自己都不大乐意回想。就当我什么都没跟你说过。~
IF ~~ EXIT
END

IF ~~ t10.10
SAY ~……不，我确信你不能。直到现在，我也不大明白自己为什么那么做。那什么也没解决。~
IF ~~ + t10.13
END

IF ~~ t10.11
SAY ~是难受。我不大对谁掏心，那样被背叛……完全是另一回事。~
IF ~~ + t10.13
END

IF ~~ t10.12
SAY ~也许是吧，可我当时就是找不到合适的话朝他脸上吐。我只想拼了命冲他脸吼。现在回头看，一句简单的“滚出去”或许就够合适了？~
IF ~~ + t10.13
END

IF ~~ t10.13
SAY ~你会怎么反应，<CHARNAME>，如果你以为的知心人、亲密同伴，忽然告诉你他就是——曾经是——你所鄙视的一切？~
+ ~PartyHasItem("SCRL2J")~ + ~你并不知道我是巴尔之子。知道这个影响了你吗？~ + t10.14
++ ~我看跟你一样吧。~ + t10.13a
++ ~我至少会花点时间想想自己在做什么。~ + t10.17
++ ~我不知道。~ + t10.16
END

IF ~~ t10.13a
SAY ~这话听着叫人安心。至少让我觉得自己没那么可悲。哈！~
IF ~~ + t10.16
END

IF ~~ t10.14
SAY ~你那时也不知道自己是什么，所以那不一样。再说，就算你知道，你也……你也不会撒谎。这点我清楚。~
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~我很高兴你信我，德雷克。~ + t10.15
+ ~!Global("C0DrakeMatch","GLOBAL",1)~ + ~我很高兴你信我，德雷克。~ + t10.16
END

IF ~~ t10.15
SAY ~不止是单纯的信任。我……在乎，就像我相信你也在乎……就像你现在正关心我。~
IF ~~ + t10.16
END

IF ~~ t10.16
SAY ~你是个令人敬佩的人，<CHARNAME>，我直说。这话听着也许不算多高的称赞，可我敬佩的人少而又少。~
= ~加布里尔就是那样一个人，可他早不在了。我以为万斯配得上成为另一个，可后来我知道了他是什么样的人——也许不算骗子，可肯定是个懦夫。那之后我还能怎么再信谁？~
= ~可……知道这世上还有品性高尚的人，是好事。至少这一点让我重拾了些希望。~
++ ~谢谢你，德雷克。~ + t10.18
+ ~Gender(Player1,MALE)~ + ~你该学着有点信心，我的朋友。~ + t10.19
+ ~Gender(Player1,FEMALE)~ + ~你该学着有点信心，我的朋友。~ + t10.20
++ ~我听了很高兴。我们走吧？~ + t10.21
END

IF ~~ t10.17
SAY ~是，你确实有那份我所缺的克制。可对大多数人来说，那是稀罕的品格。~
IF ~~ + t10.16
END

IF ~~ t10.18
SAY ~不，多谢。要不是你，我怀疑我不会是现在这个心情。我也许还没彻底丢掉我的愤世……可至少这是个开头。~
IF ~~ EXIT
END

IF ~~ t10.19
SAY ~哈！你现在听着有点像加布里尔了。别误会，这不是坏事。从我嘴里说出来，这算夸奖。~
IF ~~ EXIT
END

IF ~~ t10.20
SAY ~哈！你现在听着有点像我妈了。别误会，这不是坏事。从我嘴里说出来，这算夸奖。~
IF ~~ EXIT
END

IF ~~ t10.21
SAY ~当然。你先请，我那带来希望的朋友。~
IF ~~ EXIT
END
END

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",22)~ THEN C0DRAKEJ t11
~嘿。有空说两句吗？~ [C0DRAK11]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	++ ~当然。什么事？~ + t11.1
	++ ~你听着少见地消沉。怎么了，德雷克？~ + t11.1
	++ ~现在不行，德雷克。~ + t11.0

APPEND C0DRAKEJ

IF ~~ t11.0
SAY ~也好。反正不是什么要紧事。~
IF ~~ EXIT
END

IF ~~ t11.1
SAY ~你把我带在身边好些日子了，这期间还得一直忍受我啰嗦。这烦到你了吗？~
++ ~你从不烦我，德雷克。~ + t11.2
++ ~一点也不。你为什么这么在意？~ + t11.3
++ ~也许有一点。你说话还真不收敛。~ + t11.4
END

IF ~~ t11.2
SAY ~真的。嗯，那好。我不能说我平常在乎别人怎么看我，可你，嗯，那已经成了另一回事……~
IF ~~ + t11.5
END

IF ~~ t11.3
SAY ~我平常不是。可，嗯，你忍我比我这辈子认识的任何人都久，连家人朋友也算上。~
IF ~~ + t11.5
END

IF ~~ t11.4
SAY ~不，我不觉得。大多数人对我的耐心都很快用完，可你忍我比我认识的任何人都久。~
IF ~~ + t11.5
END

IF ~~ t11.5
SAY ~你这么耐心听我胡说，是有缘故，还是你天生这样？~
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~我未必对谁都这样。我喜欢你，德雷克。~ + t11.6
++ ~你需要有个人说话。朋友不就是干这个的？~ + t11.7
++ ~我愿意忍。毕竟你是个有用的盟友。~ + t11.8
END

IF ~~ t11.6
SAY ~哈！这话我不常听见。“你今天气色不错，德雷克。”“你口气像麦酒，德雷克。”“你头发像豪猪，德雷克。”可喜欢？这我可不常得到。~
= ~我真心领情。要不是眼下事情这么复杂，我真想带你回老家，让你看看我喜欢我这片土地的什么，可，嗯……我不知道我父母会不会认可。~
IF ~~ + t11.7
END

IF ~~ t11.7
SAY ~总之，我很感激你肯听，<CHARNAME>。等我终究回到安姆，我见着谁都会说你几句好话。你该被认出来。~
IF ~~ EXIT
END

IF ~~ t11.8
SAY ~这话说得公道。我为了忍我自己都得忍受不少。~
IF ~~ EXIT
END
END

// TALK 12

CHAIN IF ~Global("C0DrakeBhaalspawnTalk","GLOBAL",1)~ THEN C0DRAKEJ t12
~嗯，你这张脸上挂的表情可真够阴的。坏消息？~ [C0DRAK12]
DO ~IncrementGlobal("C0DrakeBhaalspawnTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	++ ~可以这么说。~ + t12.1
	++ ~你自己看吧。~ + t12.2
	++ ~没什么。走吧。~ + t12.0

APPEND C0DRAKEJ

IF ~~ t12.0
SAY ~哈！你肯定有事瞒着。随你，我总能弄明白。~
IF ~~ EXIT
END

IF ~~ t12.1
SAY ~打听别人的私事本不该是我的事，可你看上去需要一只愿意听的耳朵。更要紧的是，我好奇。你那位已故的父亲告诉了你什么？~
++ ~你自己看。都写在这儿。~ + t12.2
++ ~上面说我是……巴尔之子。一个死神的子嗣。~ + t12.2
++ ~这不关你的事。~ + t12.0
END

IF ~~ t12.2
SAY ~...~
= ~我明白了。嗯，刚知道这种事，你露出这副表情，我也不能怪你，<CHARNAME>。你……确定这是真的？~
++ ~我认得戈里昂的笔迹。这一定是真的。~ + t12.3
++ ~戈里昂没有理由骗我。~ + t12.3
++ ~我不确定。我倒希望它不是。~ + t12.4
END

IF ~~ t12.3
SAY ~那我只能信你的话。毕竟我从没见过他。那么……你是什么感受？~
++ ~你担心我会忽然爆发成杀人狂？~ + t12.5
++ ~一个刚发现跟巴尔子嗣同行的人，你倒看不出多震惊。~ + t12.6
++ ~我觉得松了口气。我一直知道自己与众不同。~ + t12.7
END

IF ~~ t12.4
SAY ~这不过是换个说法，说你认为那有可能，嗯。我懂。那么……你是什么感受？~
++ ~你担心我会忽然爆发成杀人狂？~ + t12.5
++ ~一个刚发现跟巴尔子嗣同行的人，你倒看不出多震惊。~ + t12.6
++ ~我觉得松了口气。我一直知道自己与众不同。~ + t12.7
END

IF ~~ t12.5
SAY ~嗯，我要是说我不震惊，那是撒谎，可我要是真以为知道这个会忽然改变你，那我得去看脑子。不，我问的是你怎么看你自己。~
IF ~~ + t12.8
END

IF ~~ t12.6
SAY ~哦，那方面你不用担心，我震惊得很。只是在我这张脸上看不出来，它太习惯摆出得意又帅气的样子了。~
= ~好，别管最后那句。现在不是开玩笑的时候，我知道。我想知道的是，此时此刻你怎么看你自己。~
IF ~~ + t12.8
END

IF ~~ t12.7
SAY ~真的吗。那我给你句忠告，全能的半神小子，“与众不同”不总是好事。先别自得。~
IF ~~ + t12.9
END

IF ~~ t12.8
SAY ~就算知道这些，你也不会更看不起自己，对吧？一句忠告——别往那边去。那是对自己的背叛。~
= ~有些人过去里有阴影，可回头盯着它、任它影响你，没有半点意义。就昂着头继续走，好让自己变得更好。这是我哥哥教我的。我从没多想过这话，可我觉得对你合适。~
++ ~谢谢。这有帮助。~ + t12.8a
++ ~你换了个性子对我好。你怎么了？~ + t12.8b
++ ~这不是我想听的。别理我。~ + t12.8c
END

IF ~~ t12.8a
SAY ~我当然希望它们有用。不然等我去了卢尼亚跟加布里尔碰面，还得告诉他这话没起效。哈！前提是我真能到那儿。~
IF ~~ + t12.9
END

IF ~~ t12.8b
SAY ~我有颗心，你这么惊讶？哈！没错，我这颗心是发旧的金子做的，可到底是金子。~
IF ~~ + t12.9
END

IF ~~ t12.8c
SAY ~哈！随你。不过要是以后你需要我撑你，我大概就没这么大方了。~
IF ~~ EXIT
END

IF ~~ t12.9
SAY ~唉，说这些够了。我们何不找个地方灌几杯，让自己好受点，<CHARNAME>？也许能让你高兴些。~
++ ~算了。~ + t12.10
++ ~听着不错。~ + t12.11
END

IF ~~ t12.10
SAY ~你这么说就这样。不过我遇上的麻烦，还没有哪桩是灌麦酒解决不了、至少能搁到一边的。~
IF ~~ EXIT
END

IF ~~ t12.11
SAY ~这才像话。到明天我们就会把巴尔之子、血脉这些胡话全忘了，至少忘一阵。那总比在这儿闷着强，你不觉得？~
IF ~~ EXIT
END
END

// TALK 13

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",24)~ THEN C0DRAKEJ t13
~你真准备好了，嗯？要是我没弄错，那个叫萨雷沃克的就在前头。你真打算杀他？~ [C0DRAK13]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
++ ~只有不得已才杀。若有机会说话，我会说。~ + t13.1
++ ~我还有别的选择吗？~ + t13.2
++ ~是，现在别出声，跟着。~ + t13.0

APPEND C0DRAKEJ

IF ~~ t13.0
SAY ~好。这也许是我们至今最大的难关，可……不管怎样，我跟你。~
IF ~~ EXIT
END

IF ~~ t13.1
SAY ~我不信那疯子肯把话谈完。眼里有那种……杀气的人不会。~
IF ~~ + t13.3
END

IF ~~ t13.2
SAY ~我承认，余地不多。我看你本可以一走了之，可我怀疑事情不会就这么了结。~
IF ~~ + t13.3
END

IF ~~ t13.3
SAY ~真奇怪。你跟他都是同样的神血，可我看着你们少有相似。有人说过有些人生来就带着恶……若真是这样，那我就看到了证据：那恶未必非得长成他那样。~
= ~不管你生来是什么，凡人也好别的也罢，我……不觉得你会变成他那样，不管别人怎么想。我看正因为你的血，才只有你能拦住萨雷沃克。~
++ ~你真这么想？~ + t13.4
++ ~你怎么能确定我不会变得跟他一样恶？~ + t13.5
++ ~谢了，德雷克。~ + t13.6
END

IF ~~ t13.4
SAY ~当然。不过我提醒你，我以前也看错过。但愿这回不是。~
IF ~~ + t13.6
END

IF ~~ t13.5
SAY ~只是……一种感觉。你认识一个人够久，就会有这种感觉。~
IF ~~ + t13.6
END

IF ~~ t13.6
SAY ~我看得出来，这场仗不好打。万一我们哪个没能过去，我就说……这一路挺有趣，<CHARNAME>。跟着你……是我好久以来做过最值的事。~
= ~这事完了，我要还活着，就得回家告诉骑士团……也告诉我父亲……发生的一切。那里面得包括萨雷沃克的血脉……可你要想把自己的瞒着，我明白。~
= ~我不能保证他们不会自己查出来，可……我欠你够多，至少该尊重你的秘密。~
++ ~你可以告诉他们真相。我不想让你为难。~ + t13.7
++ ~我领这份情。~ + t13.8
END

IF ~~ t13.7
SAY ~你这么说就这样。可就算他们知道了，我也会把我的看法说给他们，包括你做的所有好事。你该得这些。~
IF ~~ + t13.9
END

IF ~~ t13.8
SAY ~那我的嘴就封上了，<CHARNAME>。他们不会知道……至少不会从我这儿。~
IF ~~ + t13.9
END

IF ~~ t13.9
SAY ~不过我们站在这儿浪费的时间够多了。让这疯子尝一口他该得的正义。~
IF ~~ EXIT
END
END

// Interjections

// Andout

I_C_T2 ANDOUT 0 C0DrakeANDOUT0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~挺高兴看到安姆跟它邻居还把箭对着彼此的喉咙。我毫不怀疑路上会撞见许多像这位一样的人，<CHARNAME>，两头跑。~
END

// Alatos

I_C_T ALATOS 0 C0DrakeALATOS0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~我想你会原谅我照样把兵器握在手里，小偷。~
END

// Alyth

I_C_T ALYTH 0 C0DrakeALYTH0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哎呀！我一定是瞎了，竟看见不属这世间的美！来吧，我的女士，不喝一杯吗？~
== ALYTH ~嗯。很遗憾，我不得不谢绝。~
END

// Angelo

I_C_T ANGELO 0 C0DrakeANGELO0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~……哈！别逗我笑。你不过是个装权柄的弄臣。小心那分量把你压垮。~
DO ~SetGlobal("C0DrakeAngelo","GLOBAL",1)~
END

I_C_T ANGELO 4 C0DrakeANGELO4
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~嘿……从今往后最好睡得轻点，渣滓。正义总有回头的时候。~
== ANGELO ~也许是，可不会落到我头上。趁你还活着，想想这个。~
END

// Arghain

I_C_T ARGHAI 0 C0DrakeARGHAI0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哦，我确信你能比这强，大个子。也许我们把铁器直接送进你那丑脸时，你都不会察觉。~
END

// Bassilus

I_C_T BASSIL 0 C0DrakeBASSIL0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~那么，这又算是什么把戏？~
END

I_C_T BASSIL 2 C0DrakeBASSIL2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哈！这通疯癫表演虽有意思，我看该让这可怜虫尝尝他受害者该得的正义了，你不觉得吗，<CHARNAME>？~
END

I_C_T2 BASSIL 5 C0DrakeBASSIL5
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~你躲我躲得太久了，塞瑞克信徒，现在该是你得报应的时候。祈祷吧，要是你还有那个脑子。~
DO ~SetGlobal("C0DrakeBassilus","GLOBAL",1)~
END

I_C_T2 BASSIL 6 C0DrakeBASSIL5
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~你躲我躲得太久了，塞瑞克信徒，现在该是你得报应的时候。祈祷吧，要是你还有那个脑子。~
DO ~SetGlobal("C0DrakeBassilus","GLOBAL",1)~
END

I_C_T2 BASSIL 10 C0DrakeBASSIL5
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~你躲我躲得太久了，塞瑞克信徒，现在该是你得报应的时候。祈祷吧，要是你还有那个脑子。~
DO ~SetGlobal("C0DrakeBassilus","GLOBAL",1)~
END

I_C_T2 BASSIL 11 C0DrakeBASSIL5
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~你躲我躲得太久了，塞瑞克信徒，现在该是你得报应的时候。祈祷吧，要是你还有那个脑子。~
DO ~SetGlobal("C0DrakeBassilus","GLOBAL",1)~
END

I_C_T2 BASSIL 12 C0DrakeBASSIL5
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~你躲我躲得太久了，塞瑞克信徒，现在该是你得报应的时候。祈祷吧，要是你还有那个脑子。~
DO ~SetGlobal("C0DrakeBassilus","GLOBAL",1)~
END

I_C_T2 BASSIL 13 C0DrakeBASSIL5
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~你躲我躲得太久了，塞瑞克信徒，现在该是你得报应的时候。祈祷吧，要是你还有那个脑子。~
DO ~SetGlobal("C0DrakeBassilus","GLOBAL",1)~
END

// Bentan

I_C_T BENTAN 8 C0DrakeBENTAN8
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>，这弄臣正在严重损伤我的理智。我建议趁还有机会走开。~
END

// Bentley

CHAIN IF WEIGHT #-1
~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
Global("C0DrakeBentley","GLOBAL",0)~ THEN BENTLY C0DrakeBentley
~有什么能为您……哦。是你。~
DO ~SetGlobal("C0DrakeBentley","GLOBAL",1)~
== C0DRAKEJ ~你对回头客都这样？~
== BENTLY ~哼。~
== C0DRAKEJ ~因为我是安姆人？我得说，本特利，我以为像你这样见多识广的人该看得穿这种偏见。~
== BENTLY ~别往我嘴里塞话，小子。安姆人还是别的，在我店里没差别，可你……加尔的份上，要是有三个你，我一个礼拜就得关门。还有你的做派……吓着我别的客人了。~
== C0DRAKEJ ~那好，也许你听了会高兴，我不会久留。至少……这一阵不会。招呼<CHARNAME>的需要。顺便给我来一扎你最好的麦酒。~
== BENTLY ~*叹息* 是，是，我知道。~
EXTERN BENTLY 1

// Berrun

I_C_T BERRUN 12 C0DrakeBERRUN12
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~嘿，那边！光辉之心骑士团的德雷克·考尔菲尔德，听候差遣。放心，镇长，我们会把这事查到底。~
== BERRUN ~骑士团成员的话我当然信得过。愿诸神护你们，朋友们。~
END

I_C_T BERRUN 13 C0DrakeBERRUN13
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~嘿，那边！光辉之心骑士团的德雷克·考尔菲尔德，听候差遣。放心，镇长，我们会把这事查到底。~
== BERRUN ~骑士团成员的话我当然信得过。愿诸神护你们，朋友们。~
END

I_C_T BERRUN 19 C0DrakeBERRUN19
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~嘿，那边！光辉之心骑士团的德雷克·考尔菲尔德，听候差遣。放心，镇长，我们会把这事查到底。~
== BERRUN ~骑士团成员的话我当然信得过。愿诸神护你们，朋友们。~
END

// Bjornin

I_C_T2 BJORNI 1 C0DrakeBJORNI1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~正义就是我为活着的东西，兄弟。不过我觉着你更想先见个医者，再来口烈酒。~
END

// Centeol

I_C_T2 CENTEO 3 C0DrakeCENTEO3
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哈！这问题问得真浪费，可我不得不说，换我也得问同样一句。好，那咱们去治治虫害，嗯？~
END

// Chase

I_C_T CHASE 0 C0DrakeCHASE0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~我长大的地方，起码有两个贵族会押五十克朗赌你跳不跳。~
== CHASE ~我亲爱的老娘啊！你是在什么鬼地方长大的？~
END

// Chloe

I_C_T CHLOE 1 C0DrakeCHLOE1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~那位漂亮的军官有些日子没路过贝尔葛斯特了。嗯，去看看她也不碍事。~
END

// Clair

I_C_T CLAIRD 0 C0DrakeCLAIRD0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~小心！我挺看重我这脖子的，就像你肯定也看重你那条好看的。我看人类一定不常走这儿。~
END

// Davaeorn

I_C_T2 DAVAEO 0 C0DrakeDAVAEO0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~那么，这儿这小规模奴隶买卖归你管，是吧？你确定？好。毕竟我们可不能杀错渣滓。~
END

// Drizzt

I_C_T DRIZZT 0 C0DrakeDRIZZT0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哎呀，是我眼花了，还是我真看见了那位传说本人，崔斯特·杜垩登？他多半已经把事情料理好了，可我认识些愿出右手跟他并肩作战的人。我们上吗，<CHARNAME>？~
END

// Drunk

I_C_T2 DRUNK 4 C0DrakeDRUNK4
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~...~
== C0DRAKEJ ~你知道，<CHARNAME>……我看我可能刚碰上了对手。~
END

// Dun

I_C_T DUN 1 C0DrakeDUN
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~你确定没漏掉几步？没有勒索、烂买卖，也没人背后捅你？~
== DUN ~嗯，还真没有……~
== C0DRAKEJ ~那我看你运气不错，我的朋友。~
END

// Flaming Fist

I_C_T FLAM5 0 C0DrakeFLAM50
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哦，这可有意思。有一会儿我还以为不知不觉踩回了老家。士兵，你离抓人定额差多远，才使出这种手段？~
== FLAM5 ~闭上你的嘴，安姆人。你只是在给我们更多理由把你铐起来。~
END

// Gallor

I_C_T GALLOR 1 C0DrakeGALLOR1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~我有个更好的主意。不如我们把你“清掉”，然后赖在熊地精头上，嗯？~
== GALLOR ~嘿，咱们谈谈这个！~
END

I_C_T GALLOR 17 C0DrakeGALLOR17
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哈！我倒不会赞成拿恶魔附身当刑罚，可这差不多就是他该得的。尝尝正义吧，渣滓！~
END

// Gazib

I_C_T2 GAZIB 0 C0DrakeGAZIB0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~……真叫人愉快。~
END

// Hairtooth

INTERJECT HAIRTO 0 C0DrakeHAIRTO0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN
~我这儿有颗脑袋给你，就在这根棍子上。想要吗，大块头？~
END
++ ~这……真恶心，德雷克。~ EXTERN C0DRAKEJ C0DrakeGnarl
++ ~你们一个铜板也别想从我们这儿拿到，肉脑袋。~ EXTERN GNARL 4

CHAIN C0DRAKEJ C0DrakeGnarl
~什么？我说的是锤子，我的朋友。~
EXTERN GNARL 4

// Hannah

I_C_T HANNAH 0 C0DrakeHANNAH0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~我当然希望不会。要真有这种法律，我就得在本地酒馆永久住下了。~
END

// Icharyd

INTERJECT ICHARY 0 C0DrakeICHARY0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN
~哈！要是活人对我这身肉有这么馋就好了。可惜我更中意骨头上多点肉、没那么瘦的。滚开，死东西！我这身肉有主了。~
EXTERN ICHARY 2

// Jamie + Samantha

I_C_T SAMANT 7 C0DrakeSAMANT7
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~提尔在上，<CHARNAME>，你真得练练。好，那我们确保没人因为你这蹩脚的调情受伤，嗯？~
END

I_C_T JAMIE 0 C0DrakeJAMIE0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~慢着，小鬼。在有人——或者什么“东西”——受伤之前，你也许该再仔细想想。~
END

// Jared

I_C_T2 JARED 0 C0DrakeJARED0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~是，我确定。那你身上穿的那些衣服呢，嗯？你早晚要收回这话。总之，我们先收拾这头熊，<CHARNAME>。~
END

// Kelddath

I_C_T2 KELDDA 1 C0DrakeKELDDA1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~放倒一个流口水的疯子，这赏金倒挺大方，可我看也没法抱怨。别说我从没替你想过，<CHARNAME>。~
END

// Laurel

I_C_T LAUREL 1 C0DrakeLAUREL1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哦，我们中有些人愿意待一整夜，我亲爱的骑士女士。~
== LAUREL ~哼。一个提尔信徒，你这舌头倒挺厉害，先生。~
== C0DRAKEJ ~哈！我这舌头能干什么，你会吓一跳。~
== LAUREL ~咳。我们刚才在说叽布林，不是吗？~
END

I_C_T LAUREL 2 C0DrakeLAUREL2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哦，我们中有些人愿意待一整夜，我亲爱的骑士女士。~
== LAUREL ~哼。一个提尔信徒，你这舌头倒挺厉害，先生。~
== C0DRAKEJ ~哈！我这舌头能干什么，你会吓一跳。~
== LAUREL ~咳。我们刚才在说叽布林，不是吗？~
END

// Lothander

I_C_T LOTHAN 1 C0DrakeLOTHAN1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~我还以为我昨晚吐出来的东西只是我平常喝酒的老毛病。这下忽然全说得通了。~
END

// Melicamp

I_C_T MELICA 1 C0DrakeMELICA1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~...~
== C0DRAKEJ ~你要是没听见那只鸡说话，<CHARNAME>，那我就这辈子戒酒。~
END

I_C_T MELICA 2 C0DrakeMELICA2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~嗯，那就好。有一会儿我还以为自己神志不清了。那么，呃，鸡。这是什么“禽”术法？哈！~
== MELICA ~呃，闭嘴……*咯咯* 闭嘴。~
END

// Mulahey

I_C_T MULAHE 0 C0DrakeMULAHE0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哦，你瞧瞧。又一个该死的塞瑞克信徒。肯定比上一个没那么疯，可那股臭气得扣分。等我们完事，但愿提尔的力量也能把他洗一洗。~
END

I_C_T MULAHE 3 C0DrakeMULAHE3
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~别犯傻，你不可能上这种当，<CHARNAME>。~
END

I_C_T2 MULAHE 8 C0DrakeMULAHE8
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~你上当了。我都不知道该说什么。~
END

// Neb

I_C_T NEB%eet_var% 2 C0DrakeNEB2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~……<CHARNAME>，准许我杀了他。~
== NEB%eet_var% ~这是什么，嘿嘿？哪儿来这么大的恨，大个子？~
== C0DRAKEJ ~你就是我妹妹夜里往床底下看的那种怪物。我说过我找到哪个就砸扁哪个——从没想过真能找着一个，还偏偏在这臭窟窿里。~
== NEB%eet_var% ~嘻嘻，杀我，你当然可以，可你要怎么从这个烂摊子里脱身，嗯？~
END

I_C_T2 NEB%eet_var% 17 C0DrakeNEB17
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~本来就该这样。唉……可惜让他跑了。~
END

// Neira

I_C_T NEIRA 0 C0DrakeNEIRA0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~看来又一个被邪神认领了。可惜，这一位脸蛋倒是挺俊。~
END

// Phandalyn

INTERJECT PHANDA 0 C0DrakePHANDA0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哦，得了，我们真非得这样吗？听我说，你，我叫德雷克·考尔菲尔德，出身最高贵的光辉之心骑士团，我建议你在出丑之前先收手。~
== PHANDA ~我神的指引不会错！你队伍里藏着邪恶，考尔菲尔德爵士。~
== C0DRAKEJ ~我不是骑士，不过那不相干。你真以为我没注意到我同行的是什么人？总之，我已经接受了他们的存在，所以他们就在我的保护之下。我向你保证，你要是继续逼这事，骑士团不会给你好脸色。~
== PHANDA ~……好，你们可以过了。可要是因此出了什么事，全算你头上。~
DO ~EscapeArea()~
== %AJANTIS_JOINED% IF ~InParty("AJANTIS")~ THEN ~你不该拦他，德雷克。扎进我们队伍里的邪恶，该尽早除掉。~
== C0DRAKEJ IF ~InParty("AJANTIS")~ THEN ~当然，当然。可当众杀人会开个坏头。我们能不能先把这事搁一搁？~
EXIT

// Prism

I_C_T2 PRISM 7 C0DrakePRISM7
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~嗯，真可惜。祖母绿多得是，真正的艺术家却稀罕。我得记着哪天带我妹妹来，致敬他的作品。你知道，她对艺术有天赋。~
END

// Samuel

I_C_T SAMUEL 0 C0DrakeSAMUEL0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哎呀哎呀，他连肺都要咳出来了，还在想着他的心上人。要不是会要了他的命，我真想把这傻小子敲醒。~
END

// Scar

I_C_T SCAR 2 C0DrakeSCAR2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哈！燃焰铁拳在雇外人？看来你的手被绑得跟安姆那帮人一样紧。真丢人，我还指望你们北方人能强些。~
== SCAR ~我们通常尽力而为，我向你保证，可眼下的情形……很复杂。任何帮助我们都感激。~
END

I_C_T SCAR 1 C0DrakeSCAR1
== SCAR IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~可我走之前，还有一桩事……你。你是提尔的牧师德雷克·考尔菲尔德吗？~
== C0DRAKEJ ~哎呀，是，你在这地界还是头一个认出我的。为什么？~
== SCAR ~你跟描述相符。城里有个人在找你。他在精灵之歌酒馆等你。~
== C0DRAKEJ ~我……明白了。那好，多谢你这消息。~
== SCAR ~我要说的就这些。向你们各位告辞。~
END

I_C_T SCAR 3 C0DrakeSCAR3
== SCAR IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~可我走之前，还有一桩事……你。你是提尔的牧师德雷克·考尔菲尔德吗？~
== C0DRAKEJ ~哎呀，是，你在这地界还是头一个认出我的。为什么？~
== SCAR ~你跟描述相符。城里有个人在找你。他在精灵之歌酒馆等你。~
== C0DRAKEJ ~我……明白了。那好，多谢你这消息。~
== SCAR ~我要说的就这些。向你们各位告辞。~
END

I_C_T SCAR 7 C0DrakeSCAR7
== SCAR IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~可我走之前，还有一桩事……你。你是提尔的牧师德雷克·考尔菲尔德吗？~
== C0DRAKEJ ~哎呀，是，你在这地界还是头一个认出我的。为什么？~
== SCAR ~你跟描述相符。城里有个人在找你。他在精灵之歌酒馆等你。~
== C0DRAKEJ ~我……明白了。那好，多谢你这消息。~
== SCAR ~我要说的就这些。向你们各位告辞。~
END

// Sendai

I_C_T SENDAI%eet_var% 2 C0DrakeSENDAI2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~真有必要吗，<CHARNAME>？*叹息* 嗯，最好别让这事传出去。我对阿格里姆家那些混蛋没好感，可他们要是知道，绝不会就这么咽下去。~
== SENDAI%eet_var% ~没人会知道——也没人会在乎——你的死，蛮子！~
END

I_C_T SENDAI%eet_var% 3 C0DrakeSENDAI3
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哦，天。她要是真是阿格里姆家的人，我最好别提我的姓氏。除非你想把事情弄到很难看。~
END

I_C_T2 SENDAI%eet_var% 4 C0DrakeSENDAI4
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~克制得好，<CHARNAME>。我不能说我在老家没揍掉过几个阿格里姆混蛋的牙，也没为此吃过亏。~
END

// Silke

INTERJECT CUTSILK 2 C0DrakeSILKE2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哦，别自取其辱了。我估摸着见过的三铜板妓女都比你会演。~
== CUTSILK ~你竟敢，你这脏猪？~
EXTERN CUTSILK 4

// Taurgosz

I_C_T TAUGOS 0 C0DrakeTAUGOS0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~*哼* 用锤子更省事。~
END

// Tenya

I_C_T2 TENYA 5 C0DrakeTENYA5
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~唉，见鬼，我们把自己弄进什么了？我看我们就信这丫头的话，<CHARNAME>。孩子不大会撒谎。~
END

// Theodon

I_C_T WILLIA%eet_var% 4 C0DrakeWILLIA4
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哈！好，那就说吧，老家伙，还有什么？~
END

I_C_T WILLIA%eet_var% 8 C0DrakeWILLIA8
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哇——哈哈哈哈哈，哈——啊！~
END

INTERJECT WILLIA%eet_var% 10 C0DrakeWILLIA10
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~哦，我这就要拿这故事赚一枚亮闪闪的铜板，我确定……哈！~
END
++ ~你敢。~ EXTERN C0DrakeJ theodon1
++ ~只要记得分我一份赚头。~ EXTERN C0DrakeJ theodon2

CHAIN C0DrakeJ theodon1
~来吧，我的朋友，我就不能让你再想想？~
EXIT

CHAIN C0DrakeJ theodon2
~哦，当然，当然。总不能让你白卖尊严，是吧？哈！~
EXIT

// Tranzig

I_C_T TRANZI 7 C0DrakeTRANZI7
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~唉，这真是可怜。敲晕他，扔给铁拳那帮人，<CHARNAME>。他让我胃里难受。~
== TRANZI ~不，什么都行，就别那样，求你！~
END

// Ulraunt

I_C_T2 ULRAUN 6 C0DrakeULRAUN6
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~*哼* 这老糊涂显然压根不懂安姆的谍报到底怎么运作。我这处境讽刺得我差点想笑。~
END

// Vai

I_C_T VAI 0 C0DrakeVAI0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~嘿，那边，漂亮的军官！你肯定没把我忘了？~
== VAI ~我很想……忘，可惜没有。我看你找到同伴了，考尔菲尔德先生。~
== C0DRAKEJ ~我不是早跟你说过别提那个“先生”的废话吗，杰莎？来嘛，毕竟你可以叫我德雷克，~
== C0DRAKEJ IF ~Dead("bassilus")~ THEN ~巴希勒斯倒下了，你知道吗？这事上你给的“协助”，我该谢你。~
== C0DRAKEJ IF ~!Dead("bassilus")~ THEN ~巴希勒斯还活着，你知道吗？这事上你给的“协助”，我该谢你。~
== VAI ~我没权帮你，考尔菲尔德，你很清楚。我这队人已经摊得太薄了。~
== C0DRAKEJ ~哦，我知道，别担心。说到摊薄，我还得补一句……~
== VAI ~闭嘴。现在。~
END

I_C_T VAI 6 C0DrakeVAI6
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~你就这么走了，真可惜。我挺喜欢我们聊天。~
== VAI ~就只是聊天。我希望你没往<CHARNAME>脑袋里灌些误导人的念头。~
== C0DRAKEJ ~别忘了酒钱。不过，杰莎——别往心里去。都是好意闹着玩。~
== VAI ~好。也许我们还能以更有利的条件再见。~
END

// Yago

I_C_T YAGO 4 C0DrakeYAGO4
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~*吐口水* 他这么摇尾乞怜，该得更好的报应，尤其看他干过什么。你不会就这么放他走吧？~
END

// Zeke

INTERJECT ZEKE 0 C0DrakeZEKE0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~真的吗。我在想，假如这雕像原本是位女术士，她会怎么想被你这么个矮墩子扣作人质，嗯？~
== ZEKE ~呃……~
== C0DRAKEJ ~说到这个，我不过想让你知道，正义之神清楚你在干什么。而且我可以告诉你，他不高兴。事实上，正是他把我带到这儿来传话的。~
== ZEKE ~*咽口水* 你、你知道什么，卷轴拿去！我可不想因此招来神罚！我——我得走了！~
DO ~GiveItem("SCRLPET",LastTalkedToBy) EscapeArea()~ EXIT

// Zhurlong

I_C_T2 ZHURLO 0 C0DrakeZHURLO0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~嘿，小心！该死，太晚了。那小混蛋还顺走了我二十枚金币。我只好把头盔当了才付清账。告诉你，偷人酒钱的有专门一层地狱等着……~
END

I_C_T2 ZHURLO 1 C0DrakeZHURLO1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~嘿，小心！该死，太晚了。那小混蛋还顺走了我二十枚金币。我只好把头盔当了才付清账。告诉你，偷人酒钱的有专门一层地狱等着……~
END

I_C_T2 ZHURLO 2 C0DrakeZHURLO2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~嘿，小心！该死，太晚了。那小混蛋还顺走了我二十枚金币。我只好把头盔当了才付清账。告诉你，偷人酒钱的有专门一层地狱等着……~
END

I_C_T ZHURLO 4 C0DrakeZHURLO4
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~*哼* 从我自己的口袋里拿钱奖励我，这感觉真怪。不过结局好就算好，我看。我只建议你从今往后更留神些。~
== ZHURLO ~呃……那事我很抱歉。~
END

// "Are you here to pay homage to our dread lord?"

INTERJECT IRON11 0 C0DrakeIRON110
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN
~嗯，那咱们看看……我看我的锤子乐意回答这个问题，塞瑞克信徒。也许提尔的神力能让你脑子清醒点！~
== IRON11 ~提尔的狗！你来这儿是走错路了！~
DO ~Enemy()~ EXIT

// Shadow Thieves

EXTEND_TOP HUSAM2 6
+ ~Dead("c0dthf01")
Dead("c0dthf02")
Dead("c0dthf03")
Global("C0DrakeHusam","GLOBAL",0)~ + ~影贼？我们杀了你们三个藏在地下的手下。~ DO ~SetGlobal("C0DrakeHusam","GLOBAL",1)~ EXTERN HUSAM2 C0DrakeHusam
END

CHAIN HUSAM2 C0DrakeHusam
~啊，是……那桩恶心的勾当是你们干的？我们发现那位可怕的艾登·韦尔烂在下水道底下的洞里，着实吓了一跳。~
== HUSAM2 ~不过别怕。韦尔和他的同伙是在我们的命令之外行事，为了我们自身的利益，我们没打算为他报仇。那么，我再问一遍，你是什么人？~
== C0DRAKEJ IF ~InParty("C0Drake")~ THEN ~*哼* 换句话说，为了自身利益，他十分乐意把同伙的事扔到一边。你还想听他们把话说完吗，<CHARNAME>？~
COPY_TRANS HUSAM2 6

// Bassilus dead

APPEND C0DRAKEJ

IF ~Global("C0DrakeBassilus","GLOBAL",2)~ bassilus
 SAY ~嗯。我知道他疯，可没想到疯成这样。不过他现在脸朝下埋土里了，这事就算了了。~ [C0DRAK14]
 = ~我该照规矩说几句。*清嗓*“愿提尔的正义公平对待此人，哒—布啦—布啦—布啦，这个那个，还有别的，下地狱的路上别绊着，完了。”~
 ++ ~就这样？你这可不怎么专业。~ + bassilus.1
 ++ ~给这种渣滓祈祷太便宜他了。~ + bassilus.2
 ++ ~我们走吧。~ + bassilus.0
END

IF ~~ bassilus.0
 SAY ~对，对。~
 IF ~~ + bassilus.5
END

IF ~~ bassilus.1
 SAY ~相信我，<CHARNAME>，对疯成这样的渣滓，我的话跟趁他倒下踹他一脚一样有用。那差不多就是他们该得的。~
 ++ ~你真想的话，可以踢他的尸体。~ + bassilus.3
 ++ ~这话真难听！~ + bassilus.4
 ++ ~我看我们该走了。~ + bassilus.0
END

IF ~~ bassilus.2
 SAY ~哦，我同意，可我要是连我这份职责最基本的样子都不做一做，大概就得丢差事了。嗯……不，我不会丢，可我没法说上头那位大人物会喜欢。而且你知道，他还养着我。~
 IF ~~ + bassilus.5
END

IF ~~ bassilus.3
 SAY ~嗯，挺诱人，可算了。倒不是他还剩多少尊严，只是那样太小气。~
 IF ~~ + bassilus.5
END

IF ~~ bassilus.4
 SAY ~*笑* 也许是吧。这就是骑士团不想再留我的原因。你知道，带坏孩子。~
 IF ~~ + bassilus.5
END

IF ~~ bassilus.5
 SAY ~你在这儿干得不错，<CHARNAME>。你既能放倒这个层级的邪恶，那你也许真是个值得听的人。~
 = ~你要觉得我这人还能忍，我不介意多留一阵。毕竟这类事正是我来这鬼地方要干的，那我何不跟你这样想法相近的人一起干。听着还行？~
 ++ ~当然。我很乐意有你帮忙。~ + bassilus.6
 ++ ~也许改日吧。~ + bassilus.7
 ++ ~想法相近？别逗我笑。我们的事了了，你走吧。~ + bassilus.8
END

IF ~~ bassilus.6
 SAY ~明智的选择，我的朋友。我确信你不会后悔……至少不会马上后悔。~
IF ~~ DO ~SetGlobal("C0DrakeBassilus","GLOBAL",3)~ EXIT
END

IF ~~ bassilus.7
 SAY ~真可惜。我还以为总算找到个像样的酒伴。唉，你能怎么办呢？你要是改主意，我就在友善之臂旅店，但愿那时候还能清醒到说出两句整话。~
IF ~~ DO ~SetGlobal("C0DrakeBassilus","GLOBAL",3) SetGlobal("C0DrakeJoined","LOCALS",0) EscapeAreaMove("%FriendlyArmInn_L1%",593,530,NW)~ EXIT
END

IF ~~ bassilus.8
 SAY ~那好，你要这样，我看真没理由留下了。祝你顺当。~
 IF ~~ DO ~SetGlobal("C0DrakeJoined","LOCALS",0) LeaveParty() EscapeArea()~ EXIT
END
END

// Undercellars

CHAIN IF ~Global("C0DrakeUndercellar","GLOBAL",1)~ THEN C0DrakeJ cellar
~*吸鼻子* 闻到了吗，<CHARNAME>？那是廉价黑莲的味道。这些可怜虫在毁自己，自己都不知道。~ [C0DRAK15]
DO ~SetGlobal("C0DrakeUndercellar","GLOBAL",2)~
== C0DRAKEJ ~或者他们知道，只是太厌恶自己的命，连在乎都不在乎了。真可悲。~
== %XAN_JOINED% IF ~InParty("XAN")~ THEN ~要真是这样，我当然同情他们。至少他们接受了生命的虚妄，还试着从里头榨点乐趣。~
== C0DRAKEJ IF ~InParty("XAN")~ THEN ~真的吗？那你要不要坐下跟他们一块儿？~
== %XAN_JOINED% IF ~InParty("XAN")~ THEN ~我怕只能谢绝。我毫不怀疑那些幻觉有限，跟我钱包里的内容一样。~
== C0DRAKEJ IF ~InParty("XAN")~ THEN ~哈！那你至少还懂这么多。不错，赞。~
END
	++ ~听你这口气，你是有经验才懂这些的，德雷克。~ + cellar1
	++ ~黑莲在安姆很常见吗？~ + cellar2
	++ ~真恶心。我想不出谁受得了。~ + cellar3
	++ ~我们办完事就离开这儿。~ + cellar0
	
CHAIN C0DRAKEJ cellar4
~我年轻时几乎什么都试过，你能想到的。黑莲只是其中一样。~
== %AJANTIS_JOINED% IF ~InParty("Ajantis")~ THEN ~海尔姆在上，德雷克！这要是在骑士团里传开……~
== C0DRAKEJ IF ~InParty("Ajantis")~ THEN ~嘿，你现在真要拿这个怪我吗，阿詹提斯？那是很久以前，早在我跟咱们这帮人牵扯上之前。再说，我父亲早就全知道了。~
== C0DRAKEJ ~那算不上我最自豪的时刻。我比大多数人思想开放，可这种毒药我也不愿给我最坏的敌人。它对你做的事说不出口。~
END
	++ ~那我就信你的话。~ + cellar5
	++ ~你这下把我弄好奇了。~ + cellar6
	++ ~这听着虚伪，尤其你自己还有酗酒的毛病。~ + cellar7
	++ ~我们尽快离开这儿。~ + cellar0

APPEND C0DrakeJ

IF ~~ cellar0
SAY ~我就跟在你后头。只是……别被这儿可能找到的东西吓得太厉害。~
IF ~~ EXIT
END

IF ~~ cellar1
SAY ~我们都有年轻的时候。嗯，我也许没那么老，可也不是小雏鸡了。~
IF ~~ + cellar4
END

IF ~~ cellar2
SAY ~按法律，这是非法的。倒不是说那些绝望到要靠黑莲解决问题的人还在乎半点法律，所以是，它挺流行。~
= ~你要是哪天去了阿斯卡特拉，去铜冠酒馆的后屋转转。他们能让这地方看着像伊尔玛塔的礼拜堂一样圣洁。~
IF ~~ + cellar4
END

IF ~~ cellar3
SAY ~哦，等你真开始吸那东西，就没那么糟了。等你烧掉足够多、烧出那股味儿，你早醉得不在乎了。~
IF ~~ + cellar4
END

IF ~~ cellar5
SAY ~那你比我明智。我当初太着迷，就想知道黑莲能引出什么说不出口的幻象。当然，后来那些噩梦留下了，哪怕我认清它多邪恶、洗手不干之后。~
IF ~~ + cellar8
END

IF ~~ cellar6
SAY ~你试过之后就会后悔这么说。我当初也一样，太着迷，就想知道黑莲能引出什么说不出口的幻象。当然，后来那些噩梦留下了，哪怕我认清它多邪恶、洗手不干之后。~
IF ~~ + cellar8
END

IF ~~ cellar7
SAY ~嘿，我从没说我干净。再说，我喝过的最烈的酒，尿出去之后至少还能让我觉得浑身舒坦。可黑莲……你一旦吸进去，就再也不是原来的你了。~
IF ~~ + cellar8
END

IF ~~ cellar8
SAY ~就听我一句，<CHARNAME>。你要是哪天想忘掉这日子往你头上扔了多少烂事，就继续喝酒。你后悔得少些。~
IF ~~ EXIT
END

// Golden Pantaloons

IF ~Global("C0DrakePantaloons","GLOBAL",1)~ pantaloons
SAY ~哦，不。我真不敢信。头回听人说时我还当是笑话，可我从没想到这东西真存在。~ [C0DRAK16]
= ~我知道贵族离怪癖只差一步就进彻底的疯，可神志正常的人怎么会穿着这么花哨的东西到处走？~
= ~……你不会真还给他吧？我看你把这些从他手里拿走是帮了他。~
IF ~~ DO ~SetGlobal("C0DrakePantaloons","GLOBAL",2)~ EXIT
END

// GENDER CHANGE

IF ~Global("C0DrakeSexChange","GLOBAL",1)~ gender
SAY ~嗯。那好吧。~
= ~我还以为我什么都经历过了。~
IF ~~ DO ~SetGlobal("C0DrakeSexChange","GLOBAL",2)~ EXIT
END

// Dead Marl

IF ~Global("C0DrakeMarlKilled","GLOBAL",1)~ marl
SAY ~有必要这样吗？~ [C0DRAK17]
++ ~我试着劝他冷静。他没给我选择。~ + marl1
++ ~没必要，可挺好玩。~ + marl2
++ ~我送他去见他儿子了。我看这算帮他。~ + marl3
END

IF ~~ marl1
SAY ~你没必要把他头骨碎片溅得满店都是。~
IF ~~ DO ~SetGlobal("C0DrakeMarlKilled","GLOBAL",2)~ EXIT
END

IF ~~ marl2
SAY ~*哼* 至少你诚实。倒也没多少分量。~
IF ~~ DO ~SetGlobal("C0DrakeMarlKilled","GLOBAL",2)~ EXIT
END

IF ~~ marl3
SAY ~这话真冷，<CHARNAME>。我甚至找不到合适的词来训你。~
IF ~~ DO ~SetGlobal("C0DrakeMarlKilled","GLOBAL",2)~ EXIT
END

// Nashkel

IF ~Global("C0DrakeNashkel","GLOBAL",1)~ nashkel
SAY ~啊，纳西凯。不完全像阿斯卡特拉，可这是我好久以来离家最近的一次。我从没想到这么快又踏上安姆的土地，哪怕还只是边界。~ [C0DRAK21]
++ ~安姆的首都就那么不一样？~ + nashkel1
++ ~你以前来过这儿吗？~ + nashkel2
++ ~现在没工夫说这个。我们有活要干。~ + nashkel0
END

IF ~~ nashkel0
SAY ~当然，当然。毕竟你说了算。~
IF ~~ DO ~SetGlobal("C0DrakeNashkel","GLOBAL",2)~ EXIT
END

IF ~~ nashkel1
SAY ~哦，当然。不过别被那些镀金街道的传说骗了。要你想得出来，它可比这儿少绿、少健康得多。可那城在路上那些烂事之间，自有一种味道。~
= ~不过阿斯卡特拉肯定是更适合厮混、喝酒、打架的地方。纳西凯对我口味来说太安静了。~
IF ~~ + nashkel3
END

IF ~~ nashkel2
SAY ~来过一两次。可都是公差，从没玩乐。我父亲——杜兰德教长——不大赞我自作主张走得太靠边界。也许他以为我会跑。~
= ~倒也不是我没想过一两次。不然我也没多少理由离家跑这么远。太安静了。~
IF ~~ + nashkel3
END

IF ~~ nashkel3
SAY ~嗯，别光听我说，<CHARNAME>。带我们转转，你自己看这地方什么样。~
IF ~~ DO ~SetGlobal("C0DrakeNashkel","GLOBAL",2)~ EXIT
END

// Nashkel Carnival

IF ~Global("C0DrakeCarnival","GLOBAL",1)~ carnival
SAY ~嗯，这景象挺新鲜。马戏团时不时来阿斯卡特拉，可我看没见过搭得这么气派的。~ [C0DRAK22]
= ~可惜托马斯和克劳迪娅没跟我一块儿来看。他们准会疯掉，毫无疑问。不过这儿也许有一两样东西我们会感兴趣，嗯？~
IF ~~ DO ~SetGlobal("C0DrakeCarnival","GLOBAL",2)~ EXIT
END

// Petrine's Cat

IF ~Global("C0DrakePetrineCat","GLOBAL",1)~ petrine
SAY ~真的吗，<CHARNAME>？你这么做是有什么缘故，还是你就爱看可怜无助的小猫露出内脏？要真是这样，你可真是个病态扭曲的人。~ [C0DRAK23]
IF ~~ DO ~SetGlobal("C0DrakePetrineCat","GLOBAL",2)~ EXIT
END

// Stoneheart

IF ~Global("C0DrakeStoneheartTalk","GLOBAL",1)~ stone
SAY ~得意、傲慢的混蛋！我看他一点没变。~ [C0DRAK20]
++ ~哇，你好像不高兴。出什么事了？~ + stone1
++ ~不是你朋友？~ + stone2
END

IF ~~ stone1
SAY ~比你知道的更复杂，<CHARNAME>。我上回见石心，就盼那是最后一次。我就说这么多。~
IF ~~ + stone3
END

IF ~~ stone2
SAY ~不是。嗯，他曾经是，可我以为早就不再见他了。~
IF ~~ + stone3
END

IF ~~ stone3
SAY ~不过，这儿要真有影贼，我看我也只能忍着。来吧，<CHARNAME>。我们去他说的下水道里找他。那才是适合他这种老鼠的地方。~
IF ~~ DO ~SetGlobal("C0DrakeStoneheartTalk","GLOBAL",2)~ EXIT
END

// Angelo

IF ~Global("C0DrakeAngelo","GLOBAL",2)~ angelo
SAY~“正义也许瞎了眼，可我没瞎，”是吧？对一个把正义卖给最高出价者的人，我本也不指望别的。~ [C0DRAK24]
	++ ~你听着在生气。那个叫安杰洛的人冒犯你了？~ + angelo1
	++ ~我们还有比你的思量更要紧的事，德雷克。~ + angelo0
END
	
IF ~~ angelo0
SAY ~是，是，你非要无视我就无视，<CHARNAME>，可我希望到时候，由我来杀那渣滓。~
IF ~~ DO ~SetGlobal("C0DrakeAngelo","GLOBAL",3)~ EXIT
END

IF ~~ angelo1
SAY ~哦，不一定是他，<CHARNAME>。他那种人在安姆是常态。这渣滓只是让我想起老家阴暗面，想得有点太厉害。~
= ~我对剑湾本地的法律不大熟，可我原以为它不会比安姆更糟。见到斯卡时，我以为我猜对了……看来我该看得再仔细些，嗯？~
= ~这是我离我所侍奉的“正义”的慈悲最近的一次，一想到那得意混蛋差点把我们送上绞架，我就火大。再见到他，我一定把提尔真正的正义锤进他脑袋……字面意义上的。~
IF ~~ DO ~SetGlobal("C0DrakeAngelo","GLOBAL",3)~ EXIT
END

// Delainy/Durlyle

IF ~Global("C0DrakeWolfFlirt","GLOBAL",1)~ wolfflirt
SAY ~*吹口哨* 漂亮，<CHARNAME>。我没看出你还有这一手。看来不管我们最后到哪儿，我都能跟你学一两招。~
IF ~~ DO ~SetGlobal("C0DrakeWolfFlirt","GLOBAL",2)~ EXIT
END

// Helm of Opposite Alignment

IF ~Global("C0DrakeHelmAlignment","GLOBAL",1)~ alignment
SAY ~哦，这可不好。我要没被人骗，我看我知道这是什么。~
++ ~这头盔是什么，德雷克？~ + alignment1
++ ~我要试戴一下。~ + alignment2
++ ~等我们到安全的地方再谈。~ EXIT
END

IF ~~ alignment1
SAY ~那个，我的朋友，是多元宇宙里最可怕的器物之一。一顶把佩戴者的道德与信念扭成截然相反的头盔，把人变成自己最坏的敌人。~
= ~我听说有些英雄变成暴君的例子，疑似就是这头盔造成的，可我以为它并不真存在。它戴在我们这位朋友头上，多半说明他原本是某种高贵的存在，被这东西的魔法扭了。~
= ~无疑是恶魔的手笔。他们往往有种病态的幽默。我有种感觉，这事还没完。~
IF ~~ DO ~SetGlobal("C0DrakeHelmAlignment","GLOBAL",2)~ EXIT
END

IF ~~ alignment2
SAY ~我不建议。除非你愿意事后一辈子留下心理创伤。~
IF ~~ + alignment1
END

// Aec'Letec banished

IF ~Global("C0DrakeAecBanished","GLOBAL",1)~ aec
SAY ~嗯……这准是个能让骑士团记住的故事，毫无疑问。等我把我们在这儿的作为告诉父亲，也许连他都会挑一挑眉。~
= ~干得好，我的朋友。我看这一番降魔，我们俩都该拍拍背。今晚酒钱我出。~
IF ~~ DO ~SetGlobal("C0DrakeAecBanished","GLOBAL",2)~ EXIT
END

// Low Reputation; warning

IF ~Global("C0DrakeLowRep","GLOBAL",1)~ lowrep
SAY ~你知道，<CHARNAME>，我说跟你一起来剑湾收拾些邪恶混蛋时，想的可不是这个。~ [C0DRAK27]
++ ~我们杀的恶人还不够多？~ + lowrep1
++ ~这儿我说了算，我们照我说的做。~ + lowrep2
++ ~你要不满意，尽可以走。~ + lowrep3
END

IF ~~ lowrep1
SAY ~哦，当然。可你伤的好人跟伤的坏人一样多……嗯，那就没什么意义了，不是吗？~
IF ~~ + lowrep3
END

IF ~~ lowrep2
SAY ~确实。可同时，我也没义务跟着你，去干每一桩你带我们干的踹小狗的勾当。~
IF ~~ + lowrep3
END

IF ~~ lowrep3
SAY ~我暂时先信你一回，毕竟谁都有判断失手的时候，可我看你最好掂量掂量自己的人生选择。这么说吧，你现在的路子对你长远的成功不大……健康。~
IF ~~ DO ~SetGlobal("C0DrakeLowRep","GLOBAL",2)~ EXIT
END

// Drunk talk 1, drunk

IF ~Global("C0DrakeDrunkTalk","GLOBAL",1)~ drunk1
SAY ~唉，真可惜你们北方没好酒。靠这破烂喝到烂醉，简直丢人。~ [C0DRAK25]
= ~这——这最后一杯你自己尝尝。再来一杯我就……我就……大概又要干点什么让我亲爱的老爹丢脸的事，嘿。~
++ ~可你现在不在你父亲身边。~ + drunk1.1
++ ~当然，多几杯我哪能说不。~ + drunk1.2
++ ~诸神啊，老兄，你醉了。去睡一觉醒醒酒。~ + drunk1.3
END

IF ~~ drunk1.1
SAY ~什？哦，你……哈！你说得对。我——我们这是哪儿来着，<CHARNAME>？~
++ ~你已经忘了？~ + drunk1.4
++ ~几个钟头后你就想起来了。去睡吧。~ + drunk1.3
END

IF ~~ drunk1.2
SAY ~是，喝吧。难喝，是吧？就算最贵的酒也哄不动我……回阿……阿斯……阿斯什么来着。家，就是家。哈！~
IF ~~ + drunk1.5
END

IF ~~ drunk1.3
SAY ~不，这个？哈！你还没……还没见过我……真喝醉的样子，我跟你说，在阿斯……那鬼地方叫什么来着……家，就是那个……~
IF ~~ + drunk1.5
END

IF ~~ drunk1.4
SAY ~什么？哦……对，我记得……“铁出了问题，得有人去看看剑湾那边到底怎么回事，”对，我，我记得……给我下了道命令，就把我打发出家门……~
IF ~~ + drunk1.5
END

IF ~~ drunk1.5
SAY ~你知道，我……父亲，他……*打嗝* 不想我留在身边。说我……妨碍……妨碍别人。我只是……想让他们，让他们……呃……~
= ~他们不想听我的，所以我……我就想，去他的，我要出一趟远……远门，然后我……拿起锤子就走了，然后……我……~
++ ~你确定没事吗，德雷克？~ + drunk1.6
++ ~你在自取其辱。去找张床睡吧，好让人看出你是跟我一伙的。~ + drunk1.6
END

IF ~~ drunk1.6
SAY ~嗯？我——我刚才在说什么，<CHARNAME>？~
= ~呃，我脑袋……我看我得……好好歇一歇，就在这地板上……*咚* 呼……~
IF ~~ DO ~SetGlobal("C0DrakeDrunkTalk","GLOBAL",2) PlayDead(5)~ EXIT
END

// Drunk talk 2, sober

IF ~Global("C0DrakeDrunkTalk","GLOBAL",3)~ drunk2
SAY ~呃，我脑袋……该死，我怎么老这样折磨自己？呃，我提尔该死的锤子呢？我宁愿把自己脑壳敲开也不想受这罪……~ [C0DRAK26]
++ ~你还好吧，德雷克？~ + drunk2.1
++ ~这下该教你少贪杯了。~ + drunk2.2
END

IF ~~ drunk2.1
SAY ~哦，挺好。要我自己说，简直是容光焕发。别管我脑袋里像有场风暴在酝酿，呃……~
IF ~~ + drunk2.3
END

IF ~~ drunk2.2
SAY ~相信我，<CHARNAME>，这教训我早就学过了，只是从没真记住。唉，现在干脆杀了我吧！~
IF ~~ + drunk2.3
END

IF ~~ drunk2.3
SAY ~好笑的是，我干过什么一点都想不起来，只有点模糊印象，好像说了些关于我父亲的话。~
= ~你听清我说的——其实，你知道什么，算了。我不想知道。那样大概最好。~
IF ~~ DO ~SetGlobal("C0DrakeDrunkTalk","GLOBAL",4)~ EXIT
END

// Low Reputation; break

IF ~Global("C0DrakeRepBreak","GLOBAL",1)~ repbreak
SAY ~嗯，可惜。你知道，我原以为你比这强，<CHARNAME>。~ [C0DRAK28]
++ ~嗯，你错了，不是吗？~ + repbreak1
++ ~我犯了些错。我还能补回来。~ + repbreak2
++ ~你打算怎么办？~ + repbreak3
END

IF ~~ repbreak1
SAY ~显然我错了。不过话说回来，是你选着带我们走这条路，那错在你，不在我。~
IF ~Dead("bassilus")~ + repbreak5
IF ~!Dead("bassilus")~ + repbreak4
END

IF ~~ repbreak2
SAY ~真的吗。我要是不信你，你就担待着吧。~
IF ~Dead("bassilus")~ + repbreak5
IF ~!Dead("bassilus")~ + repbreak4
END

IF ~~ repbreak3
SAY ~这种情形下我唯一能做的。~
IF ~Dead("bassilus")~ + repbreak5
IF ~!Dead("bassilus")~ + repbreak4
END

IF ~~ repbreak4
SAY ~巴希勒斯还活着，照你这么走下去，我怀疑你压根没打算收拾他。那就这样吧。~
IF ~~ + repbreak5
END

IF ~~ repbreak5
SAY ~我这就离开你。我还没到自杀的地步，不会正面跟你碰，可记住我的话，从今往后你别想有安生日子。骑士团会听到你的作为……这在我还是头一回，可悲的是，是你逼我到这一步。告辞。~
IF ~~ DO ~SetGlobal("C0DrakeRepBreak","GLOBAL",2) SetGlobal("C0DrakeJoined","GLOBAL",0) LeaveParty() EscapeArea() ReputationInc(-2)~ EXIT
END

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
	+ ~Global("C0DrakeInterest","GLOBAL",0)~ + ~我想问……你觉得我们之间有可能吗？~ DO ~SetGlobal("C0DrakeInterest","GLOBAL",1)~ + d1
	+ ~Gender(Player1,MALE) Global("C0DrakeMatch","GLOBAL",1) Global("C0DrakeInterest","GLOBAL",1) Global("C0DrakeBi","GLOBAL",0)~ + ~那么……你对男人有兴趣吗？你对我的调情从没表示反感。~ DO ~SetGlobal("C0DrakeBi","GLOBAL",1)~ + e1
	+ ~Global("C0DrakeCaulfield","GLOBAL",0)~ + ~你说你出自考尔菲尔德家。你是贵族吗？~ DO ~SetGlobal("C0DrakeCaulfield","GLOBAL",1)~ + noble
	+ ~Global("C0DrakeCaulfield","GLOBAL",1)~ + ~多讲讲你家的事。~ DO ~SetGlobal("C0DrakeCaulfield","GLOBAL",2)~ + caulfield
	+ ~Global("C0DrakeCaulfield","GLOBAL",2) Global("C0DrakeParents","GLOBAL",0)~ + ~多讲讲你父母。~ DO ~SetGlobal("C0DrakeParents","GLOBAL",1)~ + parents
	+ ~Global("C0DrakeCaulfield","GLOBAL",2) Global("C0DrakeSiblings","GLOBAL",0)~ + ~多讲讲你的兄弟姐妹。~ DO ~SetGlobal("C0DrakeSiblings","GLOBAL",1)~ + siblings
	+ ~Global("C0DrakeAttitude","GLOBAL",0)~ + ~就你这态度，你在骑士团里不惹麻烦吗？~ DO ~SetGlobal("C0DrakeAttitude","GLOBAL",1)~ + attitude
	+ ~Global("C0DrakeSquire","GLOBAL",0)~ + ~你说你不是骑士。那你是什么？侍从？~ DO ~SetGlobal("C0DrakeSquire","GLOBAL",1)~ + squire
	+ ~Class("C0Drake",FIGHTER_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~你现在当上战士，感觉怎么样？~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass
	+ ~Class("C0Drake",THIEF_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~你现在做了游荡者，感觉怎么样？~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass2
	+ ~Class("C0Drake",RANGER_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~你现在当上游侠，感觉怎么样？~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass3
	+ ~Class("C0Drake",MAGE_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~你现在成了法师，感觉怎么样？~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass4
	+ ~InParty("Eldoth") GlobalLT("C0DrakeTalk","GLOBAL",8) Global("C0DrakeHatesEldoth","GLOBAL",0)~ + ~我注意到你跟埃尔多斯合不来。~ DO ~SetGlobal("C0DrakeHatesEldoth","GLOBAL",1)~ + eldoth
	+ ~InParty("Eldoth") !InParty("Garrick") GlobalGT("C0DrakeTalk","GLOBAL",7)
	OR(2) Global("C0DrakeHatesEldoth","GLOBAL",0) Global("C0DrakeHatesEldoth","GLOBAL",1)~ + ~你好像对埃尔多斯怀恨在心。你不喜欢吟游诗人？~ DO ~SetGlobal("C0DrakeHatesEldoth","GLOBAL",2)~ + eldoth2
	+ ~InParty("Eldoth") InParty("Garrick") GlobalGT("C0DrakeTalk","GLOBAL",7)
	OR(2) Global("C0DrakeHatesEldoth","GLOBAL",0) Global("C0DrakeHatesEldoth","GLOBAL",1)~ + ~你好像对埃尔多斯怀恨在心。你不喜欢吟游诗人？~ DO ~SetGlobal("C0DrakeHatesEldoth","GLOBAL",2)~ + eldoth2.1
	+ ~GlobalGT("C0DrakeStoneheart","GLOBAL",0) GlobalLT("C0DrakeStoneheart","GLOBAL",5) Global("C0DrakeStoneheartPID","GLOBAL",0)~ + ~你跟石心之间到底怎么回事？~ DO ~SetGlobal("C0DrakeStoneheartPID","GLOBAL",1)~ + stoneheart
	+ ~Global("C0DrakeStoneheart","GLOBAL",5) Global("C0DrakeStoneheartPID2","GLOBAL",0)~ + ~你跟石心之间到底怎么回事？~ DO ~SetGlobal("C0DrakeStoneheartPID2","GLOBAL",1)~ + stoneheart2
	+ ~Global("C0DrakeStoneheartPID2","GLOBAL",1) Global("C0DrakeInterest","GLOBAL",1) Global("C0DrakeMatch","GLOBAL",1)~ + ~既然你已经放下石心了……你觉得你准备好找别人了吗？比如说，我？~ DO ~SetGlobal("C0DrakeInterest","GLOBAL",2)~ + moveon
	+ ~!Global("C0DrakeTalkStopped","GLOBAL",1)~ + ~赶路的时候我希望你少说点话。~ + pausedialog
	+ ~Global("C0DrakeTalkStopped","GLOBAL",1)~ + ~你要还想跟我说话，我不介意。~ + startdialog
	++ ~你嗓子出毛病了？~ + stringfix	
	++ ~眼下没有。~ EXIT
END

IF ~~ a1
 SAY ~我也许有点上头，可我还撑得住。~
IF ~~ EXIT
END

IF ~~ a2
 SAY ~好得很，好得很。我做过什么让你以为不是这样？~
IF ~~ EXIT
END

IF ~~ a3
 SAY ~肚子里灌满酒我会更高兴，可我们总不能想什么有什么。~
IF ~~ EXIT
END

IF ~~ a4
 SAY ~你是想让我也回你一句？抱歉要让你失望了。~
IF ~~ EXIT
END

IF ~~ b1
 SAY ~我好过些时候。~
IF ~~ EXIT
END

IF ~~ b2
 SAY ~怎么……你这么关心，我受宠若惊，<CHARNAME>。其实，你也许没注意，我是真受伤了。~
IF ~~ EXIT
END

IF ~~ b3
 SAY ~哦，好极了。那些血迹肯定衬出我内在的美。~
IF ~~ EXIT
END

IF ~~ b4
 SAY ~我法术用完了吗？因为我敢发誓我在流血。或者醉得不成样子。不管哪样，都真麻烦。~
IF ~~ EXIT
END

IF ~~ c1
 SAY ~哦，简直完美。我说话这会儿肯定不是在从肚子上往外流血。我也绝对不需要立刻救治，谢谢。你们继续，继续。~
IF ~~ EXIT
END

IF ~~ c2
 SAY ~这也许会让你挺吃惊，可……我受伤了。事实上，还伤得不轻。我看我们哪个能处理一下？~
IF ~~ EXIT
END

IF ~~ drink1
 SAY ~我一直都这样，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ drink2
 SAY ~干嘛只喝一杯？把烦心事放下，我们喝到天翻地覆。~
IF ~~ EXIT
END

IF ~~ drink3
 SAY ~我很想，可上回醉到烂泥里留下的偏头痛还没走干净。算了。~
IF ~~ EXIT
END

IF ~~ drink4
 SAY ~你要有，就来一杯。不过要烈的。~
IF ~~ EXIT
END

IF ~~ d1
 SAY ~就你我之间说？我可从没想过会有这种事。平常都是我先动手，看对方是晕过去还是扇我一巴掌。~
IF ~Global("C0DrakeMatch","GLOBAL",1) Gender(Player1,MALE)~ + d1.1
IF ~Global("C0DrakeMatch","GLOBAL",1) Gender(Player1,FEMALE)~ + d1.2
IF ~!Global("C0DrakeMatch","GLOBAL",1)~ + d1.3
END

IF ~~ d1.1
 SAY ~自我哥哥战死，我就是考尔菲尔德家的继承人。我有责任生下子嗣延续血脉，哪怕这念头让我恼火，我也觉得自己有义务担起来。不过，要是我能说了算……~
IF ~~ + d1.2
END

IF ~~ d1.2
 SAY ~你也不是那么没吸引力，<CHARNAME>，我承认。可我们差着几岁，而且我打赌你对这一切都还生涩。给点时间，再看你还有没有兴趣。我不打算短期内死掉。~
IF ~~ EXIT
END

IF ~~ d1.3
 SAY ~不，我看不会。别往心里去，<CHARNAME>，可不管什么缘故，我怕我看不到那种可能。~
IF ~~ EXIT
END

IF ~~ e1
 SAY ~我提过吗？你一定误会了。我的情意理应留给更美的性别，你现在想必也看出来了。~
 = ~……正常情形下我会这么说。可既然我在这穷乡僻壤，离任何真会在乎的人的耳朵都远……嗯，我觉得让你自己去琢磨更有意思。~
IF ~~ EXIT
END

IF ~~ noble
 SAY ~*哼* 你要听官面上的答案，还是背后有点真话的那个？~
 = ~论身份，我家跟安姆的小贵族站同一块地，这没错。倒不是说真有一滴贵族血的人会承认，哪怕你把他绑起来、拿刀架在脖子上。~
 = ~通常，一个人是在骑士团受任时才入贵族阶层。可我家反过来。我一位考尔菲尔德姓氏的先祖，托姆的信徒，曾在战时救过一位安姆统治阶层的成员。这是我父亲爱一遍遍讲给我们听的故事。~
 = ~因他的英勇，他被收进光辉之心，家族也被抬为贵族。当然，那些“真”贵族恨这个。我们是平民，我们的血统算是“脏的”。我看这社会地位的抬升，对我们害多于利。~
 = ~倒不是说这些年我们没习惯。如今我家几乎人人都以某种方式跟骑士团有关。有些人比另一些人更喜欢。~
IF ~~ EXIT
END

IF ~~ caulfield
 SAY ~你对我们一无所知，我倒不吃惊。哪怕在安姆，一提到我们，贵族们都会翘起鼻子、闭上嘴。在这外头，我看我们压根没人知道。~
 = ~你大概想知道我最亲的家人。嗯，我是杜兰德·考尔菲尔德教长与卡罗琳夫人——出自某个泰瑟尔贵族家之类——的次子。~
 = ~我有……曾有一个哥哥，加布里尔，他抗击赛西利斯军，光荣战死。脸埋土里、屁股朝天还谈什么光荣，我不知道，可我父亲就要你信这个。自他……不幸去世，我如今是家产的继承人，也担着那份责任。~
 = ~还有我弟弟托马斯。他还小，不能加入骑士团，可他急得不行。父亲无疑往他脑袋里灌满了关于骑士理想的各种胡话。可他是好孩子。他会走得远——要是他活下来。~
 = ~最后，我最小的妹妹克劳迪娅。你要问我最想谁，那就是她。不太能打，可画得一手好画。要是我能说了算，她压根不该碰家里这摊事，可那不由我定……至少现在还不由我。~
 = ~关于我家，我能说的就这些了。你要想知道更多，得自己去见他们。我在这儿跟你讲我这满肚子偏见，对他们不公道。~
IF ~~ EXIT
END

IF ~~ parents
 SAY ~他们？要我跟你说我父亲有多让我头疼吗？~
 + ~Global("C0DrakeMatch","GLOBAL",1)~ + ~我盼着哪天能见见他们。你知道，留个好印象。~ + parents1
 ++ ~你为什么这么记恨他？~ + parents2
 ++ ~你对你母亲好像没这问题。~ + parents3
END

IF ~~ parents0
 SAY ~嘿，你可听不到我抱怨。~
IF ~~ EXIT
END

IF ~~ parents1
 SAY ~哈！你是不是有点想得太靠前了，<CHARNAME>？还留个好印象。他们单是我一个都勉强忍，你再想想要是我把你也带回家。父亲当场就得炸。~
 ++ ~你对他有意见？~ + parents2
 ++ ~你母亲呢？~ + parents3
END

IF ~~ parents2
 SAY ~嗯……那就说得太过了。要你担心的是这个，我们还能同处一室。这……得你处在我位置才明白。~
 = ~考尔菲尔德家本是平民。哪怕我们入小贵族已经几代，我们有些人还是搞不清……“责任”这概念。~
 = ~我兄长加布里尔是个榜样，父亲满口夸他。他活着时，我还有几分自由去追自己的兴趣。可他死后……~
 = ~这么说吧，我最后成了领家的下一任继承人，我们俩都不大高兴。我被从军队抽出来，送回提尔教会读书，然后短短几年间被任为光辉之心骑士团的侍从。~
 = ~父亲要是多点耐心，我也许更容易接受。可事情那样发生，让我相当火大。前一刻我还是自由人，转眼加布里尔所有的担子都成了我的问题。这几年我们好些了，可彼此之间还是紧张。~
 ++ ~可你总该看出这有可能发生吧？~ + parents4
 ++ ~你母亲呢？你也跟她一样疏远？~ + parents5
 ++ ~我听够了。走吧。~ + parents0
END

IF ~~ parents3
 SAY ~啊，亲爱的母亲。她虽尽量不表现出来，可我知道她的心愿跟父亲一样。不过这事我原谅她了。~
 = ~加布里尔之死重重打击了我们所有人，可对她，那简直是折磨。哪怕我们失去了那么多，她仍把我的志向看得要紧，这让我感激她。~
 = ~要是父亲也能这么看就好了……可没什么能十全十美，你不觉得吗，<CHARNAME>？~
 ++ ~你就这么恨你父亲？~ + parents2
 ++ ~我听够了。走吧。~ + parents0
END

IF ~~ parents4
 SAY ~哦，当然，我某处知道那有可能。可加布里尔太……出众了。史上最年轻之一受封骑士，战时统率自己的一支队伍——我还自豪地在他手下效力，我得补一句——几乎肯定要接父亲的位置当教长、领家。~
 = ~我压根没动过当继承人的念头，因为拿他跟我比，嗯，你甚至看不出我们是亲戚，你知道吧？~
 ++ ~你反对当继承人，不是因为不想，而是因为你认为自己做不到。~ + parents6
 ++ ~你不是还有个弟弟？为什么继承人非得是你？~ + parents7
 ++ ~我听够了。走吧。~ + parents0
END

IF ~~ parents5
 SAY ~啊，亲爱的母亲。她虽尽量不表现出来，可我知道她的心愿跟父亲一样。不过这事我原谅她了。~
 = ~加布里尔之死重重打击了我们所有人，可对她，那简直是折磨。哪怕我们失去了那么多，她仍把我的志向看得要紧，这让我感激她。~
 = ~要是父亲也能这么看就好了……可没什么能十全十美，你不觉得吗，<CHARNAME>？~
 ++ ~可你总该看出这有可能发生吧？~ + parents4
 ++ ~我听够了。走吧。~ + parents0
END
 
IF ~~ parents6
 SAY ~嘿，我从没这么说。你见我别的什么事上怀疑过自己吗？不是那个，是……~
IF ~~ + parents8
END

IF ~~ parents7
 SAY ~托马斯？*哼* 这小子还得长大不少。这点父亲跟我倒能一致。~
 = ~要有可能，我宁愿让克劳迪娅接手……她也许更小，可她聪明得很。父亲也没老古板到没想过这主意，可……~
IF ~~ + parents8
END

IF ~~ parents8
 SAY ~提尔的屁股，我在发牢骚了。别理我刚才说的，<CHARNAME>，我不该自以为清楚我父亲怎么想。我说的没一句有半点事实，全是我这股怨气在说话。~
 ++ ~我还是愿意听。这些话你早该倒出来了。~ + parents9
 ++ ~嗯，你至少有这点自知之明承认，我倒意外。~ + parents10
END

IF ~~ parents9
 SAY ~也许我确实倒了。~
IF ~~ + parents11
END

IF ~~ parents10
 SAY ~看吧？我浑身是惊喜，<CHARNAME>。这是我魅力的一部分。~
IF ~~ + parents11
END

IF ~~ parents11
 SAY ~谢你听我说，朋友。长远看这些当然都没意义，可偶尔全倒出来，感觉挺好。就像站了半天岗之后撒一泡尿。~
 ++ ~随时。~ + parents12
 ++ ~你非得打这个比方？~ + parents13
END

IF ~~ parents12
 SAY ~以后我要再泄火，一定来找你。还有……谢了，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ parents13
 SAY ~不然我还算我吗？我看你就不会这么喜欢我了。~
IF ~~ + parents12
END

IF ~~ siblings
 SAY ~加布里尔比我大三岁。我敬仰他，哪怕我没学他。不像父亲，我看他鼓励我走不一样的路，好让我不被他遮住。~
 = ~托马斯跟我都欠他很多。真可惜他死在克劳迪娅长大到真认识他之前。~
 ++ ~讲讲托马斯。~ + tomas
 ++ ~讲讲克劳迪娅。~ + claudia
END

IF ~~ siblings1
 SAY ~当然，当然。一提这些，我反倒更想他们了。~
IF ~~ EXIT
END

IF ~~ tomas
 SAY ~他是好孩子。对这世道还太天真，以为我们面对的所有问题都能用一把亮闪闪的剑解决。他等不及要加入骑士团，跟加布里尔的脚步走。~
 = ~倒不是怪他。对大多数人，那确实是荣耀。连我……我要真对自己站的位置没半点好感，早就走了，父亲爱怎么着怎么着。我只是怕他照着我们那失去的哥哥一比一学……一直学进坟里。~
 ++ ~克劳迪娅呢？~ + claudia
 ++ ~我想听的就这些。~ + siblings1
END

IF ~~ claudia
 SAY ~她是画家，她也该当画家。可她偏要掺和家里的营生，只为跟我们看齐，哪怕压根没必要。~
 = ~这已经够糟，父亲还鼓励。考尔菲尔德家自抬升以来，家里还没出过女骑士。真可惜……克劳迪娅是有天赋、聪明又明理的姑娘。我不想看这才分被糟蹋。~
 ++ ~她只是想跟着哥哥们的脚步走。~ + claudia1
 ++ ~托马斯呢？~ + tomas
 ++ ~我想听的就这些。~ + siblings1
END

IF ~~ claudia1
 SAY ~这才是最糟的。加布里尔倒在兽人入侵中时，她还小，不明白那是什么可怕的年月。她只知道父亲最看重的长子光荣战死。~
 = ~她对我们——托马斯和我——说了这些话，我不骗你，这话是从一个五岁孩子嘴里出来的：“我想保护你们，我不想你们两个死掉。”这些话把我吓住了，<CHARNAME>，你根本想不到吓得多厉害。~
 = ~从那以后，我竭尽全力鼓励她追艺术的兴趣、远离骑士团。五年多过去，什么都没用。~
 = ~唉……光想这个我就难受。我们这就打住，<CHARNAME>，你不介意的话。~
IF ~~ EXIT
END

IF ~~ attitude
 SAY ~你以为我为什么在这儿？这就是所谓的“调去北方”。换句话说，上头某位——无疑是我父亲——下令我来这块可爱的地狱收拾别人的烂摊子，就为不必应付我。~
 = ~我要换了别人，他们无疑会革我的职。骑士团里革职很少见，因为只有违了规矩的人才想走……而那种人立刻处决。头放砧板上，咔嚓，收拾干净，这事以后别提。~
 = ~上头几乎从不因为举止不端就直接把人踢出去……可也有。不幸的是，我父亲是阿斯卡特拉骑士团三位教长之一，他宁愿我加入影贼，也不肯让我自愿离开。~
 = ~好笑的是，我认识好几个再也受不了骑士团的要求、想走的人……可又怕一开口就被砍头。而我呢，被拴在这位子上，就算想走也走不了。~
++ ~你想走吗？~ + attitude2
++ ~我想知道的就是这个。~ EXIT
END
 
IF ~~ attitude2
 SAY ~也许。我没多想过，毕竟在骑士团里也不全是坏处。再说，他们派我来干这差事时，我可没抱怨。~
 = ~我在这外头想喝多少喝多少，还能完全自在地猎杀费伦的邪恶渣滓。这也许是比喻意义上的地狱，可它真是个舒服的地狱。~
IF ~~ EXIT
END

IF ~~ squire
 SAY ~啊……不，不完全是。我是说，我多年前就不干给某个骑士擦甲、喂他那匹超重马的事了。我……嗯，我知道的词里真没哪个能形容。在骑士团里，我算是……特例。~
IF ~InParty("Ajantis")~ + squire1
IF ~!InParty("Ajantis")~ + squire2
END

IF ~~ squire1
 SAY ~我的处境跟我们那位朋友阿詹提斯差不多。只是他归法尔坎爵士管，我直接归教长杜兰德——我父亲，骑士团首脑之一——本人管。这倒给了父子俩培养感情的好机会。当然，除了争吵我们也没干过别的。~
IF ~~ + squire3
END

IF ~~ squire2
 SAY ~辅助成员大多归一位老骑士管，可我直接归教长杜兰德——我父亲，骑士团首脑之一——本人管。这倒给了父子俩培养感情的好机会。当然，除了争吵我们也没干过别的。~
IF ~~ + squire3
END

IF ~~ squire3
 SAY ~不过，这意味着我比寻常侍从多些权利，也不一定非得完成骑士试炼。当然，父亲还是要求我去做，可我很难觉得自己是当骑士的料。~
 = ~议会的别的老家伙当然恨我这个位子，因为它挖空了骑士团的整个结构。全靠他们敬重我父亲，我才留在原位——这可不是我的选择，我得补一句。他们绝不会说出来，可我确信他们盼着哪天我干出连我父亲都护不住的渎神事。~
 = ~也许我最后真会那么干，就想看看他们脸上的表情。哪怕这必然导致我被家族放逐，也许都值。~
IF ~~ EXIT
END

IF ~~ pausedialog
 SAY ~哎呀，你伤我心了，<CHARNAME>。可你这么说那就这样。~
IF ~~ DO ~SetGlobal("C0DrakeTalkStopped","GLOBAL",1)~ EXIT
END

IF ~~ startdialog
 SAY ~开窍了，是吧？算你走运，我正大方。~
IF ~~ DO ~SetGlobal("C0DrakeTalkStopped","GLOBAL",0)~ EXIT
END

IF ~~ dualclass
 SAY ~好，很好。让我想起军中的好日子。倒也没多少好日子，别管老兵们怎么说。血倒是多，碎头骨多，垮掉的士气更多。~
 = ~不过把锤子挥得更有效，感觉不坏。我本来就没治伤的天分。这更适合我的本事。~
IF ~~ EXIT
END

IF ~~ dualclass2
 SAY ~你知道，这感觉不坏。知道游荡者怎么想、怎么干，许多事忽然比以前明白多了。~
 = ~骑士团那些老家伙要是知道我在干什么，准要发作，可我还在干我的活，只是比从前更有效率。~
IF ~~ EXIT
END

IF ~~ dualclass3
 SAY ~要不是你让我啃那些训练手册、把这些全给我灌进去，我看不会这样。~
 = ~我听说考尔菲尔德家有几个远亲当过游侠。我外公那边曾在安姆军里做斥候。我看他要还活着，会赞成。~
IF ~~ EXIT
END

IF ~~ dualclass4
 SAY ~我，法师？我，骑士世家继承人，丢下铠甲，换一包书卷和卷轴，跟老家那些兜帽法师一样。哈！我承认，我完全没料到。~
 = ~这次不寻常的转变，骑士团无疑会有几句讲究话。可我确信我总能应付。这期间，我们就看看我会不会在回家之前把大家点着，嗯？~
IF ~~ EXIT
END

IF ~~ stoneheart
 SAY ~*哼* 你该拿同样的问题去问他。因为我看你要那么问，会得到两个完全不同的答案。~
 = ~这么说吧，我们认识很久了。我非常信他——对我这很少见——结果他一直瞒着我。这种事不是说过就忘的。~
IF ~~ EXIT
END

IF ~~ stoneheart2
 SAY ~万斯曾是……一位密友。也许不止是朋友，他是我能真正、完全信任和倾诉的人。你看，我们想法相近，都想按自己认为对的方式行善。~
 = ~当然，后来才知道他以前是影贼，只是为了保命才倒戈。至少我当初这么信。也许真相没那么简单。也许他真想改过自新。~
 ++ ~他要是真改了，你会原谅他吗？~ + stoneheart2.1
 + ~PartyHasItem("c0dlock")~ + ~你们俩是情人吗？~ + stoneheart2.2
 + ~!PartyHasItem("c0dlock")~ + ~你们俩是情人吗？~ + stoneheart2.3
 ++ ~我明白了。我想知道的就是这些。~ EXIT
END

IF ~~ stoneheart2.1
 SAY ~我不知道。也许吧。他得好好弥补，我才会考虑。~
 = ~眼下也不相干。再见面时，也许我会更宽容些。~
 + ~PartyHasItem("c0dlock")~ + ~看得出你还在乎他。何必藏着？~ + stoneheart2.2
 + ~!PartyHasItem("c0dlock")~ + ~看得出你还在乎他。何必藏着？~ + stoneheart2.3
 ++ ~我明白了。我想知道的就是这些。~ EXIT
END

IF ~~ stoneheart2.2
 SAY ~我看既然他把我那吊坠给了你，还什么都说了，藏着也没意义。~
IF ~~ + stoneheart2.3
END

IF ~~ stoneheart2.3
 SAY ~*叹息* 是，万斯跟我有过……一些时刻。可我们都知道不会有什么结果。毕竟，他不只是前罪犯，我肩上还有延续考尔菲尔德姓氏的期望。~
 = ~我不能说我喜欢那些期望，可往往就是如此。所以我把家传宝物给了他，只为让他知道我还惦记。你知道，他把它还回来，多半是希望我们都往前走。~
 = ~我倒不反对。原不原谅他是另一回事，可我们曾经的那些没有未来。我们早就接受了。我只是庆幸我们中有一个勇敢到肯承认。~
 = ~唉，光想这个就够让我想淹死在麦酒河里。我们继续走。求你。~
IF ~~ EXIT
END

IF ~~ eldoth
 SAY ~这是他跟我之间的事，<CHARNAME>，没必要为这个上火。~
IF ~~ EXIT
END

IF ~~ eldoth2
 SAY ~不是所有吟游诗人。只是他一个。~
 ++ ~那到底为什么？~ + eldoth3
 ++ ~你有理由吗？~ + eldoth3
END

IF ~~ eldoth2.1
 SAY ~不是所有吟游诗人。比方加里克就是个不错的小子，哪怕他糊涂。只是那条黏滑的虫子。~
 ++ ~那到底为什么？~ + eldoth3
 ++ ~你有理由吗？~ + eldoth3
END

IF ~~ eldoth3
 SAY ~恨埃尔多斯还需要理由？我确信你要是牵着他游街，人们会付钱让你把他那副得意脸打掉。狠狠地打。~
 = ~不过你大概想听更具体的理由。*叹息* 是……我对他有私怨。可我公道些说，不全是他的错。只是大部分是。~
 = ~我给你讲个我认识的女人的故事：塞奥拉·巴尔蒙特女士，一位可爱的夫人，直言不讳，受平民爱戴。她是少数肯为非特权出身者说话的人之一。~
 = ~反对她的蓝血渣滓不敢在公开场合动手，因为她太得人心。于是他们雇了个乐师——跟咱们这位“朋友”埃尔多斯差不多——散布关于她私生活的恶心诽谤，在当地败坏她的名声。~
 = ~巴尔蒙特女士的丈夫原来就是那些跟她作对的混蛋之一，又在自己的朋友圈里进一步羞辱她，于是人们立刻吞下了那些谎话。她受不了这份凌辱，不久就自尽了。这对贵族阶层是惨痛的损失，虽说那阶层其余净是肥蠢货和议会马屁精。~
 ++ ~你就为这个才恨埃尔多斯？~ + eldoth4
END

IF ~~ eldoth4
 SAY ~嗯……还有。我提过我最小的妹妹克劳迪娅是艺术赞助人吗？她耍乐器就像我耍锤子。你没见过那么小年纪就这么有才的艺术家。~
 = ~我听说她去过那儿，*听*了那渣滓唱那些毁了巴尔蒙特女士的鬼话，然后回来全告诉了我……嗯，这么说吧，全靠法律拦着我，我才没去把那恶魔的脑袋砸扁——他那些话差点毒了我亲爱的妹妹的心。~
 = ~我非常敬重艺术。我承认那需要的耐心和才华胜过我，我也全心支持我妹妹的兴趣。正因如此，我才对那些拿才华这样害人的人只有鄙夷。也许你现在能明白我为什么这么恨埃尔多斯了。~
IF ~~ EXIT
END

IF ~~ moveon
 SAY ~我不能说我没想过。可我看你不只是随便问问，对吧？毕竟你好像对我的私事格外上心。~
IF ~Gender(Player1,MALE)~ + moveon1
IF ~Gender(Player1,FEMALE)~ + moveon2
END

IF ~~ moveon1
 SAY ~我说过。我有责任，哪怕我恨它们，我也怀疑我要为自己的私心抛下一切，提尔或我家人会原谅我。不过……~
IF ~~ + moveon2
END

IF ~~ moveon2
 SAY ~我跟万斯在一起的日子……很快活。我不常有说这种话的机会。虽然我大多数话都是闹着玩，可你……确实有种吸引人的地方，我不撒谎。~
 = ~这么着，<CHARNAME>，等剑湾这边的事不那么一团糟了，我们再谈……眼下，我看更要紧的是把感情放一边，做该做的事。~
IF ~~ EXIT
END 

IF ~~ stringfix
 SAY ~嗯……你知道，你也许说得对。等我一下……*咳*~
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("C0DRESET")~ EXIT 
END
END