import 'dart:math';
import 'package:flutter/material.dart';
import 'package:jokenpo/modules/Screen_jokenpo/components/choice.dart';
import 'package:jokenpo/modules/Screen_jokenpo/constant/play.dart';

import 'constant/data.dart';

class TelaJokenpo extends StatefulWidget {
  @override
  _TelaJokenpoState createState() => _TelaJokenpoState();
}

class _TelaJokenpoState extends State<TelaJokenpo> {
  int _choiceMachine = 3;
  String _result = "";

  int _generate() => Random().nextInt(3);

  void _calculateResult(int machine, int player) =>
      _result = Data.matrix[player][machine].toString();

  Widget _machine(int index) => Choice(card: Data.cards[index]);

  Widget _option(List options) {
    List option = [];
    options.forEach((e) {
      if (e.name != Play.PATTERN) option.add(e);
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: option.map((e) {
        return Choice(
            card: e,
            event: () => setState(() {
                  _choiceMachine = _generate();
                  _calculateResult(_choiceMachine, e.name.index);
                }));
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Jokenpo")),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const Text("choice of app"),
          _machine(_choiceMachine),
          Text(_result),
          const Text("your choice"),
          _option(Data.cards),
        ],
      ),
    );
  }
}
