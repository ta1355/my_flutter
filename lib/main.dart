import 'package:flutter/material.dart';

void main() {
  var um = Player(name: "siuuuuu");
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text("hello"),
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        body: Center(child: Text("siuuuuu")),
      ),
    );
  }
}

class Player {
  String? name;

  Player({required this.name});
}
