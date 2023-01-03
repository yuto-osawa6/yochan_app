
import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'youchan.freezed.dart';
// part 'youchan.g.dart';

@freezed
class Youchan with _$Youchan {
  factory Youchan({
    // required int id,
    @Default("Long") String ls,
    String? inValue,
    String? outValue,
    String? positionValue,
    String? nari,
    String? tate,
    double? dollerYen,

  }) = _Youchan;

  // factory Youchan.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}