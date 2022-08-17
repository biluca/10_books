import 'package:flutter/material.dart';
import 'package:ten_books/widgets/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: const Color.fromRGBO(43, 67, 177, .1),
      100: const Color.fromRGBO(43, 67, 177, .2),
      200: const Color.fromRGBO(43, 67, 177, .3),
      300: const Color.fromRGBO(43, 67, 177, .4),
      400: const Color.fromRGBO(43, 67, 177, .5),
      500: const Color.fromRGBO(43, 67, 177, .6),
      600: const Color.fromRGBO(43, 67, 177, .7),
      700: const Color.fromRGBO(43, 67, 177, .8),
      800: const Color.fromRGBO(43, 67, 177, .9),
      900: const Color.fromRGBO(43, 67, 177, 1),
    };
    MaterialColor customColor = MaterialColor(0xFF2944AE, color);

    return MaterialApp(
      title: '10books',
      theme:
          ThemeData(primarySwatch: customColor, bottomAppBarColor: customColor),
      home: const MainPage(title: '10books'),
      debugShowCheckedModeBanner: false,
    );
  }
}
