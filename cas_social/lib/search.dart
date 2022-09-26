import 'package:flutter/material.dart';
import 'main.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

Future loadSearch() async {
  print("search function sent");
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
