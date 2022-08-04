// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

// import 'package:flutter/material.dart';

// import 'package:yochan/TestPage1.dart';
// import 'package:yochan/TestPage2.dart';
// import 'package:yochan/TestPage3.dart';


// // import 'package:TestPage1.dart';
// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: "",
//       theme: ThemeData(
//         primaryColor:Colors.blue
//       ),
//       home:  MyHomePage(title:"Flutter"),
//     );
//   }
// }


// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// // class MyHomePage extends StatefulWidget {
// //   MyHomePage({Key? key, required this.title}) : super(key: key);
// //   final String title;

// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }


// class _MyHomePageState extends State<MyHomePage> {
//   late PageController _pageController;
//   int _selectedIndex = 0;

//   // ボトムメニューの遷移先画面
//   final _pages = [
//     TestPage1(),
//     TestPage2(),
//     TestPage3(),
//   ];
//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(initialPage: _selectedIndex);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _pageController.dispose();
//   }

//   void _onPageChanged(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     //return LoginPage();

//     return Scaffold(
//         body: PageView(
//             controller: _pageController,
//             onPageChanged: _onPageChanged,
//             children: _pages));
//   }
// }






import 'package:flutter/material.dart';
import 'package:yochan/ui/common/footer/footer.dart';
import 'package:yochan/ui/common/header/header.dart';
import 'package:yochan/ui/page/calendar/calendar.dart';
import 'package:yochan/ui/page/groupfrends/groupfrends.dart';
import 'package:yochan/ui/page/home/home.dart';
import 'package:yochan/ui/page/search/search.dart';
import 'package:yochan/ui/page/talk/talk.dart';
import 'package:yochan/ui/page/timeline/timeline.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// .dart_tool/flutter_gen/gen_l10n/app_localizations.dart
// import 'package:english_words/english_words.dart';
// import 'package:flutter/material.dart';
// import 'package:yochan/TestPage1.dart';
// import 'package:yochan/TestPage2.dart';
// import 'package:yochan/TestPage3.dart';

void main(){
  runApp(MyWidget());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext){
//     return MaterialApp(
//       title: "",
//       theme: ThemeData(
//         primaryColor:Colors.blue
//       ),
//       home:  MyHomePage(title:"Flutter"),
//     );
//   }
// }

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ja', ''), //日本語
        const Locale('en', ''), //英語
      ],
      title: "",
      theme: ThemeData(
        primaryColor:Colors.blue
      ),
      home:  MyHomePage(title:"FlutterApp2"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHomePage> {
  var _selectIndex = 0;
  var _pages = <Widget>[
    Home(),
    GroupFrends(),
    Talk(),
    TimeLine(),
    Calendar(),
  ];
    void _onTapItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Header(),
      body: _pages[_selectIndex],
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         AppLocalizations.of(context)!.hello("kazutxt"),
      //       ),
      //       Text(
      //         AppLocalizations.of(context)!.allow,
      //       ),
      //       Text(
      //         AppLocalizations.of(context)!.deny,
      //       ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: Footer(now_page:_selectIndex,onTapItem: _onTapItem),
    );
  }
}