// First meeting

BEGIN C0DRAKE

IF ~Global("C0DrakeBG1Intro","GLOBAL",0)~ THEN BEGIN j0
 SAY ~嘿，那边！你这张脸挺新，我好像没在这儿见过。新来贝尔葛斯特的，是吧？~ [C0BLANK]
 + ~Kit(Player1,OHTYR)~ + ~我看到了同门提尔信徒的徽记。幸会。~ + j0.tyr
 + ~!Gender(Player1,FEMALE)~ + ~是，先生。~ DO ~SetGlobal("C0DrakeBG1Intro","GLOBAL",1)~ + j0.1a
 + ~Gender(Player1,FEMALE)~ + ~是，先生。~ DO ~SetGlobal("C0DrakeBG1Intro","GLOBAL",1)~ + j0.1b
 ++ ~你看起来也不像本地人。~ DO ~SetGlobal("C0DrakeBG1Intro","GLOBAL",1)~ + j0.2
 ++ ~这跟你有什么关系？~ DO ~SetGlobal("C0DrakeBG1Intro","GLOBAL",1)~ + j0.3
 ++ ~抱歉，我现在没空说话。~ + j0.x
END

IF ~~ j0.x
 SAY ~你的损失。有兴趣的话，再来一趟。~
IF ~~ EXIT
END

IF ~~ j0.tyr
 SAY ~好了好了，这儿别来这套。我们又不是站在天界山前，也不是在正义之殿里，对吧？~
IF ~!Gender(Player1,FEMALE)~ + j0.1a
IF ~Gender(Player1,FEMALE)~ + j0.1b
END

IF ~~ j0.1a
 SAY ~来，朋友，我请你喝一杯。像你这样的旅人，肯定比这儿任何人都更有意思。提尔知道，我快十天没好伴了。~
IF ~~ + j0.4
END

IF ~~ j0.1b
 SAY ~来，我请你喝一杯。像你这样漂亮的小姐，肯定比这儿任何人都更有意思。提尔知道，我快十天没好伴了。~
IF ~~ + j0.4
END

IF ~~ j0.2
 SAY ~不，我不是本地人。你看出来了？不错。~
IF ~Gender(Player1,MALE)~ + j0.1a
IF ~Gender(Player1,FEMALE)~ + j0.1b
END

IF ~~ j0.3
 SAY ~一点关系也没有。那这又跟什么有关系呢？跟陌生人聊天，还能出什么事？~
IF ~Gender(Player1,MALE)~ + j0.1a
IF ~Gender(Player1,FEMALE)~ + j0.1b
END

IF ~~ j0.4
 SAY ~啊，可我确实该记起我的礼数……我是说，记起我把它搁哪儿了。在下德雷克·考尔菲尔德，提尔的牧师，光辉之心——至圣某某骑士团成员，那些废话你大概也不想听，很高兴见到你之类之类。~
 + ~!IsValidForPartyDialog("Ajantis")~ + ~至圣什么团来着？~ + j0.5a
 + ~IsValidForPartyDialog("Ajantis")~ + ~至圣什么团来着？~ EXTERN %AJANTIS_JOINED% j0.5b
 + ~Gender(Player1,MALE)~ + ~我是<CHARNAME>。~ + j0.6a
 + ~Gender(Player1,FEMALE)~ + ~我是<CHARNAME>。~ + j0.6b
 + ~!IsValidForPartyDialog("Ajantis")~ + ~你可不怎么像提尔的牧师。~ + j0.7a
 + ~IsValidForPartyDialog("Ajantis")~ + ~你可不怎么像提尔的牧师。~ EXTERN %AJANTIS_JOINED% j0.5b
END

IF ~~ j0.5a
 SAY ~光辉之心。更确切地说，我是辅助部队的新兵，换句话说，还够不上骑士。所以那声“先生”你可以省了，如果你本来打算这么叫。~
IF ~~ + j0.5c
END

IF ~~ j0.5c
 SAY ~可我还不知道你的名字呢，朋友。也许你愿意赏脸告知，嗯？~
 + ~Gender(Player1,MALE)~ + ~<CHARNAME>。~ + j0.6a
 + ~Gender(Player1,FEMALE)~ + ~<CHARNAME>。~ + j0.6b
 ++ ~还是算了。再会。~ + j0.8
END

IF ~~ j0.6a
 SAY ~很高兴认识你，<CHARNAME>。客套话说完了，我猜你不介意听一个提议？这事或许你会感兴趣。~
 ++ ~有金子吗？~ DO ~SetGlobal("C0DrakeOffer","GLOBAL",1)~ + j0.9
 ++ ~我在听。~ DO ~SetGlobal("C0DrakeOffer","GLOBAL",1)~ + j0.10
 ++ ~不用了，谢了。~ + j0.8
END

IF ~~ j0.6b
 SAY ~<CHARNAME>？好名字，配你这样迷人的女子正合适。现在想想，我早该先问你的名字。还请原谅我醉得不像样。~
IF ~~ + j0.6a
END

IF ~~ j0.7a
 SAY ~你说对了。要是你在我灌下几桶麦酒之前来找我，嗯……其实我照样是这样。哈！我在骗谁呢？~
IF ~~ + j0.5c
END

IF ~~ j0.8
 SAY ~真可惜。走的时候小心门夹着你。~
IF ~~ EXIT
END

IF ~~ j0.9
 SAY ~哈！是，最重要的那个问题。有，事实上，有。我猜这就是说你愿意听我说完了？~
IF ~~ + j0.10
END

IF ~~ j0.10
 SAY ~你也许知道，也许不知道，眼下这座小小的贝尔葛斯特镇有点……麻烦。一个叫巴希勒斯的塞瑞克恶徒在祸害当地人，有人说他绑了人去，还把他们做成恶心的不死生物。~
 = ~到今天为止，我追这混蛋快两周了，一点线索也没摸着。可我听说的情形是，他正拿受害者的尸首拼一支军队……而且规模不小。~
 = ~这镇的镇长，黎明导师凯尔达斯·奥姆利尔——我得说，是个好人——跟我一样巴不得这渣滓死……差不多跟我一样，他出重赏换他死的凭证……足足五千金币，事实上。~
 = ~那么，因为我圣明又大方，我给你的提议是这样——我们一起去找到这个塞瑞克信徒，除掉他，金子全归你。换句话说，事成之后，你能得一笔小财，能享受把这祸害从费伦地面上抹去的满足，而最重要的是，这段时间里还有我这般高贵人物作伴的经历。哦，还有，为表诚意，只要你应下，我自掏腰包再加一百金。这么好的买卖，别处找不着。你说呢，嗯？~
 + ~Global("BassilusDead","GLOBAL",2)~ + ~其实我已经杀了他，还拿他的圣徽换了赏金。~ DO ~SetGlobal("C0DrakeOffer","GLOBAL",2)~ + j0.11
 + ~!Global("BassilusDead","GLOBAL",2) Dead("bassil") PartyHasItem("misc04")~ + ~其实我已经杀了他。这是他的圣徽。~ DO ~SetGlobal("C0DrakeOffer","GLOBAL",2)~ + j0.11
 + ~!Global("BassilusDead","GLOBAL",2) Dead("bassil") !PartyHasItem("misc04")~ + ~其实我已经杀了他。~ + j0.12
 ++ ~你好像把自己看得挺高。那你为什么需要我？~ + j0.13
 + ~!Global("BassilusDead","GLOBAL",2) !Dead("bassil")~ + ~我同意。我们一起去找到这个凶手。~ + j0.14
 ++ ~我看不必了。再见。~ + j0.15
END

IF ~~ j0.11
 SAY ~是这样吗？那真是可惜，我没能亲手把他按下去。他确实是个恶棍，虽说我从没见过他。~
 = ~不过结局好就算好。你除掉巴希勒斯，是做了件好事。你知道……你要是在剑湾还想找更凶残、心更黑的渣滓，我或许对你有用。~
 = ~眼下这铁器危机还没过去，我总不能在安姆老家抬着头回去，却一点力也没出。你要是愿意，我愿意献上我的锤子和神术。就当是我为你的作为给自己的酬劳。怎么样？~
 ++ ~我很乐意有你相助。~ + j0.16
 ++ ~不用了，谢了。~ + j0.17
END

IF ~~ j0.12
 SAY ~是这样吗？那你有凭证吗？也许有件只有他才有的东西，比如他的塞瑞克圣徽？~
 = ~没有？我还以为能杀掉巴希勒斯的人，总会想到这么简单的事。也罢，我敢说它还躺在哪片泥地里。既然我正大方，不如我陪你走一趟去捡，嗯？~
 ++ ~当然。~ + j0.12a
 ++ ~我不需要你帮忙。~ + j0.12b
END

IF ~~ j0.12a
 SAY ~那就走吧。总不能让哪个捡破烂的先把属于你的赏金捡走，是吧？~
IF ~~ DO ~SetGlobal("C0DrakeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ j0.12b
 SAY ~对，对。这么简单的事，用不着我牵你的手。那就快走吧，行吗？~
IF ~~ EXIT
END

IF ~~ j0.13
 SAY ~瞧，你倒是看出来了。没错，凭我自己的力量，我大概也能除掉巴希勒斯。可既然我对金子没兴趣，又何必冒这种险，不如借几双能干的手来使？~
 = ~当然，我更愿意身边有几个老练的帮手，可在这镇上，看样子也找不到多少。尤其燃焰铁拳几乎都不管这镇子的死活了。~
 + ~Global("BassilusDead","GLOBAL",2)~ + ~其实我已经杀了他，还拿他的圣徽换了赏金。~ DO ~SetGlobal("C0DrakeOffer","GLOBAL",2)~ + j0.11
 + ~!Global("BassilusDead","GLOBAL",2) Dead("bassil") PartyHasItem("misc04")~ + ~其实我已经杀了他。这是他的圣徽。~ DO ~SetGlobal("C0DrakeOffer","GLOBAL",2)~ + j0.11
 + ~!Global("BassilusDead","GLOBAL",2) Dead("bassil") !PartyHasItem("misc04")~ + ~其实我已经杀了他。~ + j0.12
 + ~!Global("BassilusDead","GLOBAL",2) !Dead("bassil")~ + ~好。我接受你的提议。~ + j0.14
 ++ ~我看不必。找别人吧。~ + j0.15
END

IF ~~ j0.14
 SAY ~啊，好极了，真是好极了！我还以为是我多喝了一杯看花了眼，才见你推门进来。那就别耽搁，去找那疯了的巴希勒斯，让他见识见识真正的正义，嗯？~
IF ~~ DO ~SetGlobal("C0DrakeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ j0.15
 SAY ~真可惜。我还以为金子一定能引你上钩。唉，算了。你要是改主意，我还在，慢慢把清醒和体面都喝掉。~
IF ~~ EXIT
END

IF ~~ j0.16
 SAY ~你该这么想，朋友。你会发现我本事大得很，尤其在我清醒的时候。那就别站在这儿等草长出来了，嗯？~
IF ~~ DO ~SetGlobal("C0DrakeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ j0.17
 SAY ~啊，被拒了！老朋友，我们又见面了。我对爱慕者的拒绝早习惯了，可从一个陌生人嘴里听到，还是伤我的心。那就这样吧。提议仍然有效。~
IF ~~ EXIT
END

CHAIN %AJANTIS_JOINED% j0.5b
~如果可以，<CHARNAME>。这人其实是我的同门之一，虽说我不太愿意把他归作同门。他的……名声先他一步。~
== C0DRAKE ~至少我在骑士团里还有人记得，那我就当这是称赞了。我认得你的徽记，侍从。伊尔瓦斯塔家，是吧？~
== %AJANTIS_JOINED% ~是。能见到你，是……我的荣幸，考尔菲尔德先生。~
EXTERN C0DRAKE j0.5c

// Talked to again, not in party

APPEND C0DRAKE

IF ~Global("C0DrakeBG1Intro","GLOBAL",1)~ THEN BEGIN j1
 SAY ~瞧，这是谁，我最新结交的好朋友。回来找老德雷克了，是吧？我就知道你抗拒不了。~
IF ~Global("C0DrakeOffer","GLOBAL",2)~ + j1.3
IF ~Global("C0DrakeOffer","GLOBAL",1)~ + j1.1
IF ~Global("C0DrakeOffer","GLOBAL",0)~ + j1.2
END

IF ~~ j1.x
 SAY ~如你所愿。也许下次我换个法子，好让你开心一点？呵，只是想想。~
IF ~~ EXIT
END

IF ~~ j1.1
 SAY ~既然你愿意回来，我猜你对我的提议改主意了？~
 + ~Global("BassilusDead","GLOBAL",2)~ + ~巴希勒斯死了。赏金我已从镇长那儿领了。~ + j0.11
 + ~!Global("BassilusDead","GLOBAL",2) Dead("bassil") PartyHasItem("misc04")~ + ~巴希勒斯死了。这是他的圣徽。~ + j0.11
 + ~!Global("BassilusDead","GLOBAL",2) Dead("bassil") !PartyHasItem("misc04")~ + ~巴希勒斯死了。~ + j0.12
 ++ ~你好像把自己看得挺高。那你为什么需要我？~ + j0.13
 + ~!Global("BassilusDead","GLOBAL",2) !Dead("bassil")~ + ~是。加入我，我们一起去找到这个巴希勒斯。~ + j0.14
 ++ ~我看不必了。再见。~ + j0.15
END

IF ~~ j1.2
 SAY ~我猜这回你有兴趣听听我的提议了？来，坐。~
 ++ ~好。~ + j0.10
 ++ ~我看不必。~ + j1.x
END

IF ~~ j1.3
 SAY ~我说过，我为你效力的提议仍然有效。你要是愿意忍受我的机智与魅力，我就听你差遣。~
 ++ ~我很乐意有你相助。~ + j0.16
 ++ ~不用了，谢了。~ + j0.17
END
END