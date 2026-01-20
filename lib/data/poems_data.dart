import '../models/poem.dart';
import 'grade1.dart';
import 'grade2.dart';
import 'grade3.dart';
import 'grade4.dart';
import 'grade5.dart';
import 'grade6.dart';
import 'middle_school.dart';

// 合并所有诗词
final List<Poem> allPoems = [
  ...grade1Poems,
  ...grade2Poems,
  ...grade3Poems,
  ...grade4Poems,
  ...grade5Poems,
  ...grade6Poems,
  ...middleSchoolPoems,
];

// 按学段分组
final List<Poem> primaryPoems = [
  ...grade1Poems,
  ...grade2Poems,
  ...grade3Poems,
  ...grade4Poems,
  ...grade5Poems,
  ...grade6Poems,
];

final List<Poem> middlePoems = middleSchoolPoems;
