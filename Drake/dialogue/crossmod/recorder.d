// Drake-Recorder 1
CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3RecB",CD_STATE_NOTVALID)
Global("C0DrakeX3Rec","LOCALS",0)~ THEN BC0Drake DrakeRecorder1
~我都能感觉到你的目光快把我盔甲盯出洞来了，里本斯。我宁愿听你那甜润的嗓子，也不愿受你这番审视。~
DO ~IncrementGlobal("C0DrakeX3Rec","LOCALS",1)~
== X3RecB ~“里本斯”？我……*清嗓*我道歉。我那么盯着看太失礼了。~
== BC0Drake ~不打紧。不过你有话就说——听人忏悔，我干的就是这行，毕竟。呵。~
== X3RecB ~问题就在这儿。你，呃……你跟我心里那位正统提尔牧师的样子实在不符。~
== BC0Drake ~大概也不符大多数人心里的样子。~
== X3RecB ~我只是从没见过哪个骑士——~
== BC0Drake ~准骑士。而且是相当不情愿的那种。~
== X3RecB ~可……马克·哈蒙爵士一向是米利尔信仰的典范。他会写诗、有君子风度、博览群书。而你……嗯，你……~
== BC0Drake ~……邋遢、随意、还有点太爱喝？~
== X3RecB ~哦不不，我没打算这么说。~
== BC0Drake ~可你就是这么想的。人不是都能塞进别人给他做好的方盒子里，里本斯。~
== X3RecB ~我知道。不过你能不能稍微规矩一点？~
== BC0Drake ~当然不能。那样日子对我而言就太无趣了。~
EXIT 

// Drake-Recorder 2
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3RecB",CD_STATE_NOTVALID)
Global("C0DrakeX3Rec","LOCALS",1)~ THEN X3RecB DrakeRecorder2
~考尔菲尔德家……是安姆的贵族，对吧？我好像从没听过这名字。~
DO ~IncrementGlobal("C0DrakeX3Rec","LOCALS",1)~
== BC0Drake ~你要是听过我才更奇怪。我们没什么领地，也不把手伸进贸易经济里多捞一把。按贵族的标准，我们算无名之辈。~
== X3RecB ~可……你父亲是光辉之心骑士团的教长。你总该有些名声吧。~
== BC0Drake ~是，当然有。除非你是战争迷或对安姆史烂熟于心，不过——啊，我忘了在跟谁说话。也许“红沙之战”能让你想起来。~
== X3RecB ~哦……当然。阿曼德·考尔菲尔德，北境雄狮。真抱歉，德雷克。我到这会儿才把关联想明白。~
== BC0Drake ~是，我猜我比史书里写的矮了几寸，也少了一头金鬃，对吧？~
== X3RecB ~不，我现在找着了，就能看出相像。可既然有这样的家世，你不想承继祖上的荣光吗？~
== BC0Drake ~荣光？哈！里本斯，我祖辈为之征战的国度，一百多年前就不在了。而且不管史书怎么写，战争从来不只是为了道义打的。看看我们活着的这世界——它就少些贪婪、欺诈、腐败了吗？也许沿着老脚印走，不是办法。~
== X3RecB ~你把世界当成它现在的样子，德雷克。我更愿意想它能成为什么样子。~
EXIT 

// Drake-Recorder 3
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3RecB",CD_STATE_NOTVALID)
Global("C0DrakeX3Rec","LOCALS",2)~ THEN X3RecB DrakeRecorder3
~我想向你道歉，德雷克。~
DO ~IncrementGlobal("C0DrakeX3Rec","LOCALS",1)~
== BC0Drake ~是吗？我希望这跟我们之前那番小辩论无关。我没往心里去。~
== X3RecB ~它……嗯，是有关，但不是直接有关。我只是忽然想到，你比我想的更有见识。我不该只看外表就下判断。~
== BC0Drake ~换作我处在你的位置，不会这么快改主意。毕竟我*确实*跟你以为的一样爱喝又邋遢，而且我也没做过什么来证明不是。~
== X3RecB ~可你身上全是意外。我从没想到你读过这么多书。你不只懂历史，连我昨晚那首诗都认出来了。~
== BC0Drake ~你会发现我记歌比记诗容易，里本斯。不过，是，我随手翻书时恰好碰见那篇，真是巧。那么……它是怎么念的来着？~
== X3RecB ~“我如云般独自漫游
飘越溪谷与山丘之上，
忽然望见一片人群，
一簇金黄的水仙；
在湖畔，在树下，
摇曳起舞于微风之中。”~
== BC0Drake ~“如星辰般连绵闪耀
在银河上闪烁，
它们一路延伸无尽头
沿着海湾的边缘：
一瞥便见万朵，
昂首欢快地轻摆。”~
== X3RecB ~“它们身旁的波浪也在舞；它们
却比闪烁的波浪更欢：
诗人怎能不欢喜，
在这样欢愉的友伴里：
我望了又望——却没想到
这景象给了我多少财富。”~
== BC0Drake ~是，这听着耳熟。要是我没记错，下一节该是这样的……~
== BC0Drake ~“因为常常，当我躺在榻上
心神空茫、沉思默想，
它们便闪现在内眼之中
那是独处的至福；
于是我的心充满欢愉，
与水仙一同起舞。”~
== X3RecB ~瞧瞧你！连诗句都能凭记忆背出来。我想我们往后有很多可谈的。~
== BC0Drake ~我？不，里本斯，你要求太高了。不过你要是到了阿斯卡特拉，就来我们庄园坐坐——我妹妹克劳迪娅准会喜欢你。~
EXIT 
