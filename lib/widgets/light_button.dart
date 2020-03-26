import 'package:flutter/material.dart';

class LightButton extends StatelessWidget {
  final Function(int amount) passValue;
  final int amount;
  LightButton(this.passValue, this.amount);
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: Color(0xFF314E7C),
      shadowColor: Colors.lightBlue,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50.0),
        topRight: Radius.circular(10.0),
        bottomRight: Radius.circular(50.0),
        bottomLeft: Radius.circular(10.0),
      ),
      child: FlatButton(
        onPressed: () {
          passValue(amount);
        },
        child: Text(
          amount.toString(),
          style: TextStyle(
            fontSize: 22.2,
            fontFamily: 'Sen',
            fontWeight: FontWeight.w600,
            color: Color(0xFFf97731),
          ),
        ),
        color: Color(0xFF3F9689),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(50.0),
            bottomLeft: Radius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
