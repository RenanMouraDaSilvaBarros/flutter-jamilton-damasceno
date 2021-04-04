import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String text = "vazio";
  TextEditingController _controller = TextEditingController();
  SharedPreferences prefs;

  _save() async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString("name", _controller.text);
    print("salvo ${prefs.getString("name")}");
  }

  _recover() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      text = prefs.getString("name")??"sem valor";
    });
  }

  _delete() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.remove("name");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(text ?? "vazio"),
              TextField(
                controller: _controller,
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: _save, child: Text("save")),
                  ElevatedButton(onPressed: _recover, child: Text("recover")),
                  ElevatedButton(onPressed: _delete, child: Text("delete"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
