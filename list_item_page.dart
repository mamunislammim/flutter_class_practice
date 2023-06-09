

import 'package:flutter/material.dart';
import 'package:flutter_practice/view/home_page.dart';

class ListItem extends StatefulWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  final TextEditingController _dataController = TextEditingController();
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10,left: 30,right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                  controller: _dataController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          setState(() {
                            list.add(_dataController.text);
                          });
                        },
                        child: Text("Add to List")),
                    Spacer(),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                    },
                        child: Text("Next Page"))
                  ],
                ),
                SizedBox(height: 15,),
                Divider(),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: list.length,
                    itemBuilder: (_, index){
                    return Center(
                      child: Card(
                        color: Colors.orangeAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(list[index]),
                        ),
                      ),
                    );
                    }
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
