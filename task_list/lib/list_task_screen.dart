import 'package:flutter/material.dart';

class ListTaskScreen extends StatefulWidget {
  @override
  _ListTaskScreenState createState() => _ListTaskScreenState();
}

class _ListTaskScreenState extends State<ListTaskScreen> {
  bool _value = false;
  List task = ["a", "dws", "fedfe"];

  Widget listTask(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: task.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(index.toString()),
              ),
              title: Text(
                task[index],
              ),
              trailing: Checkbox(
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                  print(value);
                },
                value: _value,
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("oi")),
      body: listTask(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Adicionar Tarefa"),
                  content: TextField(
                    decoration: InputDecoration(labelText: "Digite sua tarefa"),
                    onChanged: (text) {},
                  ),
                  actions: [
                    ElevatedButton(onPressed:(){}, child: Text("Salvar")),
                    ElevatedButton(onPressed:  () =>Navigator.pop(context), child: Text("Cancelar")),
                  ],
                );
              });
        },
      ),
    );
  }
}
