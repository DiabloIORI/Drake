# Drake（德雷克 NPC）汉化说明

- 模组路径：`E:\GitHub\Drake\Drake`
- 汉化方式：**源码内直接汉化**（该模组没有 `lang/<语言>` 目录，`AUTO_TRA` 指向的 `Drake/translations/english/Drake.tra` 并不存在，组件名与提示语全是 tp2 里的字面量，只能就地改）
- 编码：全部 UTF-8 **无 BOM**，CRLF 换行，与原文件保持一致；每个被改动的文件旁边都留了同名 `.bak` 原始副本
- 只改 `~...~` 里的玩家可见文字；条件、动作、变量、资源路径、`.ids` 引用一律未动

## 一、覆盖范围

### 1. 对白（`.d`，共 11 组文件、约 2 548 条）

| 文件 | 条目 | 内容 |
|---|---|---|
| `dialogue\c0drakej.d` | 945 | BG1 主线与大段 talk：加布里尔之死、穆兰与赛西利斯、石心/万斯背叛、吊坠、阿格里姆家、班特利、三只老酒桶、恋爱线 |
| `dialogue\bc0drake.d` | 381 | BG1 队友 banter（阿詹提斯/伊莫恩/布兰温/黛娜希尔/埃德温/埃尔多斯/法尔顿/加里克/贾希拉/卡盖恩/卡立德/基万/明斯克/蒙塔隆/奎尔/萨法娜/莎尔-蒂尔/斯基/提亚克斯/维康尼亚/赞/克萨/耶斯利克/妮拉/拉萨德/多恩） |
| `dialogue\SoD\c02drakj.d` | 559 | SoD 长谈与 banter：势态/统率、篝火炖菜、杜兰德战深龙、烛堡回忆、卡伊拉评价、宿醉、阿弗内斯、Caelar 终战、告别、Voghiln 掰腕子 |
| `dialogue\c0dstone.d` | 129 | 石心线（下水道、寒信、家族吊坠） |
| `dialogue\SoD\c02drake.d` | 118 | SoD 主线对话 |
| `dialogue\c0drake.d` | 80 | BG1 入队/招募 |
| `dialogue\SoD\c02elrik.d` | 58 | 埃利克爵士 |
| `dialogue\SoD\c02tomas.d` | 27 | 托马斯 |
| `dialogue\SoD\dialog.d` | 20 | SoD 场景串场 |
| `dialogue\c0dthf01.d` | 18 | 石心手下 |
| `dialogue\c0drakep.d` | 12 | 入队前状态 |
| `dialogue\crossmod\*.d` | 201 | 10 个 crossmod：海尔加 5 / 《剑湾之影》1 / 卡勒 18 / 奥拉 21 / 西瑞妮 22 / 维尔萨 14 / 维恩赛 25 / 怀特 25 / 里本斯 34 / Glam NPC Pack 36 |

### 2. 脚本内文字（`.baf`，共 318 条）

`scripts\SoD\c02dbant.baf` 269（最大一块战场 banter）、`scripts\c0dreset.baf` 34（含长 BIO）、`scripts\SoD\c02elrik.baf` 3、`bd0106.baf` 1（长 BIO）、`bd0120/bd3000/bd4601/bd7210` 各 1、`bd4100` 2、`bd4300` 4、`c02dcut1.baf` 1。

### 3. tp2 与库文件

- `Setup-Drake.tp2`：组件名、`PRINT` 提示、`REQUIRE_PREDICATE` 提示、两具 CRE 共 86 条 `SAY` 台词（含 `SAY DAMAGE`/`SAY SELECT_COMMON1`）。120 处字面量中 94 条已译为中文，其余 26 条是 `BACKUP` 路径、`.tpa/.cre/.bmp/.ogg` 资源路径、`bgee eet` 平台串——**故意保留英文**。
- `lib\drake_bg1.tpa`：126 处中 55 条（台词、`SAY NAME1/NAME2` 物品与人物名、crossmod 的 `PRINT` 提示）+ 3 条物品长描述。
- `lib\drake_sod.tpa`：170 处中 71 条（BIO 全段、装备/武器名、`CREATE` 名、商店名、`PRINT`）+ 9 条物品长描述。
- `translations\english\journal.tra`：7 条任务日志（追猎阴影 / 招募新人 / 失踪的骑士）——按"源码内汉化"一律就地写成中文，没有新建 `schinese`。

### 4. 物品长描述（12 条）

`prose()` 过滤会跳过带 `(`、`)`、`%` 的串，因此 12 条 `SAY DESC` 的物品描述单独处理，全段译入，含 `属性：` / `装备能力：` / `充能能力：` / `战斗能力：` / `零级命中值` / `伤害` / `速度系数` / `熟练类型` / `重量` 等面板文字：

- `lib\drake_bg1.tpa`：毒锋 +2、暗夜之戒、考尔菲尔德吊坠
- `lib\drake_sod.tpa`：救赎之甲、提尔之力板甲、先祖之甲、蛮力 +2、镇压者、狰狞之颚壁垒、尊崇之盔、寒信、炽烈正义 +3

### 5. 带引号 / 括号 / 舞台说明的台词（29 条）

同样因 `prose()` 排除了 `"` `(` `)` 而在首轮漏掉，已逐条补译（`(grin)`、`(sigh)`、`(Drake snaps open the locket...)` 之类舞台指示译为 `（咧嘴笑）`、`（叹气）`、`（德雷克啪地打开吊坠……）`），分布：`bc0drake.d` 6、`c0drakej.d` 8、`c02drakj.d` 5、`verrsza.d` 3、`c02dbant.baf` 2、`c02drake.d`/`recorder.d`/`sirene.d`/`vienxay.d`/`c02dcut1.baf` 各 1。

### 6. 极短句（30 条）

`Oof!`→`哎哟！`、`Yeah?`→`嗯？`、`Hmph.`→`哼。`、`Cheers!`→`干杯！`、`*sigh*`→`*叹气*`、`*gulp*`→`*咕咚*`、`*snort*`→`*喷鼻*`、`RRRUMMMMBLE!`→`咕噜噜隆隆！`、`Never!`→`绝不！`、`Farewell.`→`告辞。` 等，以及 `SAY NAME1/NAME2` 的人物与物品名（石心、吉迪恩、克劳斯、托马斯、戒指、吊坠、头盔、战锤、屠魔 +3、双手剑）。

## 二、术语统一

德雷克·考尔菲尔德 Drake Caulfield｜石心 Stoneheart（真名万斯 Vance）｜托马斯·考尔菲尔德 Tomas｜克劳迪娅 Claudia｜杜兰德·考尔菲尔德二世 Prelate Durand Caulfield II｜加布里尔爵士 Sir Gabriel｜卡罗琳夫人 Lady Caroline｜寒信 Coldfaith｜伊尔瓦斯塔家 House Ilvastarr｜黎明导师凯尔达斯·奥姆利尔｜埃利克·红港爵士 Sir Elrik Redharbour｜艾登·韦尔 Aiden Vail｜巴希勒斯 Bassilus｜梅伦·西卢斯｜“莽撞者”法因｜卡伊拉·阿金特 Caelar Argent（光明女士）｜贝洛斯 Baeloth｜格林特 Glint｜沃吉尔恩 Voghiln｜绍尔·科温 Schael Corwin｜艾米莉 Emily｜慈悲女士 lady Mercy｜里本斯 Ribbons

信仰与组织：提尔（平衡者 / 伤残之神）、托姆、坦帕斯、塞瑞克、巴尔、杰加尔、洛山达（晨之主）、三神教会（Triad）、光辉之心骑士团、燃焰铁拳、影贼、教长 prelate

地名：贝尔葛斯特、安姆、阿斯卡特拉、剑湾、深水城、达格福德、友善之臂旅店、龙矛城堡、博尔斯基尔桥、三只老酒桶、精灵之歌、卢尼亚、阿弗内斯、穆兰、奥罗格

## 三、校验结果

对 35 个改动文件逐个做了机器校验：

- UTF-8 可解码、**无 BOM**：全部通过
- 换行：CRLF 数量与 `.bak` 完全一致（LF 数量全部为 0，未混入裸 LF）
- `~` 定界符：每个文件内 `~` 数量均为**偶数**（未出现多余 `~`——这是 Weidu 解析 `LEXER ERROR` 的头号原因，Alora 那次就是这个坑）
- 英文残留扫描：`.d` 与 `.baf` 中已无任何英文句子；剩下的 ASCII 串全部是 `InParty("X")`、`SetGlobal(...)`、区域代号（`bd3000`）、资源文件名（`c0dsw1h`）、平台串（`bgee eet`）这类**代码**，不是漏译

原始文件全部保留为 `.bak`（35 个），且该目录是 git 仓库，随时可 `git diff` 逐条复核或 `git checkout` 回退。

## 四、未译项（有意保留）

- `lib\crossbows.tpa` 里的 `Not Usable By:`：这行是往物品描述里拼的 2da/职业可用性前缀，参与 `SAY_EVALUATED` 的正则替换，属于半代码，动了会破坏匹配，保留英文。
- `.tpa` 中的资源标识行（`C0Drake C0DrakeP C0DrakeJ ...`、`INV1 INV2 ...`）、`%idsValue%` 之类的变量模板。
- `Setup-Drake.tp2` 的路径、平台串、`The Artisan`（作者署名）、`English`（语言标记）。

## 五、安装提示

- 该模组文字是编译时内嵌进 `.dlg` 的，**不需要**改 `dialog.tlk`，也不需要 `HANDLE_CHARSETS`；源文件是 UTF-8 无 BOM，EET 下可直接安装。
- 若安装报 `No translation provided for @xx` 或 `LEXER ERROR ... invalid character`，先查对应 `.d` 里是否混进了多余的 `~`，或 `schinese`/`english` 目录里是否躺着一份旧 tra。
- 安装顺序沿用你原先的 crossmod 规划：Drake 要在它 crossmod 涉及的角色模组之后装（海尔加、卡勒、奥拉、西瑞妮、维尔萨、维恩赛、怀特、里本斯 / Recorder、Glam NPC Pack、《剑湾之影》），且 EET 下需在 EET_End 之前。
