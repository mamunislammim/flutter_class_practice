

import 'package:flutter/material.dart';


class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({Key? key}) : super(key: key);

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {

  bool check  = false;
  bool check1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Box Class"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Are you a Student ?",style: TextStyle(color: Colors.orangeAccent,fontSize: 20,fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: check,
                    onChanged: (c){
                      check = c!;
                      setState(() {});
                    }),
                SizedBox(width: 10,),
                Text("Yes"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: check1,
                    onChanged: (c){
                      check1 = c!;
                      setState(() {

                      });
                    }),
                SizedBox(width: 10,),
                Text("No"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CheckboxListTile(
                title: Text("|fdsgrftbhfgbfgbn  crt"),
                fillColor:  MaterialStateProperty.all(Colors.red),
                  checkColor: Colors.black,
                  tileColor: Colors.blueGrey,
                  activeColor: Colors.red,
                  value: check,
                  onChanged: (c){
                    check = c!;
                    setState(() {});
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
