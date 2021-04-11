import 'package:flutter/material.dart';
import 'package:nyx/custom_body.dart';
import 'package:nyx/widgets/custom_app_bar.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size.fromHeight(150),
      ),
      // backgroundColor: Color(0xFF066ddc),
      body: CustomBody(),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF064992),
      height: 100,
      child: Column(
        children: [
          Container(
            height: 5,
            color: Color(0xFFDE2C38),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.only(top: 13),
                child: Column(
                  children: [
                    Text(
                      "Special Pass",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    Image(
                      height: 60,
                      width: 60,
                      image: AssetImage("assets/images/sp.png"),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 13),
                child: Column(
                  children: [
                    Text(
                      "Leaderboard",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    Image(
                      height: 60,
                      width: 60,
                      image: AssetImage("assets/images/lb.png"),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 13),
                child: Column(
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    Image(
                      height: 60,
                      width: 60,
                      image: AssetImage("assets/images/home.png"),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 13),
                child: Column(
                  children: [
                    Text(
                      "Features",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    Image(
                      height: 60,
                      width: 60,
                      image: AssetImage("assets/images/ft.png"),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 13),
                child: Column(
                  children: [
                    Text(
                      "Game Types",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    Image(
                      height: 60,
                      width: 60,
                      image: AssetImage("assets/images/gt.png"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
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
