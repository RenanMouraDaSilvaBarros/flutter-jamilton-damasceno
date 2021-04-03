import 'package:jokenpo/modules/Screen_jokenpo/constant/imagens_constant.dart';
import 'package:jokenpo/modules/Screen_jokenpo/constant/play.dart';
import 'package:jokenpo/modules/Screen_jokenpo/constant/result.dart';
import 'package:jokenpo/modules/Screen_jokenpo/model/card_model.dart';

class Data {
  static List<List<Result>> matrix = [
                //pedra           papel        tesoura
    /*pedra*/   [Result.TIE, Result.LOSE, Result.WIN],
    /*papel*/   [Result.WIN, Result.TIE, Result.LOSE],
    /*tesoura*/ [Result.LOSE, Result.WIN, Result.TIE]
  ];

  static List<CardModel> cards = [
    CardModel(imagem: ROCK, name: Play.ROKER),
    CardModel(imagem: PAPER, name: Play.PAPER),
    CardModel(imagem: SCISSORS, name: Play.SCISSORS),
    CardModel(imagem: PATTERN, name: Play.PATTERN),
  ];
}
