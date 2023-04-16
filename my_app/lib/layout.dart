import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Layouts Page"),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/layout/list');
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(20.0),
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/eren.svg', height: 100),
                Text('Eren Yeager'),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ));
  }
}
