import 'package:flutter/material.dart';
import 'package:nyx/custom_body.dart';
import 'package:nyx/models/tournament_model.dart';

class ScrollSnap extends StatefulWidget {
  ScrollSnap({Key key}) : super(key: key);

  @override
  _ScrollSnapState createState() => _ScrollSnapState();
}

class _ScrollSnapState extends State<ScrollSnap> {
  var images = [
    "assets/images/abcd.png",
    "assets/images/clock.png",
    "assets/images/essay.png",
    "assets/images/fill.png",
    "assets/images/spell.png",
    "assets/images/tf.png",
    "assets/images/free.png",
    "assets/images/av.png",
  ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // card height
      child: PageView.builder(
        itemCount: images.length,
        controller: PageController(viewportFraction: 0.6),
        pageSnapping: false,
        onPageChanged: (int index) => setState(() => _index = index),
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Opacity(
              opacity: i == _index ? 1 : 0.5,
              child: Transform.scale(
                scale: i == _index ? 1 : 0.8,
                child: Card(
                  color: Colors.transparent,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: gameContainer(
                      images[i],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CardScrollSnap extends StatefulWidget {
  CardScrollSnap({Key key}) : super(key: key);

  @override
  _CardScrollSnapState createState() => _CardScrollSnapState();
}

class _CardScrollSnapState extends State<CardScrollSnap> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Colors.red,
      Colors.blue,
      Colors.orange,
      Colors.purple,
      Colors.green,
      Colors.amber
    ];
    List<Color> cirlceColors = [
      Color(0xFF19EDC1),
      Colors.red,
      Colors.purple,
      Colors.blue,
      Colors.orange,
      Colors.pink
    ];
    return Container(
      child: PageView.builder(
        itemCount: tournamentsData.length,
        controller: PageController(viewportFraction: 0.7),
        pageSnapping: false,
        onPageChanged: (int index) => setState(() => _index = index),
        itemBuilder: (_, i) {
          Tournaments tournament = tournamentsData[i];
          return Padding(
            padding: EdgeInsets.only(
              top: 35,
              bottom: 25,
            ),
            child: Opacity(
              opacity: i == _index ? 1 : 0.5,
              child: Transform.scale(
                scale: i == _index ? 1 : 0.8,
                child: Card(
                  color: colors[i],
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: cirlceColors[i],
                              radius: 40,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 25, left: 15),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                    "${tournament.name}",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Players in Pool:\n",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "${tournament.activePlayers}/${tournament.totalPlayers}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Prize Money:\n",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Rs. ${tournament.priceMoney}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
