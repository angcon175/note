import 'package:flutter/material.dart';
import 'package:note/scrrens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 247, 233, 42)),
      ),
      home: const HomeScreen(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
