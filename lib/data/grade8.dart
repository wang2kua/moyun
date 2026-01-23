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
    translation: '从前的仙人已经乘着黄鹤飞走了,这个地方只剩下空荡荡的黄鹤楼。黄鹤一去就再也没有回来,千百年来只有白云在天空中悠悠飘荡。晴朗的天气里,汉阳的树木清清楚楚地映入眼帘,鹦鹉洲上长满了茂盛的芳草。傍晚时分,我的家乡在哪里呢？江面上烟雾迷蒙,让人感到忧愁。',
    annotation: '昔人：传说中的仙人。历历：清晰可见。萋萋：茂盛的样子。',
    tags: ['怀古', '思乡'], grade: 8, type: '七言律诗'),
  
  // 129. 使至塞上
  Poem(id: 'c8-03', title: '使至塞上', author: '王维', dynasty: '唐',
    content: '单车欲问边，属国过居延。\n征蓬出汉塞，归雁入胡天。\n大漠孤烟直，长河落日圆。\n萧关逢候骑，都护在燕然。',
    pinyin: 'dān chē yù wèn biān, shǔ guó guò jū yán.\nzhēng péng chū hàn sài, guī yàn rù hú tiān.\ndà mò gū yān zhí, cháng hé luò rì yuán.\nxiāo guān féng hòu qí, dū hù zài yān rán.',
    translation: '我独自乘着简陋的车子,要到边疆去慰问,作为使者经过了居延。像飘飞的蓬草一样离开了汉朝的边塞,像归去的大雁一样飞入北方的天空。广阔的沙漠中一股烽烟笔直地升起,漫长的黄河上落日浑圆。到了萧关遇到侦察的骑兵,得知都护正在燕然前线。',
    annotation: '单车：轻车简从。征蓬：飘飞的蓬草。',
    tags: ['边塞', '写景'], grade: 8, type: '五言律诗'),
  
  // 130. 钱塘湖春行
  Poem(id: 'c8-04', title: '钱塘湖春行', author: '白居易', dynasty: '唐',
    content: '孤山寺北贾亭西，水面初平云脚低。\n几处早莺争暖树，谁家新燕啄春泥。\n乱花渐欲迷人眼，浅草才能没马蹄。\n最爱湖东行不足，绿杨阴里白沙堤。',
    pinyin: 'gū shān sì běi jiǎ tíng xī, shuǐ miàn chū píng yún jiǎo dī.\njǐ chù zǎo yīng zhēng nuǎn shù, shuí jiā xīn yàn zhuó chūn ní.\nluàn huā jiàn yù mí rén yǎn, qiǎn cǎo cái néng mò mǎ tí.\nzuì ài hú dōng xíng bù zú, lǜ yáng yīn lǐ bái shā dī.',
    translation: '在孤山寺的北面,贾亭的西边,湖水刚刚涨平,云朵低低地贴近水面。几处地方早来的黄莺争抢着向阳温暖的树木,不知是谁家新来的燕子正在衔泥筑巢。五颜六色的野花渐渐让人眼花缭乱,浅浅的春草刚刚能够遮住马蹄。我最喜欢湖东边的美景,怎么走也走不够,那绿色杨柳树荫下的白沙堤。',
    annotation: '云脚：低垂的云。暖树：向阳的树。',
    tags: ['春天', '写景', '西湖'], grade: 8, type: '七言律诗'),
  
  // 131. 饮酒(其五)
  Poem(id: 'c8-05', title: '饮酒（其五）', author: '陶渊明', dynasty: '东晋',
    content: '结庐在人境，而无车马喧。\n问君何能尔？心远地自偏。\n采菊东篱下，悠然见南山。\n山气日夕佳，飞鸟相与还。\n此中有真意，欲辨已忘言。',
    pinyin: 'jié lú zài rén jìng, ér wú chē mǎ xuān.\nwèn jūn hé néng ěr? xīn yuǎn dì zì piān.\ncǎi jú dōng lí xià, yōu rán jiàn nán shān.\nshān qì rì xī jiā, fēi niǎo xiāng yǔ huán.\ncǐ zhōng yǒu zhēn yì, yù biàn yǐ wàng yán.',
    translation: '我在人群居住的地方盖了房子,却听不到车马的喧闹声。你问我怎么能做到这样？心远离了尘世,住的地方自然就变得偏僻了。在东边的篱笆下采摘菊花,悠闲地抬起头看见了南山。傍晚时分山里的景色特别美好,飞鸟结伴飞回自己的巢穴。这里面包含着人生真正的意义,想要说清楚却已经忘记了用什么语言表达。',
    annotation: '结庐：建造房屋。尔：这样。',
    tags: ['隐逸', '田园', '哲理'], grade: 8, type: '五言古诗'),
  
  // 132. 春望
  Poem(id: 'c8-06', title: '春望', author: '杜甫', dynasty: '唐',
    content: '国破山河在，城春草木深。\n感时花溅泪，恨别鸟惊心。\n烽火连三月，家书抵万金。\n白头搔更短，浑欲不胜簪。',
    pinyin: 'guó pò shān hé zài, chéng chūn cǎo mù shēn.\ngǎn shí huā jiàn lèi, hèn bié niǎo jīng xīn.\nfēng huǒ lián sān yuè, jiā shū dǐ wàn jīn.\nbái tóu sāo gèng duǎn, hún yù bù shèng zān.',
    translation: '国家破碎了,但山河依然存在。城里到了春天,草木长得茂盛荒凉。感伤时局,看到花儿也忍不住流泪。痛恨离别,听到鸟叫也让人心惊。战火连续燃烧了三个月。家里的书信珍贵得值万两黄金。白头发越搔越稀少。简直短得连簪子都插不住了。',
    annotation: '烽火：战火。抵：值。簪：簪子。',
    tags: ['爱国', '战争', '思乡'], grade: 8, type: '五言律诗'),
  
  // 133. 雁门太守行
  Poem(id: 'c8-07', title: '雁门太守行', author: '李贺', dynasty: '唐',
    content: '黑云压城城欲摧，甲光向日金鳞开。\n角声满天秋色里，塞上燕脂凝夜紫。\n半卷红旗临易水，霜重鼓寒声不起。\n报君黄金台上意，提携玉龙为君死。',
    pinyin: 'hēi yún yā chéng chéng yù cuī, jiǎ guāng xiàng rì jīn lín kāi.\njiǎo shēng mǎn tiān qiū sè lǐ, sài shàng yān zhī níng yè zǐ.\nbàn juǎn hóng qí lín yì shuǐ, shuāng zhòng gǔ hán shēng bù qǐ.\nbào jūn huáng jīn tái shàng yì, tí xié yù lóng wèi jūn sǐ.',
    translation: '乌黑的云层压向城头,城墙好像要被摧毁,盔甲迎着阳光闪烁,像金色的鱼鳞张开。号角声响彻秋天的天空,边塞上的泥土在夜色中凝成紫红色。红旗半卷着靠近易水河边,霜雪太重战鼓冻僵了敲不响。为了报答君王在黄金台上的恩遇,手握宝剑愿意为君王战死沙场。',
    annotation: '甲光：铠甲的光芒。燕脂：胭脂，指血迹。玉龙：宝剑。',
    tags: ['边塞', '战争', '爱国'], grade: 8, type: '七言律诗'),
  
  // 134. 赤壁
  Poem(id: 'c8-08', title: '赤壁', author: '杜牧', dynasty: '唐',
    content: '折戟沉沙铁未销，\n自将磨洗认前朝。\n东风不与周郎便，\n铜雀春深锁二乔。',
    pinyin: 'zhé jǐ chén shā tiě wèi xiāo,\nzì jiāng mó xǐ rèn qián cháo.\ndōng fēng bù yǔ zhōu láng biàn,\ntóng què chūn shēn suǒ èr qiáo.',
    translation: '折断的戟沉在沙中铁还没销蚀，自己磨洗认出是前朝遗物。东风不给周郎方便，铜雀台深锁二乔。',
    annotation: '戟：古代兵器。周郎：周瑜。二乔：大乔小乔。',
    tags: ['怀古', '历史'], grade: 8, type: '七言绝句'),
  
  // 135. 渔家傲·天接云涛连晓雾
  Poem(id: 'c8-09', title: '渔家傲·天接云涛连晓雾', author: '李清照', dynasty: '宋',
    content: '天接云涛连晓雾，星河欲转千帆舞。\n仿佛梦魂归帝所，闻天语，殷勤问我归何处。\n\n我报路长嗟日暮，学诗谩有惊人句。\n九万里风鹏正举，风休住，蓬舟吹取三山去。',
    pinyin: 'tiān jiē yún tāo lián xiǎo wù, xīng hé yù zhuǎn qiān fān wǔ.\nfǎng fú mèng hún guī dì suǒ, wén tiān yǔ, yīn qín wèn wǒ guī hé chù.\n\nwǒ bào lù cháng jiē rì mù, xué shī màn yǒu jīng rén jù.\njiǔ wàn lǐ fēng péng zhèng jǔ, fēng xiū zhù, péng zhōu chuī qǔ sān shān qù.',
    translation: '天空连接着云涛，清晨的雾气弥漫，银河要转动，千帆在风中起舞。仿佛梦中的魂魄回到了天帝的居所，听到天帝殷勤地问我要归向何处。我回答说路途遥远，叹息天色已晚，学作诗词却没有惊人的佳句。九万里的长风正在吹起，大鹏正要展翅高飞，风啊你不要停止，把我的小船吹到仙山去吧。',
    annotation: '帝所：天帝居住的地方。三山：传说中的海上仙山。',
    tags: ['梦境', '豪放'], grade: 8, type: '词'),
  
  // 136. 浣溪沙
  Poem(id: 'c8-10', title: '浣溪沙', author: '晏殊', dynasty: '宋',
    content: '一曲新词酒一杯，\n去年天气旧亭台。\n夕阳西下几时回？\n\n无可奈何花落去，\n似曾相识燕归来。\n小园香径独徘徊。',
    pinyin: 'yī qǔ xīn cí jiǔ yī bēi,\nqù nián tiān qì jiù tíng tái.\nxī yáng xī xià jǐ shí huí?\n\nwú kě nài hé huā luò qù,\nsì céng xiāng shí yàn guī lái.\nxiǎo yuán xiāng jìng dú pái huái.',
    translation: '听一支新曲喝一杯美酒，还是去年的天气旧日的亭台。西落的夕阳何时再回来？花儿凋谢是多么无可奈何，那翻飞的燕子好像是旧相识的。在弥漫花香的小路上独自徘徊。',
    annotation: '无可奈何：没有办法。似曾相识：好像曾经认识。',
    tags: ['伤春', '感怀'], grade: 8, type: '词'),

  // 137. 关雎
  Poem(id: 'c8-11', title: '关雎', author: '《诗经》', dynasty: '先秦',
    content: '关关雎鸠，在河之洲。\n窈窕淑女，君子好逑。\n参差荇菜，左右流之。\n窈窕淑女，寤寐求之。\n求之不得，寤寐思服。\n悠哉悠哉，辗转反侧。\n参差荇菜，左右采之。\n窈窕淑女，琴瑟友之。\n参差荇菜，左右芼之。\n窈窕淑女，钟鼓乐之。',
    pinyin: 'guān guān jū jiū, zài hé zhī zhōu.\nyǎo tiǎo shū nǚ, jūn zǐ hǎo qiú.\ncēn cī xìng cài, zuǒ yòu liú zhī.\nyǎo tiǎo shū nǚ, wù mèi qiú zhī.\nqiú zhī bù dé, wù mèi sī fú.\nyōu zāi yōu zāi, zhǎn zhuǎn fǎn cè.\ncēn cī xìng cài, zuǒ yòu cǎi zhī.\nyǎo tiǎo shū nǚ, qín sè yǒu zhī.\ncēn cī xìng cài, zuǒ yòu mào zhī.\nyǎo tiǎo shū nǚ, zhōng gǔ lè zhī.',
    translation: '雎鸠鸟关关地叫着,在河中的小洲上。美丽善良的姑娘,是君子的好配偶。长长短短的荇菜,在水中左右漂动。美丽善良的姑娘,醒着睡着都在追求她。追求却得不到,醒着睡着都在想念她。思念啊思念啊,翻来覆去睡不着觉。长长短短的荇菜,在水中左右采摘它。美丽善良的姑娘,弹琴鼓瑟来亲近她。长长短短的荇菜,在水中左右挑选它。美丽善良的姑娘,敲钟打鼓让她快乐。',
    annotation: '雎鸠：一种水鸟。窈窕：美好的样子。好逑：好配偶。芼：拨取。',
    tags: ['爱情', '诗经'], grade: 8, type: '诗经'),
  
  // 138. 蒹葭
  Poem(id: 'c8-12', title: '蒹葭', author: '《诗经》', dynasty: '先秦',
    content: '蒹葭苍苍，白露为霜。\n所谓伊人，在水一方。\n溯洄从之，道阻且长。\n溯游从之，宛在水中央。\n蒹葭萋萋，白露未晞。\n所谓伊人，在水之湄。\n溯洄从之，道阻且跻。\n溯游从之，宛在水中坻。\n蒹葭采采，白露未已。\n所谓伊人，在水之涘。\n溯洄从之，道阻且右。\n溯游从之，宛在水中沚。',
    pinyin: 'jiān jiā cāng cāng, bái lù wéi shuāng.\nsuǒ wèi yī rén, zài shuǐ yī fāng.\nsù huí cóng zhī, dào zǔ qiě cháng.\nsù yóu cóng zhī, wǎn zài shuǐ zhōng yāng.\njiān jiā qī qī, bái lù wèi xī.\nsuǒ wèi yī rén, zài shuǐ zhī méi.\nsù huí cóng zhī, dào zǔ qiě jī.\nsù yóu cóng zhī, wǎn zài shuǐ zhōng chí.\njiān jiā cǎi cǎi, bái lù wèi yǐ.\nsuǒ wèi yī rén, zài shuǐ zhī sì.\nsù huí cóng zhī, dào zǔ qiě yòu.\nsù yóu cóng zhī, wǎn zài shuǐ zhōng zhǐ.',
    translation: '茂盛的葛草啊,白色的露水凝结成了霜。我心中的那个人,就在河水的另一边。逆流而上去追寻她,道路艰险又漫长。顺流而下去寻找她,她好像就在水的中央。茂盛的葛草啊,白色的露水还没有干。我心中的那个人,就在河水的岸边。逆流而上去追寻她,道路艰险难攀登。顺流而下去寻找她,她好像在水中的小岛上。茂盛的葛草啊,白色的露水还没有完全消失。我心中的那个人,就在水的边上。逆流而上去追寻她,道路艰险又曲折。顺流而下去寻找她,她好像在水中的高地上。',
    annotation: '蒹葭：芦苇。伊人：那人。溯洄：逆流而上。',
    tags: ['爱情', '诗经'], grade: 8, type: '诗经'),
  
  // 139. 送杜少府之任蜀州
  Poem(id: 'c8-13', title: '送杜少府之任蜀州', author: '王勃', dynasty: '唐',
    content: '城阙辅三秦，风烟望五津。\n与君离别意，同是宦游人。\n海内存知己，天涯若比邻。\n无为在歧路，儿女共沾巾。',
    pinyin: 'chéng què fǔ sān qín, fēng yān wàng wǔ jīn.\nyǔ jūn lí bié yì, tóng shì huàn yóu rén.\nhǎi nèi cún zhī jǐ, tiān yá ruò bǐ lín.\nwú wéi zài qí lù, ér nǚ gòng zhān jīn.',
    translation: '雄伟的长安城被三秦大地环绕护卫着,透过迷蒙的风烟遥望蜀地的五津。和你离别时的心情啊,我们都是为了做官而在外奔波的人。四海之内只要有知心的朋友,即使远在天边也像近在眼前一样。不要在分别的岔路口,像小儿女一样哭得泪湿衣襟。',
    annotation: '城阙：指长安。宦游：在外做官。',
    tags: ['送别', '友情', '励志'], grade: 8, type: '五言律诗'),
  
  // 140. 茅屋为秋风所破歌
  Poem(id: 'c8-14', title: '茅屋为秋风所破歌', author: '杜甫', dynasty: '唐',
    content: '八月秋高风怒号，卷我屋上三重茅。\n茅飞渡江洒江郊，高者挂罥长林梢，下者飘转沉塘坳。\n南村群童欺我老无力，忍能对面为盗贼。\n公然抱茅入竹去，唇焦口燥呼不得，归来倚杖自叹息。\n\n俄顷风定云墨色，秋天漠漠向昏黑。\n布衾多年冷似铁，娇儿恶卧踏里裂。\n床头屋漏无干处，雨脚如麻未断绝。\n自经丧乱少睡眠，长夜沾湿何由彻！\n\n安得广厦千万间，大庇天下寒士俱欢颜！\n风雨不动安如山。呜呼！何时眼前突兀见此屋，吾庐独破受冻死亦足！',
    pinyin: 'bā yuè qiū gāo fēng nù háo, juǎn wǒ wū shàng sān chóng máo.\nmáo fēi dù jiāng sǎ jiāng jiāo, gāo zhě guà juàn cháng lín shāo, xià zhě piāo zhuǎn chén táng ào.\nnán cūn qún tóng qī wǒ lǎo wú lì, rěn néng duì miàn wéi dào zéi.\ngōng rán bào máo rù zhú qù, chún jiāo kǒu zào hū bù dé, guī lái yǐ zhàng zì tàn xī.\n\né qǐng fēng dìng yún mò sè, qiū tiān mò mò xiàng hūn hēi.\nbù qīn duō nián lěng sì tiě, jiāo ér è wò tà lǐ liè.\nchuáng tóu wū lòu wú gān chù, yǔ jiǎo rú má wèi duàn jué.\nzì jīng sàng luàn shǎo shuì mián, cháng yè zhān shī hé yóu chè!\n\nān dé guǎng shà qiān wàn jiān, dà bì tiān xià hán shì jù huān yán!\nfēng yǔ bù dòng ān rú shān. wū hū! hé shí yǎn qián tū wù jiàn cǐ wū, wú lú dú pò shòu dòng sǐ yì zú!',
    translation: '八月深秋时节,狂风怒吼着,卷走了我屋顶上好几层茅草。茅草飞过江去,散落在江边郊外,飞得高的挂在了高高的树梢上,飞得低的飘落转圈沉到了池塘的低洼处。南村的一群小孩子欺负我年老没有力气,竟然忍心当着我的面做强盗一样的事,公然抱着茅草跑进竹林里去了。我喊得嘴唇焦干、口干舌燥也叫不住他们,只好拄着拐杖回来,独自叹息。不一会儿风停了,天上的云像墨一样黑,秋天的天空阴沉沉地渐渐黑了下来。盖了多年的布被子冰冷得像铁一样,孩子睡觉不老实,把被子都蹬破了。床头屋顶漏雨,没有一处是干的,雨水像麻线一样密密地下个不停。自从经历了战乱之后就很少能睡好觉,这漫长的雨夜浑身湿透,怎么能熬到天亮啊！怎样才能得到千万间宽敞的房子,让天下所有受苦受穷的读书人都能住进去,个个喜笑颜开,房子在风雨中也不动摇,安稳得像山一样。唉！什么时候眼前能突然出现这样的房子,就算我自己的茅屋被吹破、我受冻而死也心满意足了！',
    annotation: '罥：挂。坳：低洼处。广厦：宽敞的房屋。',
    tags: ['忧民', '抒怀'], grade: 8, type: '七言古诗'),
  
  // 141. 卖炭翁
  Poem(id: 'c8-15', title: '卖炭翁', author: '白居易', dynasty: '唐',
    content: '卖炭翁，伐薪烧炭南山中。\n满面尘灰烟火色，两鬓苍苍十指黑。\n卖炭得钱何所营？身上衣裳口中食。\n可怜身上衣正单，心忧炭贱愿天寒。\n夜来城外一尺雪，晓驾炭车辗冰辙。\n牛困人饥日已高，市南门外泥中歇。\n\n翩翩两骑来是谁？黄衣使者白衫儿。\n手把文书口称敕，回车叱牛牵向北。\n一车炭，千余斤，宫使驱将惜不得。\n半匹红绡一丈绫，系向牛头充炭直。',
    pinyin: 'mài tàn wēng, fá xīn shāo tàn nán shān zhōng.\nmǎn miàn chén huī yān huǒ sè, liǎng bìn cāng cāng shí zhǐ hēi.\nmài tàn dé qián hé suǒ yíng? shēn shàng yī cháng kǒu zhōng shí.\nkě lián shēn shàng yī zhèng dān, xīn yōu tàn jiàn yuàn tiān hán.\nyè lái chéng wài yī chǐ xuě, xiǎo jià tàn chē niǎn bīng zhé.\nniú kùn rén jī rì yǐ gāo, shì nán mén wài ní zhōng xiē.\n\npiān piān liǎng qí lái shì shuí? huáng yī shǐ zhě bái shān ér.\nshǒu bǎ wén shū kǒu chēng chì, huí chē chì niú qiān xiàng běi.\nyī chē tàn, qiān yú jīn, gōng shǐ qū jiāng xī bù dé.\nbàn pǐ hóng xiāo yī zhàng líng, xì xiàng niú tóu chōng tàn zhí.',
    translation: '卖炭的老爷爷,在南山里砍柴烧炭。满脸都是灰尘和烟熏的颜色,两边鬓发花白,十个手指乌黑。卖炭赚来的钱用来做什么？买身上穿的衣服和嘴里吃的食物。可怜他身上的衣服很单薄,却担心炭卖不上好价钱,希望天气更冷一些。昨天夜里城外下了一尺厚的雪,天刚亮就赶着炭车在冰上压出车辙。牛累了人饿了太阳已经升得很高,在集市南门外的泥地里休息。两个骑马的人轻快地走来,是谁呀？是穿黄衣服的太监和穿白衣服的手下。手里拿着文件嘴里说是皇帝的命令,调转车头吆喝着牛往北边走。一车炭,一千多斤重,宫里的太监赶着拉走,老人舍不得也没办法。半匹红色薄纱和一丈长的绫子,绑在牛头上就算是炭的价钱了。',
    annotation: '伐薪：砍柴。营：谋求。绡：丝织品。',
    tags: ['忧民', '讽刺'], grade: 8, type: '七言古诗'),
];
