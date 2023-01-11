
import 'package:flutter/material.dart';

// ThemeData Theme1 = ThemeData.from(
//       // scaffoldBackgroundColor: Colors.indigo,
//       // backgroundColor: Colors.indigo,
//       // primaryColor: Colors.indigo,
//       // brightness: Brightness.dark,
//       // brightness: primaryColorDark,
//       colorScheme: ColorScheme.fromSwatch(
//         primarySwatch: Colors.indigo,
//         backgroundColor: Colors.indigo,
//         cardColor: Colors.green,
//         accentColor: Colors.yellow
//         // primaryColorDark: Colors.indigo,
//         // accentColor:Colors.green
        
//         ),
//       // textTheme:primaryTextThem
//       // colorScheme:  ColorScheme.dark(

//       // )
//       //   // textTheme: 何かしらのTextTheme,
//       // primaryTextTheme:
//       );

      


ThemeData Theme1 = ThemeData(
  // brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.indigo,
  dialogBackgroundColor:Colors.indigo,
  focusColor: Colors.amber,
  highlightColor:Colors.amber,
  selectedRowColor:Colors.amber,
  dividerColor: Colors.indigo,
  // accentColor: w,
  // backgroundColor: Colors.indigo,
  primaryColor: Colors.indigo,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.amber,
    selectionColor: Colors.amber,
    selectionHandleColor: Colors.amber
  ),
  inputDecorationTheme: InputDecorationTheme(
    suffixIconColor:Colors.amber,
  ),
  // brightness: Brightness.dark,
  // brightness: primaryColorDark,
  colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.indigo,
        backgroundColor: Colors.indigo,
//         cardColor: Colors.green,
        accentColor: Colors.yellow
//         // primaryColorDark: Colors.indigo,
//         // accentColor:Colors.green
        
        ),
        // .copyWith(
        //   // primary: Colors.indigo,
        //             secondarColor.fromARGB(255, 26, 28, 33)ent),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.amber
  ),
   iconTheme: IconThemeData(
      color: Colors.white//アイコンの色
    ),
   textTheme: TextTheme(
    bodyText1: TextStyle(),
    bodyText2: TextStyle(),
    headline1: TextStyle(),
    headline2: TextStyle(),
    headline3: TextStyle(),
    headline4: TextStyle(),
    headline5: TextStyle(),
    headline6: TextStyle(),
    subtitle1: TextStyle(),
    // subtitle2: TextStyle(),
    // caption: TextStyle()


   ).apply(
    bodyColor: Colors.white, 
    displayColor: Colors.white, 
    decorationColor: Colors.white
   ),
   
   
);

      