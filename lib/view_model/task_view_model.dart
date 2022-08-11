import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yochan/model/task_model.dart';

import 'package:yochan/repository/task_repo.dart';

class HomePageNotifier extends StateNotifier<HomePageState> {
  // 初期値の指定
  HomePageNotifier() : super(const HomePageState());

  // メインカウントを+1する
  void increaseMainCount() async {
    state = state.copyWith(mainCount: state.mainCount + 1);
  }

  // サブカウントを+1する
  void increaseSubCount() async {
    state = state.copyWith(subCount: state.subCount + 1);
  }

  // すべてのカウントを0に戻す
  void resetAllCount() async {
    state = state.copyWith(
      mainCount: 0,
      subCount: 0,
    );
  }
  //  final userRepository = UserRepository();
  // dynamic fetchUsers() async {
  //   return await userRepository.fetchUsers();
  // }
}

// HomePageNotifierの状態を管理する
final homePageProvider =
    StateNotifierProvider.autoDispose<HomePageNotifier, HomePageState>(
  (ref) => HomePageNotifier(),
);


// import 'package:yochan/repository/task_repo.dart';

class UserViewModel {
  final userRepository = UserRepository();
  dynamic fetchUsers() async {
    return await userRepository.fetchUsers();
  }
}