import '../models/poem.dart';

final List<Poem> grade7Poems = [
  // 116. 观沧海
  Poem(id: 'c7-01', title: '观沧海', author: '曹操', dynasty: '三国',
    content: '东临碣石，以观沧海。\n水何澹澹，山岛竦峙。\n树木丛生，百草丰茂。\n秋风萧瑟，洪波涌起。\n日月之行，若出其中；\n星汉灿烂，若出其里。\n幸甚至哉，歌以咏志。',
    pinyin: 'dōng lín jié shí, yǐ guān cāng hǎi.\nshuǐ hé dàn dàn, shān dǎo sǒng zhì.\nshù mù cóng shēng, bǎi cǎo fēng mào.\nqiū fēng xiāo sè, hóng bō yǒng qǐ.\nrì yuè zhī xíng, ruò chū qí zhōng;\nxīng hàn càn làn, ruò chū qí lǐ.\nxìng shèn zhì zāi, gē yǐ yǒng zhì.',
    translation: '东行登上碣石山，来观看大海。海水是多么的浩荡荡啊，波涛汹涌起伏不停。海中的山岛高高地耸立着，直立在那里显得格外雄伟。山岛上树木丛生繁茂，枝叶茂密相连。各种草类生长得十分丰美茂盛，呈现出一片勃勃生机。秋风吹过发出萧瑟的声响，巨大的波浪在海面上翻腾涌起，气势磅礴。太阳和月亮的运行轨迹，好像是从这浩瀚的大海中升起来的。灿烂辉煌的银河群星，也仿佛是从这大海的怀抱里诞生出来的。我感到非常的幸运和高兴啊，就用这首诗歌来表达抽发我内心的志向和情怀。',
    annotation: '碣石：山名。澹澹：水波荡漾。竦峙：高高耸立。',
    tags: ['写景', '抒怀', '壮志'], grade: 7, type: '四言诗'),
  
  // 117. 次北固山下
  Poem(id: 'c7-02', title: '次北固山下', author: '王湾', dynasty: '唐',
    content: '客路青山外，行舟绿水前。\n潮平两岸阔，风正一帆悬。\n海日生残夜，江春入旧年。\n乡书何处达？归雁洛阳边。',
    pinyin: 'kè lù qīng shān wài, xíng zhōu lǜ shuǐ qián.\ncháo píng liǎng àn kuò, fēng zhèng yī fān xuán.\nhǎi rì shēng cán yè, jiāng chūn rù jiù nián.\nxiāng shū hé chù dá? guī yàn luò yáng biān.',
    translation: '旅客的路途在青山之外,我乘坐的小船在碧绿的江水上向前行驶。潮水涨满了,两岸之间显得格外宽阔,顺风行船,船帆端端正正地高高挂起。海上的红日在黑夜还没完全消退时就冉冉升起,江上的春天在旧年还没结束时就已经来临。寄给家乡的书信不知道什么时候才能送到？希望北归的大雁飞过洛阳时,能帮我把思念带回家。',
    annotation: '客路：旅途。残夜：夜将尽。',
    tags: ['羁旅', '思乡', '写景'], grade: 7, type: '五言律诗'),
  
  // 118. 闻王昌龄左迁龙标遥有此寄
  Poem(id: 'c7-03', title: '闻王昌龄左迁龙标遥有此寄', author: '李白', dynasty: '唐',
    content: '杨花落尽子规啼，\n闻道龙标过五溪。\n我寄愁心与明月，\n随君直到夜郎西。',
    pinyin: 'yáng huā luò jìn zǐ guī tí,\nwén dào lóng biāo guò wǔ xī.\nwǒ jì chóu xīn yǔ míng yuè,\nsuí jūn zhí dào yè láng xī.',
    translation: '杨花落尽子规啼叫，听说你被贬到龙标过五溪。我把愁心寄给明月，随你直到夜郎西。',
    annotation: '左迁：贬官。子规：杜鹃鸟。',
    tags: ['送别', '友情'], grade: 7, type: '七言绝句'),
  
  // 119. 天净沙·秋思
  Poem(id: 'c7-04', title: '天净沙·秋思', author: '马致远', dynasty: '元',
    content: '枯藤老树昏鸦，\n小桥流水人家，\n古道西风瘦马。\n夕阳西下，\n断肠人在天涯。',
    pinyin: 'kū téng lǎo shù hūn yā,\nxiǎo qiáo liú shuǐ rén jiā,\ngǔ dào xī fēng shòu mǎ.\nxī yáng xī xià,\nduàn cháng rén zài tiān yá.',
    translation: '枯藤缠绕老树，黄昏时乌鸦栖息。小桥下流水潺潺，旁边有几户人家。古道上西风萧瑟，瘦马踽踽独行。夕阳西下，断肠人漂泊在天涯。',
    annotation: '昏鸦：黄昏时的乌鸦。断肠人：形容极度悲伤的人。天涯：远离家乡的地方。',
    tags: ['羁旅', '思乡', '秋天'], grade: 7, type: '曲'),
  
  // 120. 夜雨寄北
  Poem(id: 'c7-05', title: '夜雨寄北', author: '李商隐', dynasty: '唐',
    content: '君问归期未有期，\n巴山夜雨涨秋池。\n何当共剪西窗烛，\n却话巴山夜雨时。',
    pinyin: 'jūn wèn guī qī wèi yǒu qī,\nbā shān yè yǔ zhǎng qiū chí.\nhé dāng gòng jiǎn xī chuāng zhú,\nquè huà bā shān yè yǔ shí.',
    translation: '你问归期还没有期，巴山夜雨涨满秋池。何时能共剪西窗烛，再说巴山夜雨时。',
    annotation: '何当：何时。却话：再说。',
    tags: ['思乡', '爱情'], grade: 7, type: '七言绝句'),
  
  // 121. 木兰诗
  Poem(id: 'c7-06', title: '木兰诗', author: '北朝民歌', dynasty: '南北朝',
    content: '唧唧复唧唧，木兰当户织。\n不闻机杼声，唯闻女叹息。\n问女何所思，问女何所忆。\n女亦无所思，女亦无所忆。\n昨夜见军帖，可汗大点兵。\n军书十二卷，卷卷有爷名。\n阿爷无大儿，木兰无长兄。\n愿为市鞍马，从此替爷征。\n\n东市买骏马，西市买鞍鞯，\n南市买辔头，北市买长鞭。\n旦辞爷娘去，暮宿黄河边，\n不闻爷娘唤女声，但闻黄河流水鸣溅溅。\n旦辞黄河去，暮至黑山头，\n不闻爷娘唤女声，但闻燕山胡骑鸣啾啾。\n\n万里赴戎机，关山度若飞。\n朔气传金柝，寒光照铁衣。\n将军百战死，壮士十年归。\n\n归来见天子，天子坐明堂。\n策勋十二转，赏赐百千强。\n可汗问所欲，木兰不用尚书郎，\n愿驰千里足，送儿还故乡。\n\n爷娘闻女来，出郭相扶将；\n阿姊闻妹来，当户理红妆；\n小弟闻姊来，磨刀霍霍向猪羊。\n开我东阁门，坐我西阁床，\n脱我战时袍，著我旧时裳。\n当窗理云鬓，对镜帖花黄。\n出门看火伴，火伴皆惊忙：\n同行十二年，不知木兰是女郎。\n\n雄兔脚扑朔，雌兔眼迷离；\n双兔傍地走，安能辨我是雄雌？',
    pinyin: 'jī jī fù jī jī, mù lán dāng hù zhī.\nbù wén jī zhù shēng, wéi wén nǚ tàn xī.\nwèn nǚ hé suǒ sī, wèn nǚ hé suǒ yì.\nnǚ yì wú suǒ sī, nǚ yì wú suǒ yì.\nzuó yè jiàn jūn tiě, kè hán dà diǎn bīng.\njūn shū shí èr juàn, juàn juàn yǒu yé míng.\nā yé wú dà ér, mù lán wú zhǎng xiōng.\nyuàn wèi shì ān mǎ, cóng cǐ tì yé zhēng.\n\ndōng shì mǎi jùn mǎ, xī shì mǎi ān jiān,\nnán shì mǎi pèi tóu, běi shì mǎi cháng biān.\ndàn cí yé niáng qù, mù sù huáng hé biān,\nbù wén yé niáng huàn nǚ shēng, dàn wén huáng hé liú shuǐ míng jiān jiān.\ndàn cí huáng hé qù, mù zhì hēi shān tóu,\nbù wén yé niáng huàn nǚ shēng, dàn wén yān shān hú qí míng jiū jiū.\n\nwàn lǐ fù róng jī, guān shān dù ruò fēi.\nshuò qì chuán jīn tuò, hán guāng zhào tiě yī.\njiāng jūn bǎi zhàn sǐ, zhuàng shì shí nián guī.\n\nguī lái jiàn tiān zǐ, tiān zǐ zuò míng táng.\ncè xūn shí èr zhuǎn, shǎng cì bǎi qiān qiáng.\nkè hán wèn suǒ yù, mù lán bù yòng shàng shū láng,\nyuàn chí qiān lǐ zú, sòng ér huán gù xiāng.\n\nyé niáng wén nǚ lái, chū guō xiāng fú jiāng;\nā zǐ wén mèi lái, dāng hù lǐ hóng zhuāng;\nxiǎo dì wén zǐ lái, mó dāo huò huò xiàng zhū yáng.\nkāi wǒ dōng gé mén, zuò wǒ xī gé chuáng,\ntuō wǒ zhàn shí páo, zhuó wǒ jiù shí cháng.\ndāng chuāng lǐ yún bìn, duì jìng tiē huā huáng.\nchū mén kàn huǒ bàn, huǒ bàn jiē jīng máng:\ntóng xíng shí èr nián, bù zhī mù lán shì nǚ láng.\n\nxióng tù jiǎo pū shuò, cí tù yǎn mí lí;\nshuāng tù bàng dì zǒu, ān néng biàn wǒ shì xióng cí?',
    translation: '织布机发出唧唧复唧唧的声音，木兰姑娘正对着门口织布。听不到织布机梭子来回穿梭的声音，只听见木兰在叹息。问木兰在想什么？问木兰在思念什么？木兰回答说：我也没有在想什么，也没有在思念什么。昨天夜里看见了征兵的文告，知道君王在大规模征集兵马。征兵的名册很多卷，每一卷上都有父亲的名字。父亲没有成年的大儿子，木兰没有年长的兄弟。我愿意去集市上买马鞍和骏马，从此替代父亲去应征作战。木兰到东边的集市买来骏马，到西边的集市买来马鞍和鞍下的垫子，到南边的集市买来马嚼子和缰绳，到北边的集市买来长长的马鞭。清晨告别父母离开家乡，傍晚就宿营在黄河岸边。听不见父母呼唤女儿的声音，只能听见黄河水流发出的溅溅哗哗的响声。清晨离开黄河继续赶路，傍晚到达黑山附近驻扎。听不见父母呼唤女儿的声音，只能听见燕山一带胡人骑兵战马发出的啾啾嘶鸣声。木兰不远万里奔赴战场，飞快地越过一道道关隘和一座座山岭。北方的寒气中传来打更的梆子声，清冷的月光照在战士们的铁甲战袍上。将军和士兵身经百战，有的为国捐躯，有的历经十年艰苦征战终于凯旋归来。木兰归来朝见天子，天子坐在高大的朝堂上。朝廷为木兰记录了很大的功勋，赏赐给她许多财物。天子问木兰想要什么，木兰不愿意做尚书郎这样的官职，只希望能骑上千里马，借助它的脚力送我回到家乡。父母听说女儿回来了，互相搀扶着到城外来迎接她；姐姐听说妹妹回来了，对着门户梳妆打扮起来；弟弟听说姐姐回来了，忙着霍霍地磨刀准备杀猪宰羊。木兰打开东边闺房的门，坐在西边闺房的床上，脱下战时穿的战袍，换上以前女孩子穿的衣裳。对着窗户整理自己像云一样柔美的鬓发，对着镜子在额头贴上装饰的花黄。出门去见一起出征的伙伴，伙伴们都非常惊讶慌乱：我们同行征战了十二年，竟然不知道木兰是个女孩子！雄兔的两只前脚时常动弹，雌兔的两只眼睛时常眯着。当两只兔子一起贴着地面奔跑的时候，又怎么能分辨得出哪个是雄兔哪个是雌兔呢？',
    annotation: '机杼：织布机。军帖：征兵文书。可汗：君主。鞍鞯：马鞍和垫子。戎机：战事。朔气：北方寒气。金柝：打更的梆子。策勋：记功。',
    tags: ['战争', '爱国', '叙事'], grade: 7, type: '乐府诗'),
  
  // 122. 登幽州台歌
  Poem(id: 'c7-07', title: '登幽州台歌', author: '陈子昂', dynasty: '唐',
    content: '前不见古人，\n后不见来者。\n念天地之悠悠，\n独怆然而涕下。',
    pinyin: 'qián bú jiàn gǔ rén,\nhòu bú jiàn lái zhě.\nniàn tiān dì zhī yōu yōu,\ndú chuàng rán ér tì xià.',
    translation: '前不见古代贤君，后不见后世明主。想到天地的悠久，独自悲伤落泪。',
    annotation: '幽州台：蓟北楼。怆然：悲伤的样子。',
    tags: ['感慨', '孤独'], grade: 7, type: '杂言诗'),
  
  // 123. 望岳
  Poem(id: 'c7-08', title: '望岳', author: '杜甫', dynasty: '唐',
    content: '岱宗夫如何？齐鲁青未了。\n造化钟神秀，阴阳割昏晓。\n荡胸生曾云，决眦入归鸟。\n会当凌绝顶，一览众山小。',
    pinyin: 'dài zōng fū rú hé? qí lǔ qīng wèi liǎo.\nzào huà zhōng shén xiù, yīn yáng gē hūn xiǎo.\ndàng xiōng shēng céng yún, jué zì rù guī niǎo.\nhuì dāng líng jué dǐng, yī lǎn zhòng shān xiǎo.',
    translation: '泰山啊,你究竟是什么样子的呢？齐鲁大地上,那青翠的山色望不到边。大自然把神奇秀美都汇聚在这里,山的南北两面,一面明亮一面昏暗,分开了白天和黑夜。层层云雾升腾,让人心胸激荡,睁大眼睛眺望,看见飞回山林的鸟儿。一定要登上那最高的山顶,到那时俯瞰群山,它们都会显得那么矮小。',
    annotation: '岱宗：泰山。造化：大自然。凌：登上。',
    tags: ['写景', '励志', '泰山'], grade: 7, type: '五言古诗'),
  
  // 124. 登飞来峰
  Poem(id: 'c7-09', title: '登飞来峰', author: '王安石', dynasty: '宋',
    content: '飞来山上千寻塔，\n闻说鸡鸣见日升。\n不畏浮云遮望眼，\n自缘身在最高层。',
    pinyin: 'fēi lái shān shàng qiān xún tǎ,\nwén shuō jī míng jiàn rì shēng.\nbù wèi fú yún zhē wàng yǎn,\nzì yuán shēn zài zuì gāo céng.',
    translation: '飞来山上千寻高塔，听说鸡鸣时能看到日出。不怕浮云遮住眼睛，只因身在最高层。',
    annotation: '寻：古代长度单位。浮云：比喻奸邪小人。',
    tags: ['哲理', '励志'], grade: 7, type: '七言绝句'),
  
  // 125. 游山西村
  Poem(id: 'c7-10', title: '游山西村', author: '陆游', dynasty: '宋',
    content: '莫笑农家腊酒浑，丰年留客足鸡豚。\n山重水复疑无路，柳暗花明又一村。\n箫鼓追随春社近，衣冠简朴古风存。\n从今若许闲乘月，拄杖无时夜叩门。',
    pinyin: 'mò xiào nóng jiā là jiǔ hún, fēng nián liú kè zú jī tún.\nshān chóng shuǐ fù yí wú lù, liǔ àn huā míng yòu yī cūn.\nxiāo gǔ zhuī suí chūn shè jìn, yī guān jiǎn pǔ gǔ fēng cún.\ncóng jīn ruò xǔ xián chéng yuè, zhǔ zhàng wú shí yè kòu mén.',
    translation: '不要笑话农家腊月里酿的酒浑浊不清,丰收年景款待客人,鸡肉猪肉都很丰盛。山峦重重叠叠,水流曲曲折折,正怀疑前面没有路了,柳树茂密花朵鲜艳,眼前又出现了一个村庄。村民们吹着箫打着鼓,春社的日子快到了,衣着打扮简单朴素,古老的风俗还保存着。从今以后,如果允许我有空闲时趁着月光出游,我会随时拄着拐杖在夜里敲你家的门。',
    annotation: '腊酒：腊月酿的酒。豚：猪。',
    tags: ['田园', '哲理'], grade: 7, type: '七言律诗'),
  
  // 126. 己亥杂诗(其五)
  Poem(id: 'c7-11', title: '己亥杂诗（其五）', author: '龚自珍', dynasty: '清',
    content: '浩荡离愁白日斜，\n吟鞭东指即天涯。\n落红不是无情物，\n化作春泥更护花。',
    pinyin: 'hào dàng lí chóu bái rì xié,\nyín biān dōng zhǐ jí tiān yá.\nluò hóng bú shì wú qíng wù,\nhuà zuò chūn ní gèng hù huā.',
    translation: '浩荡离愁伴着夕阳西斜，扬鞭东指就是天涯。落花不是无情物，化作春泥更护花。',
    annotation: '吟鞭：诗人的马鞭。落红：落花。',
    tags: ['离别', '奉献'], grade: 7, type: '七言绝句'),
];
