

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yochan/service/youchan_client.dart';
import 'package:yochan/view_model/youchan_vm.dart';

Future<dynamic> YouchanCalculate (BuildContext context, WidgetRef ref) async {
  print("a");
  final _YouchanState = ref.watch(YouchanProvider);
  // provider（状態の操作）
  final _YouchanNotifier = ref.watch(YouchanProvider.notifier);
  // print(_YouchanState.positionValue!.length == 0);
  // print(_YouchanState.positionValue!.length);
  // print(_YouchanState.positionValue.runtimeType);

  // _YouchanState.ls== "Long"?-1:1;
  if(_YouchanState.positionValue == null){
    print("a");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('空欄の箇所があります。')));
    return;
  }
  if(_YouchanState.inValue == null){
    print("b");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('空欄の箇所があります。')));
    return;
  }
  if(_YouchanState.outValue == null){
    print("b");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('空欄の箇所があります。')));
    return;
  }
  if(_YouchanState.nari == null){
    print("b");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('空欄の箇所があります。')));
    return;
  }
  if(_YouchanState.tate == null){
    print("b");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('空欄の箇所があります。')));
    return;
  }
  // final btc1 = useState<double>(0);
  // final btc1yen = useState(0);

  // final btc2 = useState<double>(0);
  // final btc2yen = useState(0);

  // final btc3 = useState<double>(0);
  // final btc3yen = useState(0);

  // final btc4 = useState<double>(0);
  // final btc4yen = useState(0);


  try{
    var a = await ApiClientCreateUser().fetchApiCreateUser();
    _YouchanNotifier.changeDollerYen(double.parse(a));

    final positionValue = int.parse(_YouchanState.positionValue!);
    final inValue = int.parse(_YouchanState.inValue!);
    final outValue = int.parse(_YouchanState.outValue!);
    final nari = double.parse(_YouchanState.nari!)/100;
    final tate = double.parse(_YouchanState.tate!)/100;
    final yen = 113.9 * outValue;
    // BTC 実現収入
    var BTC_Z = positionValue*((1/outValue)-(1/inValue))*(_YouchanState.ls== "Long"?-1:1);
    print("BTC:${BTC_Z}");
    // BTC ポジション
    var BTC_P = positionValue / inValue;
    var BTC_PO = positionValue / outValue;

    print("BTCP:${BTC_P}");
    // 指指
    var a1 = BTC_P * tate;
    var a1o = BTC_PO * tate;
    // 指成
    var a12 = BTC_P * tate;
    var a12o2 = BTC_PO * nari;
    // 成指
    var b1 = BTC_P * nari;
    var b1o = BTC_PO * tate;
    // 成成
    var b12 = BTC_P * nari;
    var b12o2 = BTC_PO * nari;
    // print(a);
    print(BTC_P);
    print(BTC_PO);
    print(a1);
    print(tate);
    print(nari);
    print(_YouchanState.dollerYen);
    print("${a1},${a1o}");
    print("${a12},${a12o2}");
    print("${b1},${b1o}");
    print("${b12},${b12o2}");


    // 指in指out
    var result1 = BTC_Z + (a1 + a1o);
    var result1_yen = result1 * yen;
    // 指in成out
    var result2 = BTC_Z + (a12 + a12o2);
    var result2_yen = result2 * yen;
    // 成in指out
    var result3 = BTC_Z + (b1 + a1o);
    var result3_yen = result3 * yen;
    // 成in成out
    var result4 = BTC_Z + (b12 + b12o2);
    var result4_yen = result4 * yen;

    print("result1");
    print(result1);
    print(result1_yen);
    print("result2");
    print(result2);
    print(result2_yen);
    print("result3");
    print(result3);
    print(result3_yen);
    print("result4");
    print(result4);
    print(result4_yen);

    print("a");
    print(result1 * (113.9*outValue));



  print(_YouchanState);
  print(MediaQuery.of(context).size.height);
  var kazuki = MediaQuery.of(context).size.height;
  print(kazuki * 0.8);
  showModalBottomSheet(
      backgroundColor:Colors.transparent,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
            decoration: BoxDecoration(
                // color: Colors.orange,
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            height: MediaQuery.of(context).size.height * 0.8,
            width: double.infinity,
            // backgroundColor:Colors.transparent,
            // color: Colors.pink,
            child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // 1
                Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft, //任意のプロパティ
                        child: Text("指IN 指OUT")
                      ),
                      Align(
                        alignment: Alignment.centerRight, //任意のプロパティ
                        child: Text("${result1} BTC")
                      ),
                      Align(
                        alignment: Alignment.centerRight, //任意のプロパティ
                        child: Text("JPY利益 ${result1_yen.toInt()} 円")
                      ),
                    ],
                  )
                ),
                // 2
                 Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft, //任意のプロパティ
                        child: Text("指IN 成OUT")
                      ),
                      Align(
                        alignment: Alignment.centerRight, //任意のプロパティ
                        child: Text("${result2} BTC")
                      ),
                      Align(
                        alignment: Alignment.centerRight, //任意のプロパティ
                        child: Text("JPY利益 ${result2_yen.toInt()} 円")
                      ),
                    ],
                  )
                ),
                // 3
                 Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft, //任意のプロパティ
                        child: Text("成IN 指OUT")
                      ),
                      Align(
                        alignment: Alignment.centerRight, //任意のプロパティ
                        child: Text("${result3} BTC")
                      ),
                      Align(
                        alignment: Alignment.centerRight, //任意のプロパティ
                        child: Text("JPY利益 ${result3_yen.toInt()} 円")
                      ),
                    ],
                  )
                ),
                // 4
                 Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft, //任意のプロパティ
                        child: Text("成IN 成OUT")
                      ),
                      Align(
                        alignment: Alignment.centerRight, //任意のプロパティ
                        child: Text("${result4} BTC")
                      ),
                      Align(
                        alignment: Alignment.centerRight, //任意のプロパティ
                        child: Text("JPY利益 ${result4_yen.toInt()} 円")
                      ),
                    ],
                  )
                 
                ),
              ],
            ),
          )
        );
      },
    );



  }on Exception catch(e){
    // print();
    print(e.toString());
    if(e.toString().contains('Invalid number')){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('空欄の箇所があります。')));
      return;
    }
    if(e.toString().contains('Invalid radix-10 number')){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('正しく入力されていない箇所があります。')));
      return;
    }
  //   switch (e.toString()) {
  //   case e.toString().contains('word'):
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('入力されていない箇所があります。')));
  //     break;
  //   case "en":
  //     break;
  // // 条件に一致しない場合
  //   default:
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('予期しないエラーが発生しました。')));
  //   }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('予期しないエラーが発生しました。')));
    // print("afe");

  }

  // final btc1 = useState(0);
  // final btc2 = useState(0);
  // final btc3 = useState(0);
  // final btc4 = useState(0);


  // print(_YouchanState);
  // // SizeConfig().init(context);
  // print(MediaQuery.of(context).size.height);
  // var kazuki = MediaQuery.of(context).size.height;
  // print(kazuki * 0.8);
  // showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     builder: (context) {
  //       return Container(
  //         height: MediaQuery.of(context).size.height * 0.8,
  //         width: double.infinity,
  //         color: Colors.pink,
  //       );
  //     },
  //   );
}