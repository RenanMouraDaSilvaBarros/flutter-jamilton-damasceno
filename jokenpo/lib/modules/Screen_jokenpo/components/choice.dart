import 'package:flutter/material.dart';
import 'package:jokenpo/modules/Screen_jokenpo/model/card_model.dart';

// ignore: must_be_immutable
class Choice extends StatelessWidget {
 final CardModel card;
 final Function event;

  const Choice({Key key, this.card, this.event}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: event,
      child: Image.asset(
        card.imagem,
        scale: 1.5,
      ),
    );
  }
}
