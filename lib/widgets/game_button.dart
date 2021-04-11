import 'package:flutter/material.dart';
import 'package:nyx/models/games_model.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 450,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.all(0),
        physics: new NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2.5,
        ),
        itemCount: game.length,
        itemBuilder: (BuildContext context, int index) {
          Games games = game[index];
          return GestureDetector(
            onTap: () {
              print("$index");
            },
            child: GameButton(games: games),
          );
        },
      ),
    );
  }
}

class GameButton extends StatelessWidget {
  const GameButton({
    Key key,
    @required this.games,
  }) : super(key: key);

  final Games games;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 125,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF0A69D0),
            Color(0xFF053568),
          ],
        ),
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
      ),
      child: Text(
        "${games.name}",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
