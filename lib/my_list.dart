import 'package:flutter/material.dart';

class MyLists extends StatefulWidget {
  const MyLists({Key? key}) : super(key: key);

  @override
  _MyListsPageState createState() => _MyListsPageState();
}




class _MyListsPageState extends State<MyLists> {
  var _text = "";


  void _Processtext() {
    setState(() {
      _text = TextEditingController().toString();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: const Text('My List')),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text( _text,
              style: const TextStyle(fontSize: 32.0),
            ),
            Container( color: Colors.white,
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter new ToDo',
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: _Processtext,
                    child: const Text(
                      "ADD",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
        //  itemCount: foodList.length,
      ),
    );
  }
}
//