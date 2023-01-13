

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yochan/service/youchan_client.dart';
import 'package:yochan/view_model/theme_viewmodel.dart';
import 'package:yochan/view_model/youchan_vm.dart';

Future<dynamic> YouchanThemeSelect (BuildContext context, WidgetRef ref) async {
  print("a");
  final _ThemeState = ref.watch(ThemeProvider);
  // provider（状態の操作）
  final _ThemeNotifier = ref.watch(ThemeProvider.notifier);

  final _YouchanNotifier = ref.watch(YouchanProvider.notifier);


  showModalBottomSheet(
      useRootNavigator: true,
      backgroundColor:Colors.transparent,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
          color:  Theme.of(context).scaffoldBackgroundColor,
          // borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(20.0),
          //       topRight: Radius.circular(20.0),
          //     ),
        ),
        child:Column(
          
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.square,color:Colors.indigo[700]),
                  title: Text('デフォルトテーマ'),
                  onTap: () {
                    _ThemeNotifier.changeThemeNumber(0);
                    _YouchanNotifier.resetValue();
                  }
                  // leading: Material(
                  //   shape: CircleBorder(
                  //     side: BorderSide(),
                  //   ),
                  //   child:Icon(Icons.square,color:Colors.blueGrey),
                  // ),
                  // title: Text('デフォルトテーマ'),
                  // onTap: () =>  _ThemeNotifier.changeThemeNumber(0),
                ),
                // ListTile(
                //   leading: Icon(Icons.square,color:Colors.lightBlue),
                //   title: Text('ライトテーマ'),
                //   onTap: () {
                //     _ThemeNotifier.changeThemeNumber(1);
                //     _YouchanNotifier.resetValue();
                //   }
                // ),
                ListTile(
                  leading: Icon(Icons.square,color:Colors.black),
                  title: Text('ダークテーマ'),
                  onTap: () {
                    _ThemeNotifier.changeThemeNumber(2);
                    _YouchanNotifier.resetValue();
                  }
                ),
                // ListTile(
                //   leading: Icon(Icons.square,color:Colors.orangeAccent),
                //   title: Text('オレンジテーマ'),
                //   onTap: () => _ThemeNotifier.changeThemeNumber(3),
                // ),
              ],
            )
            );
          }
    );



}