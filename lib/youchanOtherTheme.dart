

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yochan/view_model/theme_viewmodel.dart';
import 'package:yochan/view_model/youchan_vm.dart';

dynamic OtherTheme = (WidgetRef ref) {
  final _ThemeState = ref.watch(ThemeProvider);
  // provider（状態の操作）
  // final _YouchanNotifier = ref.watch(YouchanProvider.notifier);

  switch(_ThemeState.number) {
    case 0:
      // print(animalList[0]);
      return yDefaultTheme();
      // break;
    case 1:
      return yLightTheme();
    case 2:
      return yDarkTheme();
    case 3:
    return yDarkTheme2();
    default:
      return yDefaultTheme();
  }
};

// var yDefaultTheme = {
//   "boxColor" : Colors.black12,
// };

// var yLightTheme = {
//   "boxColor" : Colors.black12,
// };

// var yDarkTheme = {
//   "boxColor" : Colors.black12,
// };


class yDefaultTheme {
  // インスタンス変数
  final boxColor = Colors.indigo[600];
  final modalSheatBaseColor = Colors.indigo;


  // コンストラクタ（class名と一緒。javaも同じっぽい）
  yDefaultTheme() {
  }
}

class yLightTheme {
  // インスタンス変数
  final boxColor = Colors.blueGrey[50];
  // final boxColor = Colors.white60;
  final modalSheatBaseColor = Colors.white;



  // コンストラクタ（class名と一緒。javaも同じっぽい）
  yLightTheme() {
  }
}

class yDarkTheme {
  // インスタンス変数
  final boxColor = Colors.black26;
  final modalSheatBaseColor = Colors.grey[850];

  // コンストラクタ（class名と一緒。javaも同じっぽい）
  yDarkTheme() {
  }
}

class yDarkTheme2 {
  // インスタンス変数
  final boxColor = Colors.orange[700];
  final modalSheatBaseColor = Colors.orange[800];

  // コンストラクタ（class名と一緒。javaも同じっぽい）
  yDarkTheme() {
  }
}


