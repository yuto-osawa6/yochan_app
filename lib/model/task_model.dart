import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるファイル名を指定する（ `生成元ファイル名.freezed.dart` ）
part 'task_model.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(0) int mainCount,
    @Default(0) int subCount,
    @Default(0) int lalacount,
  }) = _HomePageState;
}