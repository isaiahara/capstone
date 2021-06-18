import 'package:child_roster/widgets/Input.dart';
import 'package:flutter/material.dart';

class Infants extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('infants'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Input(),
    );
  }
}
