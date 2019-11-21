import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'costants.dart';
import 'bottom_button.dart';
class ResultsPAge extends StatelessWidget {

  ResultsPAge({@required this.result,@required this.bmi,@required this.interpretation});
  final String result;
  final String bmi;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI CALCULATOR"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Your Result",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result,
                    style: TextStyle(
                        color: Color(0xFF24D876),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    bmi,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    interpretation,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          ScreenButton(buttonName:"RE-CALCULATE ",page: (){Navigator.pop(context);},)
        ],
      ),
    );
  }
}
