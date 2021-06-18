
import 'package:child_roster/widgets/Input.dart';
import 'package:flutter/material.dart';
// import 'package:lib/main.dart';


class WaitingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
        title: new Text('Waiting List'),
      ),
      body: Input(),
    );
  }
}
