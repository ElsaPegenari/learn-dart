import 'dart:io';

import 'package:belajar_dart/hero.dart';
import 'package:belajar_dart/monster.dart';
import 'package:belajar_dart/monster_kecoa.dart';
import 'package:belajar_dart/monster_ubur_ubur.dart';

main(List<String> args) async {
  Hero h = Hero();
  Monster monster = MonsterUburUbur();
  List<Monster> monsters = [];

  monsters.add(MonsterUburUbur());
  monsters.add(MonsterKecoa());
  monsters.add(Monster());

  print((monster as MonsterUburUbur).swim());

  // for (Monster m in monsters) {
  //   if (m is MonsterUburUbur) {
  //     print(m.swim());
  //   }
  // }
}

