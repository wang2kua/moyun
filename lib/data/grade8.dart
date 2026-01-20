import '../models/poem.dart';

final List<Poem> grade8Poems = [
  // 127. 泊秦淮
  Poem(id: 'c8-01', title: '泊秦淮', author: '杜牧', dynasty: '唐',
    content: '烟笼寒水月笼沙，\n夜泊秦淮近酒家。\n商女不知亡国恨，\n隔江犹唱后庭花。',
    pinyin: 'yān lǒng hán shuǐ yuè lǒng shā,\nyè bó qín huái jìn jiǔ jiā.\nshāng nǚ bù zhī wáng guó hèn,\ngé jiāng yóu chàng hòu tíng huā.',
    translation: '烟雾笼罩寒水月光笼罩沙滩，夜泊秦淮靠近酒家。歌女不知亡国之恨，隔江还唱后庭花。',
    annotation: '商女：歌女。后庭花：亡国之音。',
    tags: ['怀古', '讽刺'], grade: 8, type: '七言绝句'),
  
  // 128. 黄鹤楼
  Poem(id: 'c8-02', title: '黄鹤楼', author: '崔颢', dynasty: '唐',
    content: '昔人已乘黄鹤去，此地空余黄鹤楼。\n黄鹤一去不复返，白云千载空悠悠。\n晴川历历汉阳树，芳草萋萋鹦鹉洲。\n日暮乡关何处是？烟波江上使人愁。',
    pinyin: 'xī rén yǐ chéng huáng hè qù, cǐ dì kōng yú huáng hè lóu.\nhuáng hè yī qù bù fù fǎn, bái yún qiān zǎi kōng yōu yōu.\nqíng chuān lì lì hàn yáng shù, fāng cǎo qī qī yīng wǔ zhōu.\nrì mù xiāng guān hé chù shì? yān bō jiāng shàng shǐ rén chóu.',
    translation: '昔人已乘黄鹤离去，此地只剩黄鹤楼。黄鹤一去不再回，白云千年空悠悠。',
    annotation: '昔人：传说中的仙人。历历：清晰可见。萋萋：茂盛的样子。',
    tags: ['怀古', '思乡'], grade: 8, type: '七言律诗'),
  
  // 129. 使至塞上
  Poem(id: 'c8-03', title: '使至塞上', author: '王维', dynasty: '唐',
    content: '单车欲问边，属国过居延。\n征蓬出汉塞，归雁入胡天。\n大漠孤烟直，长河落日圆。\n萧关逢候骑，都护在燕然。',
    pinyin: 'dān chē yù wèn biān, shǔ guó guò jū yán.\nzhēng péng chū hàn sài, guī yàn rù hú tiān.\ndà mò gū yān zhí, cháng hé luò rì yuán.\nxiāo guān féng hòu qí, dū hù zài yān rán.',
    translation: '轻车简从出使边塞，经过属国居延。像飘飞的蓬草出汉塞，像归雁飞入胡天。',
    annotation: '单车：轻车简从。征蓬：飘飞的蓬草。',
    tags: ['边塞', '写景'], grade: 8, type: '五言律诗'),
  
  // 130. 钱塘湖春行
  Poem(id: 'c8-04', title: '钱塘湖春行', author: '白居易', dynasty: '唐',
    content: '孤山寺北贾亭西，水面初平云脚低。\n几处早莺争暖树，谁家新燕啄春泥。\n乱花渐欲迷人眼，浅草才能没马蹄。\n最爱湖东行不足，绿杨阴里白沙堤。',
    pinyin: 'gū shān sì běi jiǎ tíng xī, shuǐ miàn chū píng yún jiǎo dī.\njǐ chù zǎo yīng zhēng nuǎn shù, shuí jiā xīn yàn zhuó chūn ní.\nluàn huā jiàn yù mí rén yǎn, qiǎn cǎo cái néng mò mǎ tí.\nzuì ài hú dōng xíng bù zú, lǜ yáng yīn lǐ bái shā dī.',
    translation: '孤山寺北贾亭西，水面刚刚涨平云脚低垂。几处早莺争着向阳的树，谁家新燕啄春泥。',
    annotation: '云脚：低垂的云。暖树：向阳的树。',
    tags: ['春天', '写景', '西湖'], grade: 8, type: '七言律诗'),
  
  // 131. 饮酒(其五)
  Poem(id: 'c8-05', title: '饮酒（其五）', author: '陶渊明', dynasty: '东晋',
    content: '结庐在人境，而无车马喧。\n问君何能尔？心远地自偏。\n采菊东篱下，悠然见南山。\n山气日夕佳，飞鸟相与还。\n此中有真意，欲辨已忘言。',
    pinyin: 'jié lú zài rén jìng, ér wú chē mǎ xuān.\nwèn jūn hé néng ěr? xīn yuǎn dì zì piān.\ncǎi jú dōng lí xià, yōu rán jiàn nán shān.\nshān qì rì xī jiā, fēi niǎo xiāng yǔ huán.\ncǐ zhōng yǒu zhēn yì, yù biàn yǐ wàng yán.',
    translation: '在人间建造房屋，却没有车马喧嚣。问我为何能这样？心远离尘世地自然偏僻。',
    annotation: '结庐：建造房屋。尔：这样。',
    tags: ['隐逸', '田园', '哲理'], grade: 8, type: '五言古诗'),
  
  // 132. 春望
  Poem(id: 'c8-06', title: '春望', author: '杜甫', dynasty: '唐',
    content: '国破山河在，城春草木深。\n感时花溅泪，恨别鸟惊心。\n烽火连三月，家书抵万金。\n白头搔更短，浑欲不胜簪。',
    pinyin: 'guó pò shān hé zài, chéng chūn cǎo mù shēn.\ngǎn shí huā jiàn lèi, hèn bié niǎo jīng xīn.\nfēng huǒ lián sān yuè, jiā shū dǐ wàn jīn.\nbái tóu sāo gèng duǎn, hún yù bù shèng zān.',
    translation: '国家破碎山河依旧，城中春天草木深深。感伤时事花也溅泪，怨恨离别鸟也惊心。',
    annotation: '烽火：战火。抵：值。簪：簪子。',
    tags: ['爱国', '战争', '思乡'], grade: 8, type: '五言律诗'),
  
  // 133. 雁门太守行
  Poem(id: 'c8-07', title: '雁门太守行', author: '李贺', dynasty: '唐',
    content: '黑云压城城欲摧，甲光向日金鳞开。\n角声满天秋色里，塞上燕脂凝夜紫。\n半卷红旗临易水，霜重鼓寒声不起。\n报君黄金台上意，提携玉龙为君死。',
    pinyin: 'hēi yún yā chéng chéng yù cuī, jiǎ guāng xiàng rì jīn lín kāi.\njiǎo shēng mǎn tiān qiū sè lǐ, sài shàng yān zhī níng yè zǐ.\nbàn juǎn hóng qí lín yì shuǐ, shuāng zhòng gǔ hán shēng bù qǐ.\nbào jūn huáng jīn tái shàng yì, tí xié yù lóng wèi jūn sǐ.',
    translation: '黑云压城城将摧毁，铠甲向日闪金光。号角声满天秋色里，塞上胭脂凝成夜紫。',
    annotation: '甲光：铠甲的光芒。燕脂：胭脂，指血迹。玉龙：宝剑。',
    tags: ['边塞', '战争', '爱国'], grade: 8, type: '七言律诗'),
  
  // 134. 赤壁
  Poem(id: 'c8-08', title: '赤壁', author: '杜牧', dynasty: '唐',
    content: '折戟沉沙铁未销，\n自将磨洗认前朝。\n东风不与周郎便，\n铜雀春深锁二乔。',
    pinyin: 'zhé jǐ chén shā tiě wèi xiāo,\nzì jiāng mó xǐ rèn qián cháo.\ndōng fēng bù yǔ zhōu láng biàn,\ntóng què chūn shēn suǒ èr qiáo.',
    translation: '折断的戟沉在沙中铁还没销蚀，自己磨洗认出是前朝遗物。东风不给周郎方便，铜雀台深锁二乔。',
    annotation: '戟：古代兵器。周郎：周瑜。二乔：大乔小乔。',
    tags: ['怀古', '历史'], grade: 8, type: '七言绝句'),
  
  // 135. 渔家傲
  Poem(id: 'c8-09', title: '渔家傲·秋思', author: '范仲淹', dynasty: '宋',
    content: '塞下秋来风景异，衡阳雁去无留意。\n四面边声连角起，千嶂里，长烟落日孤城闭。\n\n浊酒一杯家万里，燕然未勒归无计。\n羌管悠悠霜满地，人不寐，将军白发征夫泪。',
    pinyin: 'sài xià qiū lái fēng jǐng yì, héng yáng yàn qù wú liú yì.\nsì miàn biān shēng lián jiǎo qǐ, qiān zhàng lǐ, cháng yān luò rì gū chéng bì.\n\nzhuó jiǔ yī bēi jiā wàn lǐ, yān rán wèi lè guī wú jì.\nqiāng guǎn yōu yōu shuāng mǎn dì, rén bù mèi, jiāng jūn bái fà zhēng fū lèi.',
    translation: '塞下秋来风景不同，衡阳雁去毫无留意。四面边声连号角响起，千山里，长烟落日孤城紧闭。',
    annotation: '燕然未勒：指未能建功立业。羌管：羌笛。',
    tags: ['边塞', '思乡', '秋天'], grade: 8, type: '词'),
  
  // 136. 浣溪沙
  Poem(id: 'c8-10', title: '浣溪沙（一曲新词）', author: '晏殊', dynasty: '宋',
    content: '一曲新词酒一杯，去年天气旧亭台。\n夕阳西下几时回？\n\n无可奈何花落去，似曾相识燕归来。\n小园香径独徘徊。',
    pinyin: 'yī qǔ xīn cí jiǔ yī bēi, qù nián tiān qì jiù tíng tái.\nxī yáng xī xià jǐ shí huí?\n\nwú kě nài hé huā luò qù, sì céng xiāng shí yàn guī lái.\nxiǎo yuán xiāng jìng dú pái huái.',
    translation: '一曲新词一杯酒，去年天气旧亭台。夕阳西下几时回？无可奈何花落去，似曾相识燕归来。',
    annotation: '香径：花间小路。徘徊：来回走动。',
    tags: ['感慨', '时光'], grade: 8, type: '词'),
  
  // 137. 关雎
  Poem(id: 'c8-11', title: '关雎', author: '《诗经》', dynasty: '先秦',
    content: '关关雎鸠，在河之洲。\n窈窕淑女，君子好逑。\n参差荇菜，左右流之。\n窈窕淑女，寤寐求之。\n求之不得，寤寐思服。\n悠哉悠哉，辗转反侧。',
    pinyin: 'guān guān jū jiū, zài hé zhī zhōu.\nyǎo tiǎo shū nǚ, jūn zǐ hǎo qiú.\ncēn cī xìng cài, zuǒ yòu liú zhī.\nyǎo tiǎo shū nǚ, wù mèi qiú zhī.\nqiú zhī bù dé, wù mèi sī fú.\nyōu zāi yōu zāi, zhǎn zhuǎn fǎn cè.',
    translation: '雎鸠鸟关关叫，在河中的小洲上。美丽善良的姑娘，是君子的好配偶。',
    annotation: '雎鸠：一种水鸟。窈窕：美好的样子。好逑：好配偶。',
    tags: ['爱情', '诗经'], grade: 8, type: '诗经'),
  
  // 138. 蒹葭
  Poem(id: 'c8-12', title: '蒹葭', author: '《诗经》', dynasty: '先秦',
    content: '蒹葭苍苍，白露为霜。\n所谓伊人，在水一方。\n溯洄从之，道阻且长。\n溯游从之，宛在水中央。',
    pinyin: 'jiān jiā cāng cāng, bái lù wéi shuāng.\nsuǒ wèi yī rén, zài shuǐ yī fāng.\nsù huí cóng zhī, dào zǔ qiě cháng.\nsù yóu cóng zhī, wǎn zài shuǐ zhōng yāng.',
    translation: '芦苇苍苍，白露成霜。所说的那人，在水的那一方。逆流而上去追寻，道路艰险又漫长。',
    annotation: '蒹葭：芦苇。伊人：那人。溯洄：逆流而上。',
    tags: ['爱情', '诗经'], grade: 8, type: '诗经'),
  
  // 139. 送杜少府之任蜀州
  Poem(id: 'c8-13', title: '送杜少府之任蜀州', author: '王勃', dynasty: '唐',
    content: '城阙辅三秦，风烟望五津。\n与君离别意，同是宦游人。\n海内存知己，天涯若比邻。\n无为在歧路，儿女共沾巾。',
    pinyin: 'chéng què fǔ sān qín, fēng yān wàng wǔ jīn.\nyǔ jūn lí bié yì, tóng shì huàn yóu rén.\nhǎi nèi cún zhī jǐ, tiān yá ruò bǐ lín.\nwú wéi zài qí lù, ér nǚ gòng zhān jīn.',
    translation: '长安城由三秦拱卫，透过风烟遥望五津。与你离别的心情，同是在外做官的人。',
    annotation: '城阙：指长安。宦游：在外做官。',
    tags: ['送别', '友情', '励志'], grade: 8, type: '五言律诗'),
  
  // 140. 茅屋为秋风所破歌
  Poem(id: 'c8-14', title: '茅屋为秋风所破歌', author: '杜甫', dynasty: '唐',
    content: '八月秋高风怒号，卷我屋上三重茅。\n茅飞渡江洒江郊，高者挂罥长林梢，下者飘转沉塘坳。\n南村群童欺我老无力，忍能对面为盗贼。\n公然抱茅入竹去，唇焦口燥呼不得，归来倚杖自叹息。\n\n俄顷风定云墨色，秋天漠漠向昏黑。\n布衾多年冷似铁，娇儿恶卧踏里裂。\n床头屋漏无干处，雨脚如麻未断绝。\n自经丧乱少睡眠，长夜沾湿何由彻！\n\n安得广厦千万间，大庇天下寒士俱欢颜！\n风雨不动安如山。呜呼！何时眼前突兀见此屋，吾庐独破受冻死亦足！',
    pinyin: 'bā yuè qiū gāo fēng nù háo, juǎn wǒ wū shàng sān chóng máo.\nmáo fēi dù jiāng sǎ jiāng jiāo, gāo zhě guà juàn cháng lín shāo, xià zhě piāo zhuǎn chén táng ào.',
    translation: '八月秋高风怒号，卷走我屋上三层茅草。茅草飞过江洒落江郊。',
    annotation: '罥：挂。坳：低洼处。广厦：宽敞的房屋。',
    tags: ['忧民', '抒怀'], grade: 8, type: '七言古诗'),
  
  // 141. 卖炭翁
  Poem(id: 'c8-15', title: '卖炭翁', author: '白居易', dynasty: '唐',
    content: '卖炭翁，伐薪烧炭南山中。\n满面尘灰烟火色，两鬓苍苍十指黑。\n卖炭得钱何所营？身上衣裳口中食。\n可怜身上衣正单，心忧炭贱愿天寒。\n夜来城外一尺雪，晓驾炭车辗冰辙。\n牛困人饥日已高，市南门外泥中歇。\n\n翩翩两骑来是谁？黄衣使者白衫儿。\n手把文书口称敕，回车叱牛牵向北。\n一车炭，千余斤，宫使驱将惜不得。\n半匹红绡一丈绫，系向牛头充炭直。',
    pinyin: 'mài tàn wēng, fá xīn shāo tàn nán shān zhōng.\nmǎn miàn chén huī yān huǒ sè, liǎng bìn cāng cāng shí zhǐ hēi.\nmài tàn dé qián hé suǒ yíng? shēn shàng yī cháng kǒu zhōng shí.\nkě lián shēn shàng yī zhèng dān, xīn yōu tàn jiàn yuàn tiān hán.\nyè lái chéng wài yī chǐ xuě, xiǎo jià tàn chē niǎn bīng zhé.\nniú kùn rén jī rì yǐ gāo, shì nán mén wài ní zhōng xiē.\n\npiān piān liǎng qí lái shì shuí? huáng yī shǐ zhě bái shān ér.\nshǒu bǎ wén shū kǒu chēng chì, huí chē chì niú qiān xiàng běi.\nyī chē tàn, qiān yú jīn, gōng shǐ qū jiāng xī bù dé.\nbàn pǐ hóng xiāo yī zhàng líng, xì xiàng niú tóu chōng tàn zhí.',
    translation: '卖炭翁，在南山中砍柴烧炭。满面尘灰烟火色，两鬓苍苍十指黑。',
    annotation: '伐薪：砍柴。营：谋求。绡：丝织品。',
    tags: ['忧民', '讽刺'], grade: 8, type: '七言古诗'),
];
