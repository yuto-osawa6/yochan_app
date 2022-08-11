// class Tasks {
//   final int id;
//   final String title;

//   Tasks({
//     required this.id,
//     required this.title
//   });

//   factory Tasks.fromJson(Map<String, dynamic> json) {
//     return Tasks(
//         id: json['id'],
//         title: json['title']);
//   }
// }


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  factory Task({
    required int id,
    String? title,
    String? description,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}