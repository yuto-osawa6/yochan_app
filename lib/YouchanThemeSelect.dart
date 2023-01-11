

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

  showModalBottomSheet(
      // backgroundColor:Colors.transparent,
      context: context,
      isScrollControlled: true,
      builder: (context) {
         return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  // leading: Icon(Icons.music_note),
                  leading: Padding(
                    padding: EdgeInsets.all(5),
                    // decoration: BoxDecoration(
                    //   // 枠線
                    //   border: Border.all(color: Colors.blue, width: 2),
                    //   // 角丸
                    //   borderRadius: BorderRadius.circular(8),
                    // ),
                  ),
                  title: Text('default style'),
                  onTap: () =>  _ThemeNotifier.changeThemeNumber(0),
                ),
                ListTile(
                  leading: Icon(Icons.videocam),
                  title: Text('light style'),
                  onTap: () => _ThemeNotifier.changeThemeNumber(1),
                ),
                ListTile(
                  leading: Icon(Icons.camera),
                  title: Text('dark style'),
                  onTap: () => _ThemeNotifier.changeThemeNumber(2),
                ),
              ],
            );
          }
    );



}