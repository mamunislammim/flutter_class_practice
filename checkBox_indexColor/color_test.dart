import 'package:flutter/material.dart';

class ColorTestPage extends StatefulWidget {
  const ColorTestPage({Key? key}) : super(key: key);

  @override
  State<ColorTestPage> createState() => _ColorTestPageState();
}

class _ColorTestPageState extends State<ColorTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 50,
          itemBuilder: (_, index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child:   ListTile(
            tileColor: index % 5 == 0 ? Colors.orangeAccent : index % 2 == 0 ? Colors.red : Colors.black,
            title: Text("Flutter Developer  $index"),
          ),
        );
      }),
    );
  }
}
