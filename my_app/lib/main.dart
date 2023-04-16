import 'package:flutter/material.dart';
import 'package:my_app/home.dart';
import 'package:my_app/layout.dart';
import 'package:my_app/layout_widgets/listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UWU:>',
      theme: ThemeData(fontFamily: 'Oxygen'),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/layout': (context) => const LayoutPage(),
        '/layout/list': (context) => const ListViewPage(),
      },
    );
  }
}
