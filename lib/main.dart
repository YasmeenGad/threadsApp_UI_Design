import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:threads/screens/land_page.dart';
import 'package:threads/screens/thread_screen.dart';
import 'package:threads/widgets/navigation.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LandingPage(),
        routes: {
          "navigationScreen": (context) => Navigation(),
          "threadScreen": (context) => ThreadScreen(),
        });
  }
}
