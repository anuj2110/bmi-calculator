import 'package:flutter/material.dart';
import 'costants.dart';
class ScreenButton extends StatelessWidget {

  ScreenButton({@required this.buttonName,@required this.page});
  
  final Function page;
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: page,
      child: Container(
        decoration: BoxDecoration(
            color: kbottomContainerColor,
            borderRadius: BorderRadius.circular(10.0)),
        child: Center(
            child: Text(
          buttonName,
          style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
        )),
        margin: EdgeInsets.only(top: 7.0),
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}