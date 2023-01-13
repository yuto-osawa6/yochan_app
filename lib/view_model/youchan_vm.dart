import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yochan/model/task_model.dart';
import 'package:yochan/model/youchan.dart';

import 'package:yochan/repository/task_repo.dart';

class YouchanNotifier extends StateNotifier<Youchan> {
  // 初期値の指定
  YouchanNotifier() : super(Youchan());

  void changeLongOrShort(String value){
    print(value);
    state = state.copyWith(ls: value);
  }
  void changeInvalue(String value){
    state = state.copyWith(inValue: value);
  }
  void  changeOutvalue(String value){
    state = state.copyWith(outValue: value);
  }
  void  changePositonvalue(String value){
    state = state.copyWith(positionValue: value);
  }

  void changeTatevalue(String value){
    state = state.copyWith(tate: value);
  }
  void changeNarivalue(String value){
    state = state.copyWith(nari: value);
  }
  void changeDollerYen(double value){
    state = state.copyWith(dollerYen: value);
  }
  void changeDollerYen2(String value){
    state = state.copyWith(dollerYen2: value);
  }
  void resetValue(){
    state = state.copyWith(ls: "Long",nari: "",tate: "",inValue: "",outValue: "",positionValue: "",dollerYen2: "");
  }
}

// HomePageNotifierの状態を管理する
final YouchanProvider =
    StateNotifierProvider.autoDispose<YouchanNotifier, Youchan>(
  (ref) => YouchanNotifier(),
);