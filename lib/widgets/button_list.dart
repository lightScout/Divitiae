import 'package:flutter/material.dart';
import 'light_button.dart';

class ButtonsList extends StatelessWidget {
  final Function(int amount) passValue;

  ButtonsList(this.passValue);
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      children: <Widget>[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  LightButton((addValue) {
                    passValue(addValue);
                    //print(addValue);
                  }, 50),
                ],
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  LightButton((addValue) {
                    passValue(addValue);
                    //print(addValue);
                  }, 500),
                ],
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  LightButton((addValue) {
                    passValue(addValue);
                    //print(addValue);
                  }, 5000),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
