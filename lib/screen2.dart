import 'package:flutter/material.dart';

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget {
  @override
  _Screen1 createState() => _Screen1();
}

class _Screen1 extends State<Screen1> {
  TextEditingController myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Search'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: myController,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink, width: 2.0),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Search',
                ),
              ),
            ),
          ),
        ));
  }
}
