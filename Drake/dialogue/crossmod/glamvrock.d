CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("GV#DAVE",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeGV#DaveBanter1","GLOBAL",0)~ THEN BGV#DAVE DRAKE-DAVE-1
~我得说，德雷克，身为正义的使者，我本以为你杀掉巴希勒斯时会多些顾虑。~
DO ~SetGlobal("C0DrakeGV#DaveBanter1","GLOBAL",1)~
== BC0DRAKE ~那你觉得我凭什么该犹豫着不把那疯狗放倒？渣滓之间的同气连枝吗？~
== BGV#DAVE ~你自己说的。“疯”。那人彻底疯了。他真心相信他造出的那些不死生物是他失散的家人，相信他只是在把他们重新聚起来。走上去处死一个几乎不知自己在做什么的人，这真算正义吗？~
== BC0DRAKE ~他清楚得很。他给自己造的那套幻梦，一碰就碎，清醒也没能拦住他的手。我不会让凶手因为看不见自己的罪，就从提尔掌中滑走。这样的人走在世上的已经够多了。~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("GV#DAVE",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("GV#DAVEPidTyrran","GLOBAL",1)
Global("C0DrakeGV#DaveBanter2","GLOBAL",0)~ THEN BGV#DAVE DRAKE-DAVE-2
~说起来，德雷克。你该不会正好认识一位叫奥斯蒙德的提尔同门吧？大概我这身高，头发像草垛，R音发得有点怪……~
DO ~SetGlobal("C0DrakeGV#DaveBanter2","GLOBAL",1)~
== BC0DRAKE ~格雷科尔特家的？是，我确实记得他。好小子，不过你要是觉得他“跟你差不多高”，那你给自己添了几寸。~
== BGV#DAVE ~那你也知道他家里人。那好。只是我这儿有枚戒指，说不定是他的。~
== BC0DRAKE ~戒指，嗯？~
== BGV#DAVE ~我想是枚图章戒指。银的。大概值不了几个钱，留在我这儿也没用。也许你回安姆的时候，能带给他母亲？~
== BC0DRAKE ~...~
== BC0DRAKE ~奥斯蒙德·格雷科尔特。你知道吗，你这么一提他，我发誓我听说过他为教会出任务时死了。他跟一队审判官一起。好像是在查一处邪神的神庙。~
== BGV#DAVE ~我对提尔的军事行动一无所知。我甚至不明白你提这个做什么。我只是觉得，这枚戒指该留给他母亲。好生保管。~
== BC0DRAKE ~不。不，我想我不会参与这事。不过我有些把东西送到母亲手里的经验，那就让我告诉你该守的规矩。~
== BC0DRAKE ~你不能派别人替你去。你要亲自站在他们家门前，胡子刮干净，衬衫熨平整，报上自己的名字和军衔……不管属于哪个团体……然后就尽管看着他们的眼睛，把实话说出来。~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("GV#FLAR",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeGV#FlaraBanter1","GLOBAL",0)~ THEN BGV#FLAR DRAKE-FLARA-1
~我好奇，德雷克，你是否明白两位神祇不能共有同一个领域。正如巴尔从杰加尔手中夺走谋杀的领域，又被塞瑞克从他手中偷去……这条公理大概是诸神之间最大的冲突之源。~
DO ~SetGlobal("C0DrakeGV#FlaraBanter1","GLOBAL",1)~
== BGV#FLAR ~那么，你的提尔怎么能与复仇心切的霍尔并存？正义之于报应，正如装腔作势之于浮夸。同一个东西的两个词罢了。~
== BC0DRAKE ~论装腔作势，你倒有资格说，“龙”。正义就是报应，是，但要以宽恕与理性调和。一个人偷面包活命，那想让他上绞架的面包师，就是只做前者不做后者。~
== BGV#FLAR ~那就是你的辩解？你是正方形，不是长方形？多牵强。要牧养这样一群愚钝的生灵，我倒不奇怪霍尔与提尔本是同一个存在，向世人露出两副面孔，好在精明人与伪信狂徒两边都受供奉。~
== BC0DRAKE ~狂徒与否，细微之处我们抓得住，你却让它从头顶飘过去了。依我看，这儿只有一个愚钝的。~
EXIT

CHAIN IF ~InParty("GV#LITT")
See("GV#LITT")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("GV#LITT",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeGV#LittlunBanter1","GLOBAL",0)~ THEN BC0DRAKE DRAKE-LITTLUN-1
~呵。瞧瞧这景象。一个被打上精灵烙印的半身人，穿着寒酸朝圣者的皮子，配着公爵才用得起的弩。你真是个不合群的家伙，对吧？~
DO ~SetGlobal("C0DrakeGV#LittlunBanter1","GLOBAL",1)~
== BGV#LITT ~是啊，那又怎样？打算给我写传记吗？~
== BC0DRAKE ~别把“不合群”当成蔑称，普朗克特女士。我常用这词说自己，而且我自视高到不至于自厌。世上最怪的人身边，我最自在。你得就着一两壶麦酒，跟我讲讲你们这个部族。~
== BGV#LITT ~才一两壶，嗯？那接下来十几壶我该讲什么？~
== BC0DRAKE ~哈！随你，女士，随你。我会一直点头微笑，直到酒桶见底。~
EXIT

CHAIN IF ~InParty("GV#MOID")
See("GV#MOID")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("GV#MOID",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeGV#MoidreBanter1","GLOBAL",0)~ THEN BC0DRAKE DRAKE-MOIDRE-1
~莫伊德，两个砸人脑壳的，彼此说一句，战士这一生总有该把锤子挂上墙的时候。我看你也差不多到时候了。~
DO ~SetGlobal("C0DrakeGV#MoidreBanter1","GLOBAL",1)~
== BGV#MOID ~我还灵活得够跟你跑一场。要跟人说人家慢了，先自己追上来再说。~
== BC0DRAKE ~我不是说你过了盛年。见鬼，你要真过了，我倒可怜那些你风光时招惹过你的家伙。~
== BC0DRAKE ~我是说，我见过你要去的那个地方，那时打仗只成了空洞的差事。我在军里常见这种事。老兵中的老兵，那些见过太多混乱、太多血的人。男女眼里都没了神，未老先衰，生机与欢乐都被榨干了。愿提尔之意如此，我别再看见。~
== BGV#MOID ~觉得你现在还没到那一步，未免太乐观。~
== BC0DRAKE ~不，不是你。至少现在还不是。那副胸甲底下还有东西在跳，不管你想让人怎么以为。攥住它。~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("GV#VYND",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeGV#VyndBanter1","GLOBAL",0)~ THEN BGV#VYND DRAKE-VYND-1
~那到底是因为什么，德雷克？尖耳朵？贴身的皮甲？还是那股暗暗烧着的神秘气场？~
DO ~SetGlobal("C0DrakeGV#VyndBanter1","GLOBAL",1)~
== BC0DRAKE ~这又是怎么着？没人愿意捧你，你就自个儿来？~
== BGV#VYND ~我只是想弄明白，你为什么在燃烧的巫师酒馆坐得离我那么近。还是你纯粹判了我犯了什么罪，就罚我陪你个尴尬的夜晚？~
== BC0DRAKE ~是你自己判的。没人拦着你换个位子。或者更好，换家酒馆。~
== BGV#VYND ~那角落在我之前就是我的。你要靠舔法律那条长靴挣饭吃，或许该学学先占先得的规矩。~
== BGV#VYND ~再说你要个角落位子干什么？你是社区里体面、正直的一员，我是眼珠子乱转、煤色皮肤的下等人。角落是我出没的地方。待在你的圣坛里吧，唱诗班的男孩。~
== BC0DRAKE ~哈！从没想过我活着能听见“我”和“体面”出现在同一句里。我该感动了，只是按你的尺子，这标准低得很。~
EXIT