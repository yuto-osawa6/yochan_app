
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
  appBarTheme: AppBarTheme(
    backgroundColor:Colors.indigo
  ),
  scaffoldBackgroundColor: Colors.indigo,
  dialogBackgroundColor:Colors.indigo,
  focusColor: Colors.amber,
  highlightColor:Colors.amber,
  selectedRowColor:Colors.amber,
  dividerColor: Colors.amber,
  primaryColorLight: Colors.amber,
  primaryColorDark: Colors.amber,
  secondaryHeaderColor:Colors.amber,
  primarySwatch: Colors.brown,
  accentColor: Colors.brown,

  // accentColor: Colors.green,
  // accentColor: w,
  // backgroundColor: Colors.indigo,
  primaryColor: Color.fromARGB(255, 228, 228, 232),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.amber,
    selectionColor: Colors.amber,
    selectionHandleColor: Colors.amber
  ),
  hintColor:Colors.blue,
  
  inputDecorationTheme: InputDecorationTheme(
    // suffixIconColor:Colors.white,
    // iconColor: Colors.white,
    hoverColor:Colors.amber,
    fillColor:Colors.amber,
    focusColor: Colors.amber,
    
    // suffixIconColor: Colors.black,
    suffixStyle: TextStyle(
      color: Colors.blue
    ),
    
    // color: _isFocus ? /*フォーカス時の色*/: /*通常時の色*/,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
      elevation: 0,
      onPrimary: Colors.indigo[800],
      alignment: Alignment.center,
    ),
  ),
  // brightness: Brightness.dark,
  // brightness: primaryColorDark,
  colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.red,
        backgroundColor: Colors.indigo,
//         cardColor: Colors.green,
        accentColor: Colors.yellow
//         // primaryColorDark: Colors.indigo,
//         // accentColor:Colors.green
        
        ).copyWith(
    secondary: Colors.red,
    onSecondary: Colors.pink,
    primary:Colors.amber,
    onPrimary: Colors.white,
    tertiary: Colors.pink,
    onTertiary: Colors.pink,
    // surface: Colors.white,
    // onSurface: Colors.white,
    inverseSurface:Colors.pink,
    onInverseSurface:Colors.pink,
    inversePrimary:Colors.pink
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

      


ThemeData Theme2 = ThemeData(
  // brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.orange[800],
  dialogBackgroundColor:Colors.green[900],
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.green[900]
  ),
  // focusColor: Colors.amber,
  // highlightColor:Colors.amber,
  // selectedRowColor:Colors.amber,
  dividerColor: Colors.green[900],
  // accentColor: w,
  // backgroundColor: Colors.indigo,
  primaryColor: Colors.indigo,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.amber,
    selectionColor: Colors.amber,
    selectionHandleColor: Colors.amber
  ),
  inputDecorationTheme: InputDecorationTheme(
    suffixIconColor:Colors.green[900],
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
        
        )
        .copyWith(
          brightness: Brightness.dark
          ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.amber
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.green[900],
      elevation: 0,
      onPrimary: Colors.orange[100],
      alignment: Alignment.center,
    ),
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