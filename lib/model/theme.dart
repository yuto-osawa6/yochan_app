
import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'theme.freezed.dart';
// part 'youchan.g.dart';

@freezed
class ThemeYo with _$ThemeYo {
  factory ThemeYo({
    // required int id,
    @Default(0) int number,
  }) = _ThemeYo;

  // factory Youchan.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}