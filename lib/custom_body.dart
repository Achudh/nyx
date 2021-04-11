import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:nyx/widgets/game_button.dart';
import 'package:nyx/widgets/game_cards.dart';
import 'package:nyx/widgets/scroll_snap.dart';

class CustomBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ClipPath(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF2459F1),
                    Color(0xFF226FDB),
                    Color(0xFF1E63C0),
                    Color(0xFF172DA4),
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 170,
                  ),
                  GameCards(),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(),
                  Container(
                    width: 500,
                    padding: EdgeInsets.all(10),
                    child: GridView.builder(
                      padding: EdgeInsets.all(10),
                      physics: new NeverScrollableScrollPhysics(),
                      itemCount: images.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: .80,
                          mainAxisExtent: 150),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: gameContainer(
                            images[index],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
            clipper: WaveClipperTwo(flip: true),
          ),
          ClipPath(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Recently Played",
                    style: TextStyle(
                      color: Color(0xFF0E65C6),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 500,
                    child: ScrollSnap(),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Trending Tournament",
                    style: TextStyle(
                      color: Color(0xFF0E65C6),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 500,
                    child: CardScrollSnap(),
                  ),
                  Container(
                    height: 80,
                    alignment: Alignment.center,
                    width: double.infinity,
                    color: Color(0xFFF3F3F3),
                    child: Text(
                      "LEADER BOARD",
                      style: TextStyle(
                          color: Color(0xFF0E65C6),
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ),
                  Container(
                    height: 300,
                    color: Color(0xFFF3F3F3),
                    child: tabBarContainer(),
                  ),
                ],
              ),
            ),
            clipper: WaveClipperTwo(reverse: true),
          )
        ],
      ),
    );
  }
}

Widget tabBarContainer() {
  return DefaultTabController(
    length: 3,
    initialIndex: 2,
    child: Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      appBar: TabBar(
        unselectedLabelColor: Color(0xFF064992),
        labelColor: Colors.white,
        indicator: BoxDecoration(
          color: Color(0xFF064992),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "This Month",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Tab(
            child: Text(
              "This Week",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Tab(
            child: Text(
              "Today",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFF064992),
        child: TabBarView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Card(
                      margin: EdgeInsets.all(2),
                      color: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                      child: (Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "John\nDoe\n",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Cash Won:",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Rs.4500",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Card(
                      margin: EdgeInsets.all(2),
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                      child: (Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "John\nDoe\n",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Cash Won:",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Rs.4500",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Card(
                      margin: EdgeInsets.all(2),
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                      child: (Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "John\nDoe\n",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Cash Won:",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Rs.4500",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Card(
                      margin: EdgeInsets.all(2),
                      color: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                      child: (Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "John\nDoe\n",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Cash Won:",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Rs.4500",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Card(
                      margin: EdgeInsets.all(2),
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                      child: (Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "John\nDoe\n",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Cash Won:",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Rs.4500",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Card(
                      margin: EdgeInsets.all(2),
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                      child: (Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "John\nDoe\n",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Cash Won:",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Rs.4500",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Card(
                      margin: EdgeInsets.all(2),
                      color: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                      child: (Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "John\nDoe\n",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Cash Won:",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Rs.4500",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Card(
                      margin: EdgeInsets.all(2),
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                      child: (Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "John\nDoe\n",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Cash Won:",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Rs.4500",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Card(
                      margin: EdgeInsets.all(2),
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                      child: (Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "John\nDoe\n",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Cash Won:",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Rs.4500",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget gameContainer(String index) {
  return Container(
    decoration: kGradientBoxDecoration,
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: kInnerDecoration,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image(
            image: AssetImage("$index"),
          ),
        ),
      ),
    ),
  );
}

final kInnerDecoration = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: Colors.grey[200]),
  borderRadius: BorderRadius.circular(20),
);

final kGradientBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.white,
      Colors.grey,
      Colors.white,
      Colors.grey,
      Colors.white,
    ],
  ),
  border: Border.all(
    color: Colors.grey,
  ),
  borderRadius: BorderRadius.circular(20),
);
