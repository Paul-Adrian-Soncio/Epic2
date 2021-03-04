import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Text("Project by:\n Ayrra Jane Amio\n Mc Kelly Castro\n Paul Adrian Soncio"),
    );
  }
}
