import 'package:flutter/material.dart';
import 'package:treinamentorp/pages/characters_page.dart';
import 'package:treinamentorp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      onGenerateRoute: (settings) {
        Widget page = const SizedBox();

        switch (settings.name) {
          case "/":
            page = const HomePage();
            break;
          case "/characters":
            page = const CharactersPage();
            break;
        }

        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => page,
            transitionDuration: const Duration(milliseconds: 300));
      },
    );
  }
}
