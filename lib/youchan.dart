import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yochan/YouchanThemeSelect.dart';
import 'package:yochan/service/youchan_client.dart';
import 'package:yochan/view_model/youchan_vm.dart';
import 'package:yochan/youchanDialog.dart';
import 'package:yochan/youchanMethod.dart';
import 'package:yochan/youchanOtherTheme.dart';

class YouChanWidget extends HookConsumerWidget {
  var selectedValue = "Long";
  final lists = <String>["Long", "Short"];

  
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Long short
            Container(
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
                            // BoxShadow(
                            //   color: Color.fromARGB(50, 0, 0, 0), //色
                            //   spreadRadius: 1,
                            //   blurRadius: 10,
                            //   offset: Offset(5, 10),
                            // ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: ElevatedButton(
                              child: Text("${_YouchanState.ls}"),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0,
                                // onPrimary: Colors.blue,
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
                            // BoxShadow(
                            //   color: Color.fromARGB(50, 0, 0, 0), //色
                            //   spreadRadius: 1,
                            //   blurRadius: 10,
                            //   offset: Offset(5, 10),
                            // ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: TextFormField(
                            // controller: TextEditingController(text: "0"),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
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
                            onChanged: (value) {
                              // changeEmailText(value);
                              _YouchanNotifier.changeInvalue(value);
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
                            // BoxShadow(
                            //   color: Color.fromARGB(50, 0, 0, 0), //色
                            //   spreadRadius: 1,
                            //   blurRadius: 10,
                            //   offset: Offset(5, 10),
                            // ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: TextFormField(
                            // controller: TextEditingController(text: "0"),
                            decoration: InputDecoration(
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
                            onChanged: (String value) {
                              // changeEmailText(value);
                              _YouchanNotifier.changeOutvalue(value);
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
                            // BoxShadow(
                            //   color: Color.fromARGB(50, 0, 0, 0), //色
                            //   spreadRadius: 1,
                            //   blurRadius: 10,
                            //   offset: Offset(5, 10),
                            // ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: TextFormField(
                            // controller: TextEditingController(text: "0"),
                            decoration: InputDecoration(
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
                            onChanged: (String value) {
                              // changeEmailText(value);
                              _YouchanNotifier.changePositonvalue(
                                  value);
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
                                // BoxShadow(
                                //   color: Color.fromARGB(50, 0, 0, 0), //色
                                //   spreadRadius: 1,
                                //   blurRadius: 10,
                                //   offset: Offset(5, 10),
                                // ),
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              // child:Flexible(
                              // flex: 1,
                              child: TextFormField(
                                // controller: TextEditingController(text: "0"),
                                decoration: InputDecoration(
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
                                onChanged: (String value) {
                                  // changeEmailText(value);
                                  print(value);
                                  double a = -7918.52;
                                  double b = 0.1;
                                  
                                  print(a);
                                  print(a + b);
                                  _YouchanNotifier.changeTatevalue(
                                      value);
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
                          // BoxShadow(
                          //   color: Color.fromARGB(50, 0, 0, 0), //色
                          //   spreadRadius: 1, 
                          //   blurRadius: 10, 
                          //   offset: Offset(5, 10),
                          // ),
                        ],
                      ),
                      child:Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 0.0),
                        // child:Flexible(
                          // flex: 1,
                          child:TextFormField(
                            // controller: TextEditingController(text: "0"),
                          decoration: InputDecoration(
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
                          onChanged: (String value) {
                            // changeEmailText(value);
                            _YouchanNotifier.changeNarivalue(value);
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
      )),
    );
  }
}
