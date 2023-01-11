import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yochan/model/task_model.dart';
import 'package:yochan/model/theme.dart';
import 'package:yochan/model/youchan.dart';

import 'package:yochan/repository/task_repo.dart';
import 'package:yochan/theme.dart';
import 'package:yochan/theme/youchan_theme.dart';

class ThemeNotifier extends StateNotifier<ThemeYo> {
  // 初期値の指定
  ThemeNotifier() : super(ThemeYo());

  // final theme = [
  //   Theme1,
  //   ThemeData.dark(),
  //   ThemeData.light()
  // ];

  void changeThemeNumber(int value){
    print(value);
    state = state.copyWith(number: value);
  }
}

// HomePageNotifierの状態を管理する
final ThemeProvider =
    StateNotifierProvider.autoDispose<ThemeNotifier, ThemeYo>(
  (ref) => ThemeNotifier(),
);