import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var balance = 2456;
    var name = "Achudh";
    // bool cash = true;
    return Stack(
      children: [
        ClipPath(
          child: Container(
            color: Colors.white,
            height: 145,
          ),
          clipper: OvalBottomBorderClipper(),
        ),
        ClipPath(
          child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10, right: 5),
                  color: Color(0xFF07136a),
                  height: 140,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(
                        height: 40.0,
                        width: 40.0,
                        image: AssetImage("assets/images/menu.png"),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                child: Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Image(
                                    image:
                                        AssetImage("assets/images/avatar.png"),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '$name',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 28,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 22,
                                          color: Color(0xFF0b67d1),
                                        ),
                                      ],
                                    ),
                                    BorderedText(
                                      strokeColor: Colors.white,
                                      strokeWidth: 2,
                                      child: Text(
                                        ' 10',
                                        style: TextStyle(
                                          color: Color(0xFF0b67d1),
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Cash Mode",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2, bottom: 2),
                              child: RotatedBox(
                                quarterTurns: 1,
                                child: SwitcherButton(
                                  onChange: (val) {},
                                  size: 50,
                                  onColor: Colors.blue,
                                  offColor: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              "Free Mode",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Add Money');
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Stack(
                            alignment: Alignment.lerp(
                                Alignment.center, Alignment.centerRight, 2.7),
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: 85,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white,
                                        offset: Offset(2, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 5,
                                          top: 3,
                                        ),
                                        child: Text(
                                          "Rs.",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10.0,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        " $balance",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Stack(
                                alignment: AlignmentDirectional.center,
                                children: <Widget>[
                                  Image(
                                    height: 60,
                                    width: 60,
                                    image:
                                        AssetImage("assets/images/button.png"),
                                  ),
                                  Positioned(
                                    top: 17,
                                    left: 20,
                                    child: Icon(
                                      Icons.add_circle_outline,
                                      size: 22,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          clipper: OvalBottomBorderClipper(),
        ),
      ],
    );
  }
}

class OvalBottomBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 15);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(
        size.width - size.width / 4, size.height, size.width, size.height - 15);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
