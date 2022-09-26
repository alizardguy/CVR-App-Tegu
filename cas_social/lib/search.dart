import 'package:flutter/material.dart';
import 'main.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

final myTextController = TextEditingController();

// Clean up the controller when the widget is disposed.
@override
void dispose() {
  myTextController.dispose();
  //super.dispose();
}

Future loadSearch() async {
  print("search: " + myTextController.text);
}

class _HomePageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Search"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return new Center(
      child: Column(
        children: [
          TextField(
            controller: myTextController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search users and rooms',
                hintStyle: TextStyle(color: Colors.white)),
            style: TextStyle(color: Colors.white),
          ),
          ElevatedButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
              loadSearch();
            },
            child: Text('Search'),
          )
        ],
      ),
    );
  }
}
