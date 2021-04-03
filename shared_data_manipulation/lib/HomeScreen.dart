import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  _save(){

  }

  _recover(){

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(""),
            TextField(),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("save")),
                ElevatedButton(onPressed: () {}, child: Text("recover"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
