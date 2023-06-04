import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
    SecondPage({Key? key, required this.pass, required this.email}) : super(key: key);
  String? email;
  String? pass;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Card(
          color: Colors.deepOrangeAccent,
          child: SizedBox(
              height: 200,
              width: 250,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                    widget.email.toString()
                ,
                style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
              ),
                      Text(
                        widget.pass.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))),
        ),
      ),
    );
  }
}



