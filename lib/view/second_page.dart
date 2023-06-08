// import 'package:flutter/material.dart';
//
// class SecondPage extends StatefulWidget {
//     SecondPage({Key? key, required this.pass, required this.email}) : super(key: key);
//   String? email;
//   String? pass;
//
//   @override
//   State<SecondPage> createState() => _SecondPageState();
// }
//
// class _SecondPageState extends State<SecondPage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Card(
//           color: Colors.deepOrangeAccent,
//           child: SizedBox(
//               height: 200,
//               width: 250,
//               child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                     widget.email.toString()
//                 ,
//                 style: const TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//               ),
//                       Text(
//                         widget.pass.toString(),
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ))),
//         ),
//       ),
//     );
//   }
// }
//
//
//

import 'package:flutter/material.dart';

class GetData extends StatefulWidget {
  const GetData({Key? key, required this.email}) : super(key: key);
  final String? email;

  @override
  State<GetData> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Icon(Icons.shopping_cart,size: 40,),
              Card(
                  color: Colors.orangeAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text("01",style: TextStyle(color: Colors.black),),
                  ))
            ],
          ),
          SizedBox(width: 40,)
        ],
      ),
      body: Stack(
        alignment: Alignment.centerRight,
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: 200,
          width: 1000,
            child: Card(
              color: Colors.orangeAccent,
            ),
          ),
          Positioned(
            bottom: -50,
            left: 30,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.black,
              backgroundImage: AssetImage('images/fghty.jpg'),
            )
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        radius: 30,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        iconSize: 30,
        currentIndex: 1,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_sharp), label: "Camera"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_sharp), label: "Camera")
        ],

      ),
    );
  }
}
