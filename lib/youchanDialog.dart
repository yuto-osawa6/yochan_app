import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yochan/view_model/youchan_vm.dart';

Future<dynamic> ShowSimpleDialog(BuildContext context,WidgetRef ref) async {
  final _YouchanState = ref.watch(YouchanProvider);
  // provider（状態の操作）
  final _YouchanNotifier = ref.watch(YouchanProvider.notifier);
    String? result = "";
    result = await showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('Select Long or Short'),
          children: <Widget>[
            SimpleDialogOption(
              child: ListTile(
                // leading: CircleAvatar(
                //   backgroundColor: Colors.orange.shade200,
                //   child: Text(
                //     'Long',
                //     style: TextStyle(color: Colors.black),
                //   ),
                // ),
                title: Text('Long'),
              ),
              onPressed: () {
                Navigator.pop(
                  context,
                  "Long",
                );
              },
            ),
            SimpleDialogOption(
              child: ListTile(
                // leading: CircleAvatar(
                //   backgroundColor: Colors.grey.shade400,
                //   child: Text(
                //     'U2',
                //     style: TextStyle(color: Colors.black),
                //   ),
                // ),
                title: Text('Short'),
              ),
              onPressed: () {
                Navigator.pop(
                  context,
                  "Short",
                );
              },
            ),
            // SimpleDialogOption(
            //   child: ListTile(
            //     leading: CircleAvatar(
            //       backgroundColor: Colors.grey.shade700,
            //       child: Icon(
            //         Icons.add,
            //         color: Colors.white,
            //       ),
            //     ),
            //     title: Text('Add account'),
            //   ),
            //   onPressed: () {
            //     Navigator.pop(
            //       context,
            //       "Add account",
            //     );
            //   },
            // ),
          ],
        );
      },
    );
    print(result.runtimeType);
    // if(result == null) return
    if(result.runtimeType == String){
      print("a");
      _YouchanNotifier.changeLongOrShort(result!);
    }
    // _YouchanNotifier.changeLongOrShort(result);
    // changeLongOrShort(result)
    // _setLabel(result);
    // print(result);
    // return result;
  }