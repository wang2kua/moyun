import '../models/poem.dart';

final List<Poem> grade7Poems = [
  // 116. 观沧海
  Poem(id: 'c7-01', title: '观沧海', author: '曹操', dynasty: '三国',
    content: '东临碣石，以观沧海。\n水何澹澹，山岛竦峙。\n树木丛生，百草丰茂。\n秋风萧瑟，洪波涌起。\n日月之行，若出其中；\n星汉灿烂，若出其里。\n幸甚至哉，歌以咏志。',
    pinyin: 'dōng lín jié shí, yǐ guān cāng hǎi.\nshuǐ hé dàn dàn, shān dǎo sǒng zhì.\nshù mù cóng shēng, bǎi cǎo fēng mào.\nqiū fēng xiāo sè, hóng bō yǒng qǐ.\nrì yuè zhī xíng, ruò chū qí zhōng;\nxīng hàn càn làn, ruò chū qí lǐ.\nxìng shèn zhì zāi, gē yǐ yǒng zhì.',
    translation: '东行登上碣石山，来观看大海。海水多么浩荡，山岛高高耸立。树木丛生，百草丰茂。',
    annotation: '碣石：山名。澹澹：水波荡漾。竦峙：高高耸立。',
    tags: ['写景', '抒怀', '壮志'], grade: 7, type: '四言诗'),
  
  // 117. 次北固山下
  Poem(id: 'c7-02', title: '次北固山下', author: '王湾', dynasty: '唐',
    content: '客路青山外，行舟绿水前。\n潮平两岸阔，风正一帆悬。\n海日生残夜，江春入旧年。\n乡书何处达？归雁洛阳边。',
    pinyin: 'kè lù qīng shān wài, xíng zhōu lǜ shuǐ qián.\ncháo píng liǎng àn kuò, fēng zhèng yī fān xuán.\nhǎi rì shēng cán yè, jiāng chūn rù jiù nián.\nxiāng shū hé chù dá? guī yàn luò yáng biān.',
    translation: '旅途在青山之外，行船在绿水之前。潮水涨平两岸宽阔，风正帆悬。',
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
    pinyin: 'jī jī fù jī jī, mù lán dāng hù zhī.\nbù wén jī zhù shēng, wéi wén nǚ tàn xī.\nwèn nǚ hé suǒ sī, wèn nǚ hé suǒ yì.\nnǚ yì wú suǒ sī, nǚ yì wú suǒ yì.\nzuó yè jiàn jūn tiě, kè hán dà diǎn bīng.\njūn shū shí èr juàn, juàn juàn yǒu yé míng.\nā yé wú dà ér, mù lán wú zhǎng xiōng.\nyuàn wèi shì ān mǎ, cóng cǐ tì yé zhēng.',
    translation: '唧唧又唧唧，木兰对着门织布。听不到织布声，只听到女儿叹息。木兰代父从军，征战多年，立功归来，不慕荣华，只愿回家。',
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
    translation: '泰山怎么样？齐鲁大地青翠连绵。大自然钟爱神奇秀丽，山南山北分割昏晓。',
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
    translation: '不要笑农家腊酒浑浊，丰年留客鸡猪丰足。山重水复疑无路，柳暗花明又一村。',
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
