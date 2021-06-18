import 'package:child_roster/widgets/Input.dart';
import 'package:flutter/material.dart';


class SchoolKids extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
        title: new Text('School Kids'),
      ),
      body: Input(),
    );
  }
}
