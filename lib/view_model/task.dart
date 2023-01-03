// import 'package:coffee_list_dio/model/coffee.dart';
// import 'package:coffee_list_dio/repository/repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yochan/model/task.dart';
import 'package:yochan/repository/task_repo.dart';

// Repository(APIの取得)の状態を管理する
// final repositoryProvider = Provider((ref) => UserRepository());

// 上記を非同期で管理する
// final listProvider = FutureProvider<List<Task>>((ref) async {
//   final repository = ref.read(repositoryProvider);
//   return await repository.fetchUsers();
// });