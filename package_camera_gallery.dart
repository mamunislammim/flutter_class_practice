import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ListItem extends StatefulWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  height: 200,
                  width: 200,

                  image: image == null ?
                  NetworkImage('https://avatars.githubusercontent.com/u/106102340?v=4')
                      : NetworkImage('https://cdn-icons-png.flaticon.com/512/2815/2815428.png')
                ),


                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () async {
                    ImagePicker p = ImagePicker();
                    image = await p.pickImage(source: ImageSource.camera);
                    setState(() {
                    });
                  },
                  child: const Text("Camera"),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () async {
                    ImagePicker p = ImagePicker();
                    image = await p.pickImage(source: ImageSource.gallery);
                    setState(() {
                    });
                  },
                  child: const Text("Gallery"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
