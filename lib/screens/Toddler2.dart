import 'package:child_roster/widgets/Input.dart';
import 'package:flutter/material.dart';


class Toddler2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
        title: new Text('Toddler 2'),
      ),
      body: Input(),
    );
  }
}
