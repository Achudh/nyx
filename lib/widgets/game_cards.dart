import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:nyx/models/quiz_model.dart';

class GameCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: quizData.length,
        itemBuilder: (BuildContext context, int index) {
          Quiz quiz = quizData[index];
          return Container(
            margin: EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  child: Image(
                    height: 200.0,
                    width: 150.0,
                    image: AssetImage(quiz.image),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  child: Container(
                    height: 180.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            quiz.name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: GradientProgressIndicator(
                              value: quiz.progress,
                              gradient: Gradients.buildGradient(
                                Alignment.topLeft,
                                Alignment.bottomRight,
                                [
                                  Colors.orangeAccent,
                                  Colors.deepOrange,
                                ],
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Text(
                            "${quiz.completion} / 10",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
