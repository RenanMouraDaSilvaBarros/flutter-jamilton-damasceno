import 'package:flutter/material.dart';
import 'package:jokenpo/modules/Screen_jokenpo/constant/imagens_constant.dart';
import 'package:jokenpo/modules/Screen_jokenpo/model/card_model.dart';

class TelaJokenpo extends StatefulWidget {
  @override
  _TelaJokenpoState createState() => _TelaJokenpoState();
}

class _TelaJokenpoState extends State<TelaJokenpo> {
  
  List<CardModel> cards = [
    CardModel(imagem: PATTERN),
    CardModel(imagem: PAPER),
    CardModel(imagem: ROCK),
    CardModel(imagem: SCISSORS)
  ];

  Widget option() {
    List<CardModel> optionCars = [];
    cards.forEach((e) {
      optionCars.add(e);
    });
    optionCars.removeAt(0);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: cards.map((e) {
        return InkWell(
            onTap: () {},
            child: Image.asset(
              e.imagem,
              scale: 2,
            ));
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokenpo"),
      ),
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("choice of app"),
            InkWell(
                onTap: () {},
                child: Image.asset(
                  cards.first.imagem,
                  scale: 2,
                )),
            option()
          ]),
    );
  }
}
