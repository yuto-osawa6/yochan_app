import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:yochan/YouchanThemeSelect.dart';
import 'package:yochan/service/youchan_client.dart';
import 'package:yochan/view_model/youchan_vm.dart';
import 'package:yochan/youchanDialog.dart';
import 'package:yochan/youchanMethod.dart';
import 'package:yochan/youchanOtherTheme.dart';
// import 'package:flutter/services.dart';

class YouChanWidget extends HookConsumerWidget {
  var selectedValue = "Long";
  final lists = <String>["Long", "Short"];
  final formatter = NumberFormat("#,###.0");

  final ExpressTextController = TextEditingController();
  final ExpressTextController2 = TextEditingController();
  final ExpressTextController3 = TextEditingController();
  final ExpressTextController4 = TextEditingController();
  final ExpressTextController5 = TextEditingController();
  final ExpressTextController6 = TextEditingController();


  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _YouchanState = ref.watch(YouchanProvider);
    // provider（状態の操作）
    final _YouchanNotifier = ref.watch(YouchanProvider.notifier);
    // Future<dynamic> _initAsync()async{
    //   var a = await ApiClientCreateUser().fetchApiCreateUser();

    //   _YouchanNotifier.changeDollerYen(double.parse(a));
    // }
    // useEffect((){
    //   _initAsync();
    // },[]);
    FocusNode _focusNode;
    return Scaffold(
      appBar: AppBar(
        actions: [
            // IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), 
            onPressed: () async{
              await YouchanThemeSelect(context, ref);
            },),
        ],
        elevation: 0,
        // backgroundColor: Colors.transparent,
      ),
      // backgroundColor: Colors.orange,
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(20.0),
        child:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Long short
              Row(
                children: [
                  Flexible(
              child:Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Text(
                          'Long or Short',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            color: OtherTheme(ref).boxColor,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(50, 0, 0, 0), //色
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(5, 10),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0.0),
                            child: ElevatedButton(
                                child: Text("${_YouchanState.ls}"),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  elevation: 0,
                                  onPrimary: OtherTheme(ref).textcolor1,
                                  alignment: Alignment.centerLeft,
                                ),
                                onPressed: () {
                                  ShowSimpleDialog(context, ref);
                                  // throw Exception('test error !!!!');
                                }),
                                // onPressed:ShowSimpleDialog(context, ref);
                          )),
                    ],
                  )),

                  ),
                  Flexible(
                    child:Container(
                  padding:const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      Container(
                        // width: double.infinity,
                        child: Text(
                          '為替(ドル円)',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: OtherTheme(ref).boxColor,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(50, 0, 0, 0), //色
                              spreadRadius: 1, 
                              blurRadius: 10, 
                              offset: Offset(5, 10),
                            ),
                          ],
                        ),
                        child:Padding(
                          padding:const EdgeInsets.symmetric(horizontal: 0.0),
                          // child:Flexible(
                            // flex: 1,
                            child:TextFormField(
                               style: TextStyle(
                                color: OtherTheme(ref).textcolor1,
                              ),
                              maxLength: 7,
                              controller: ExpressTextController6,
                              keyboardType:  TextInputType.datetime,
                              // controller: TextEditingController(text: "0"),
                            decoration: InputDecoration(
                              counterText: "",
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 10,
                              ),
                              suffixIcon: Icon(Icons.currency_yen),
                              suffixIconConstraints: BoxConstraints(minWidth: 50),
                              // suffixIcon: Icon(Icons.clear_rounded),
                              // isDense: true,
                              border: InputBorder.none,
                              // hintText:  AppLocalizations.of(context)!.email,                
                            ),
                            textInputAction: TextInputAction.next,
                            onChanged: (String value) {
                              print("aaa");
                              print('a');
                                // int.parse(value);
                                print(value);
                                // print(double.parse(value));
                                // print(ExpressTextController);
                                // changeEmailText(value);
                                // formatter.format(int.parse(value));
                                // print(formatter.format(int.parse(value)));
                                _YouchanNotifier.changeDollerYen2(value.replaceAll(',', ''));
                                // if(value.last != '.')
                                // var price = double.parse(value.replaceAll(',', ''));
                                // var comma = NumberFormat('#,###.###');
                                // print(comma.format(price));
                                // ExpressTextController6.text = "${value}";

                                // // ExpressTextController5.text = comma.format(price).replaceAll(' ', '');
                                // ExpressTextController6.selection = TextSelection.fromPosition(
                                //   TextPosition(
                                //     offset: ExpressTextController6.text.length, //カーソルの位置を一番最初に指定
                                //   ),
                                // );
                            },
                          ),

                          ),
                          
                        )
                      // ),
                    ],
                  )
                ),

                  ),


                ]
              ),
              SizedBox(
                height: 20,
              ),
              // 2
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Text(
                          'IN 価格',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: OtherTheme(ref).boxColor,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(50, 0, 0, 0), //色
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(5, 10),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0.0),
                            child: TextFormField(
                               style: TextStyle(
                                color: OtherTheme(ref).textcolor1,
                              ),
                              maxLength:16,
                              controller: ExpressTextController,
                              // controller: ,
                              // initialValue:formatter.format(int.parse(_YouchanState.inValue)),
                              // controller: TextEditingController(text: "0"),
                              // keyboardType: TextInputType.numberWithOptions(decimal: true,signed: true),
                              keyboardType: TextInputType.datetime,

                              // inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9,-]')),LengthLimitingTextInputFormatter(9), ],
                              inputFormatters: [
                                  // FilteringTextInputFormatter.allow(
                                  // RegExp(r'\d')),
                              ],

                              decoration: InputDecoration(
                                counterText: "",
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 10,
                                ),
                                suffixIcon: Icon(Icons.attach_money_outlined),
                                suffixIconConstraints:
                                    BoxConstraints(minWidth: 50),
                                // suffixIcon: Icon(Icons.clear_rounded),
                                // isDense: true,
                                border: InputBorder.none,
                                // hintText:  AppLocalizations.of(context)!.email,
                              ),
                              textInputAction: TextInputAction.next,
                              // onEditingComplete: (){},
                              onChanged: (value) {
                                // final _editingText = ExpressTextController.text;
                                // // final _hasFocus = _focusNode.hasFocus;
                                // final FocusScopeNode currentScope = FocusScope.of(context);
                                // // print("onChange: $_editingText, hasFocus： $_hasFocus");
                                // print(value.runtimeType);
                                // print(double.tryParse(value!.replaceAll(',', '')) != null);
                                // if(int.tryParse(value!.replaceAll(',', '')) == null){
                                //   _YouchanNotifier.changeInvalue(value.replaceAll(',', ''));
                                //   return;
                                // }
                                // print(value);
                                // print(value.toUpperCase());
                                _YouchanNotifier.changeInvalue(value!.replaceAll(',', ''));
                                // var price = int.parse(value!.replaceAll(',', ''));
                                // var comma = NumberFormat('###,###,###,###');
                                // print(comma.format(price));
                                // print(comma.format(price));
                                // ExpressTextController.text = "${value}";
                                // print(ExpressTextController.text);
                                // ExpressTextController.text = comma.format(price);
                                // ExpressTextController.selection = TextSelection.fromPosition(
                                //   TextPosition(
                                //     offset: ExpressTextController.text.length, //カーソルの位置を一番最初に指定
                                //   ),
                                // );
                                // print(ExpressTextController.isSelectionWithinTextBounds(value));
                               
                                  // FocusManager.instance.primaryFocus!.unfocus();
                               

                                // ExpressTextController.value = ExpressTextController.value.copyWith(
                                //   text: "${value}",
                                //   selection:
                                //       TextSelection.fromPosition(
                                //       TextPosition(
                                //         offset: ExpressTextController.text.length, //カーソルの位置を一番最初に指定
                                //       )),
                                //   composing: TextRange.empty,
                                // );
                           

                              },
                            ),
                          )),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              // 3
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Text(
                          'OUT 価格',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: OtherTheme(ref).boxColor,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(50, 0, 0, 0), //色
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(5, 10),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0.0),
                            child: TextFormField(
                               style: TextStyle(
                                color: OtherTheme(ref).textcolor1,
                              ),
                              maxLength:16,
                              controller: ExpressTextController2,
                              keyboardType: TextInputType.datetime,
                              // controller: TextEditingController(text: "0"),
                              decoration: InputDecoration(
                                counterText: "",
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 10,
                                ),
                                suffixIcon: Icon(Icons.attach_money_outlined),
                                suffixIconConstraints:
                                    BoxConstraints(minWidth: 50),
                                // suffixIcon: Icon(Icons.clear_rounded),
                                // isDense: true,
                                border: InputBorder.none,
                                // hintText:  AppLocalizations.of(context)!.email,
                              ),
                              textInputAction: TextInputAction.next,
                              onChanged: (String value) {
                                // changeEmailText(value);
                                // _YouchanNotifier.changeOutvalue(value);

                                  if(int.tryParse(value.replaceAll(',', '')) == null){
                                    _YouchanNotifier.changeOutvalue(value.replaceAll(',', ''));
                                  return;
                                }
                                // int.parse(value);
                                // print(ExpressTextController);
                                // changeEmailText(value);
                                // formatter.format(int.parse(value));
                                // print(formatter.format(int.parse(value)));
                                _YouchanNotifier.changeOutvalue(value.replaceAll(',', ''));
                                var price = int.parse(value.replaceAll(',', ''));
                                var comma = NumberFormat('###,###,###,###');
                                print(comma.format(price));
                                // ExpressTextController2.text = comma.format(price).replaceAll(' ', '');
                                // ExpressTextController2.selection = TextSelection.fromPosition(
                                //   TextPosition(
                                //     offset: ExpressTextController2.text.length, //カーソルの位置を一番最初に指定
                                //   ),
                                // );
                              },
                            ),
                          )),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              // 4
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Text(
                          'ポジション指数',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: OtherTheme(ref).boxColor,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(50, 0, 0, 0), //色
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(5, 10),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0.0),
                            child: TextFormField(
                               style: TextStyle(
                                color: OtherTheme(ref).textcolor1,
                              ),
                              maxLength:16,
                              controller: ExpressTextController3,
                              // controller: TextEditingController(text: "0"),
                              keyboardType:  TextInputType.datetime,
                              decoration: InputDecoration(
                                counterText: "",
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 10,
                                ),
                                suffixIcon: Icon(Icons.attach_money_outlined),
                                suffixIconConstraints:
                                    BoxConstraints(minWidth: 50),
                                // suffixIcon: Icon(Icons.clear_rounded),
                                // isDense: true,
                                border: InputBorder.none,
                                // hintText:  AppLocalizations.of(context)!.email,
                              ),
                              textInputAction: TextInputAction.next,
                              onChanged: (String value) {
                                // changeEmailText(value);
                                  if(int.tryParse(value.replaceAll(',', '')) == null){
                                    _YouchanNotifier.changePositonvalue(value.replaceAll(',', ''));
                                  return;
                                }
                                // int.parse(value);
                                // print(ExpressTextController);
                                // changeEmailText(value);
                                // formatter.format(int.parse(value));
                                // print(formatter.format(int.parse(value)));
                                _YouchanNotifier.changePositonvalue(value.replaceAll(',', ''));
                                var price = int.parse(value.replaceAll(',', ''));
                                var comma = NumberFormat('###,###,###,###');
                                print(comma.format(price));
                                // ExpressTextController3.text = comma.format(price).replaceAll(' ', '');
                                // ExpressTextController3.selection = TextSelection.fromPosition(
                                //   TextPosition(
                                //     offset: ExpressTextController3.text.length, //カーソルの位置を一番最初に指定
                                //   ),
                                // );
                              },
                            ),
                          )),
                    ],
                  )),
              // add
              // 2
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Flexible(
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Column(
                          children: [
                            Container(
                              // width: double.infinity,
                              child: Text(
                                'メイカー（指）',
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: OtherTheme(ref).boxColor,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(50, 0, 0, 0), //色
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(5, 10),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                // child:Flexible(
                                // flex: 1,
                                child: TextFormField(
                                   style: TextStyle(
                                color: OtherTheme(ref).textcolor1,
                              ),
                                  maxLength: 7,
                                  controller: ExpressTextController4,
                                  keyboardType:  TextInputType.datetime,
                                  // controller: TextEditingController(text: "0"),
                                  decoration: InputDecoration(
                                    counterText: "",
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 10,
                                    ),
                                    suffixIcon: Icon(Icons.percent),
                                    suffixIconConstraints:
                                        BoxConstraints(minWidth: 50),
                                    // suffixIcon: Icon(Icons.clear_rounded),
                                    // isDense: true,
                                    border: InputBorder.none,
                                    // hintText:  AppLocalizations.of(context)!.email,
                                  ),
                                  textInputAction: TextInputAction.next,
                                  onChanged: (String value) {
                                    // final pos = value.length - 1;
                              // 最初からposまでの部分文字列を取得
                              // if(pos+1 == 0){
                              //   return;
                              // }
                              // final result = value.substring(pos, pos+1);
                              // print(double.parse("8.1"));
                              // print(result);
                              //   print('a');
                              //   print(value);
                              //   print(result == '.');
                              //   print(double.parse(value.replaceAll(',', '')));
                              //   print(double.tryParse(value.replaceAll(',', ''))!= null);
                              //   print(double.tryParse(value.replaceAll(',', '')) != null || result == '.');
                                // if(double.tryParse(value.replaceAll(',', '')) == null || result == '.'){
                                //   return;
                                // }
                                // print('a');
                                // int.parse(value);
                                // print(ExpressTextController);
                                // changeEmailText(value);
                                // formatter.format(int.parse(value));
                                // print(formatter.format(int.parse(value)));
                                _YouchanNotifier.changeTatevalue(value.replaceAll(',', ''));
                                // if(value.last != '.')
                                // var price = double.parse(value.replaceAll(',', ''));
                                // var comma = NumberFormat('#,###.###');
                                // print(comma.format(price));
                                // ExpressTextController4.text = value;
                                // ExpressTextController4.selection = TextSelection.fromPosition(
                                //   TextPosition(
                                //     offset: ExpressTextController4.text.length, //カーソルの位置を一番最初に指定
                                //   ),
                                // );
                                  },
                                ),
                              ),
                            )
                            // ),
                          ],
                        )),
                  ),
                  Flexible(
                      
                    child:Container(
                  padding:const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      Container(
                        // width: double.infinity,
                        child: Text(
                          'メイカー（成）',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: OtherTheme(ref).boxColor,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(50, 0, 0, 0), //色
                              spreadRadius: 1, 
                              blurRadius: 10, 
                              offset: Offset(5, 10),
                            ),
                          ],
                        ),
                        child:Padding(
                          padding:const EdgeInsets.symmetric(horizontal: 0.0),
                          // child:Flexible(
                            // flex: 1,
                            child:TextFormField(
                              style: TextStyle(
                                color: OtherTheme(ref).textcolor1,
                              ),
                              maxLength: 7,
                              controller: ExpressTextController5,
                              keyboardType:  TextInputType.datetime,
                              // controller: TextEditingController(text: "0"),
                            decoration: InputDecoration(
                              counterText: "",
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 10,
                              ),
                              suffixIcon: Icon(Icons.percent),
                              suffixIconConstraints: BoxConstraints(minWidth: 50),
                              // suffixIcon: Icon(Icons.clear_rounded),
                              // isDense: true,
                              border: InputBorder.none,
                              // hintText:  AppLocalizations.of(context)!.email,                
                            ),
                            // onTap:(){
                            //   FocusScope.of(context).unfocus();
                            // },
                            textInputAction: TextInputAction.next,
                            onChanged: (String value) {
                              // changeEmailText(value);
                              print("aaa");
                              // final pos = value.length - 1;
                              // 最初からposまでの部分文字列を取得
                              // if(pos+1 == 0){
                              //   return;
                              // }
                              // final result = value.substring(pos, pos+1);
                              // print(double.parse("8.1"));
                              // print(result);
                              //   print('a');
                              //   print(value);
                              //   print(result == '.');
                              //   print(double.parse(value.replaceAll(',', '')));
                              //   print(double.tryParse(value.replaceAll(',', ''))!= null);
                              //   print(double.tryParse(value.replaceAll(',', '')) != null || result == '.');
                                // if(double.tryParse(value.replaceAll(',', '')) == null || result == '.'){
                                //   return;
                                // }
                                print('a');
                                // int.parse(value);
                                print(value);
                                // print(double.parse(value));
                                // print(ExpressTextController);
                                // changeEmailText(value);
                                // formatter.format(int.parse(value));
                                // print(formatter.format(int.parse(value)));
                                _YouchanNotifier.changeNarivalue(value.replaceAll(',', ''));
                                // if(value.last != '.')
                                // var price = double.parse(value.replaceAll(',', ''));
                                // var comma = NumberFormat('#,###.###');
                                // print(comma.format(price));
                                // ExpressTextController5.text = "${value}";

                                // // ExpressTextController5.text = comma.format(price).replaceAll(' ', '');
                                // ExpressTextController5.selection = TextSelection.fromPosition(
                                //   TextPosition(
                                //     offset: ExpressTextController5.text.length, //カーソルの位置を一番最初に指定
                                //   ),
                                // );
                            },
                          ),

                          ),
                          
                        )
                      // ),
                    ],
                  )
                ),
                    ) 
                ],
              ),

              // 5
              SizedBox(
                height: 40,
              ),
              // ElevatedButton(
              //   child: const Text('Button'),
              //   style: ElevatedButton.styleFrom(
              //     primary: Colors.orange,
              //     onPrimary: Colors.white,
              //   ),
              //   onPressed: () {},
              // ),
              Align(
                alignment: Alignment.topRight, //右寄せの指定
                child: ElevatedButton(
                  child: Icon(Icons.arrow_forward),
                  style: ElevatedButton.styleFrom(
                    // primary: Colors.orange,
                    // onPrimary: Colors.white,
                  ),
                  onPressed: () async{
                    await YouchanCalculate(context, ref);
                  },
                  //  onPressed:YouchanCalculate(context, ref)
                ),
              )
            ],
          ),
          )
      )),
    );
  }
}
