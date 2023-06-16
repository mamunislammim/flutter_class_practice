import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.blueGrey,
        //   title: Center(child: Text("Grid View Page")),
        //   // centerTitle: true,
        // ),
        backgroundColor: Colors.blueGrey.withOpacity(1),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    color: Colors.grey,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(color: Colors.blue, width: 5)),
                  child: Center(
                      child: Text(
                        "Flutter Developer",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )),
                ),
                SizedBox(
                  height: 300,
                  child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    // scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(10),
                    itemCount: 30,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 10,
                      // mainAxisExtent: 200
                    ),
                    itemBuilder: (context, index) {
                      print("___________  index : $index");
                      return Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(color: Colors.blue, width: 5)),
                        child: Center(
                            child: Text(
                          "${(index+5) * 5}",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        )),
                      );
                    },
                  ),
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(color: Colors.blue, width: 5)),
                  child: Center(
                      child: Text(
                        "Flutter Developer",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )),
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(color: Colors.blue, width: 5)),
                  child: Center(
                      child: Text(
                        "Flutter Developer",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )),
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(color: Colors.blue, width: 5)),
                  child: Center(
                      child: Text(
                        "Flutter Developer",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )),
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(color: Colors.blue, width: 5)),
                  child: Center(
                      child: Text(
                        "Flutter Developer",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )),
                ),
              ],
            ),
          ),
        )
        );
  }
}
