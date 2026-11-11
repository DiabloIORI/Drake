BEGIN C0DRAKEP

IF ~Global("C0DrakeJoined","LOCALS",1)~ p1
 SAY ~怎么啦，这是？你是说不再需要我帮忙了？真是？那好，我正觉得大方，就给你个机会再想想。~ [C0DRAK29]
 	++ ~我说真的。我现在用不着你。~ + p2
 	++ ~好吧，那就跟我一起。~ + p3
	++ ~留在这儿等我。~ + p0
END

IF ~~ p0
 SAY ~啊，就这样？那就如你所命。我在军里候命的日子可不少。~
IF ~~ DO ~SetGlobal("C0DrakeJoined","LOCALS",0)~ EXIT
END

IF ~~ p2
 SAY ~真叫人失望。既如此，你会在友善之臂旅店的麦酒桶里找到我，泡在里面。来打个招呼吧。~
IF ~~ DO ~SetGlobal("C0DrakeJoined","LOCALS",0) EscapeAreaMove("%FriendlyArmInn_L1%",593,530,NW)~ EXIT
END

IF ~~ p3
 SAY ~朋友，你可以用一杯烈酒来谢我这份大方。~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Global("C0DrakeJoined","LOCALS",0)~ p4
 SAY ~瞧，谁爬回来了。莫非你长了些智慧，明白我有多不可或缺了？不过在那之前，这轮我请，<CHARNAME>。来，把脚搁上来，咱们一起喝醉。~ [C0DRAK30]
	++ ~改天吧。现在我们还有地方要去。~ + p5
	++ ~再想想，我这就走了。~ + p6
END

IF ~~ p5
 SAY ~哈！说得好。你又想在路上去找点刺激了？我加入。~
IF ~~ DO ~SetGlobal("C0DrakeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ p6
 SAY ~真可惜。不过你很快就会回来的。~
IF ~~ EXIT
END