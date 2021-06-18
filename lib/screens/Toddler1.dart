import 'package:child_roster/widgets/Input.dart';
import 'package:flutter/material.dart';


class Toddler1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
        title: new Text('Toddler 1'),
      ),
      body: Input(),
    );
  }
}

