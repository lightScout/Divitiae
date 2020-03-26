import 'package:flutter/material.dart';
import 'package:divitiae/model/data.dart';

class AddLightScreen extends StatelessWidget {
  //String newTask;
//  final List<Data> addList;
  final Function(int value) callBack;

  AddLightScreen(this.callBack);

  @override
  Widget build(BuildContext context) {
    int newValue;
    return Container(
        child: Container(
      decoration: BoxDecoration(
        color: Color(0xFF002366),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 30.0,
              left: 30.0,
              right: 30.0,
              bottom: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Add Light',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.2,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //print(value);
                    newValue = int.parse(value);
                  },
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                FlatButton(
                  onPressed: () {
                    callBack(newValue);
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Color(0xFFD91C3B),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
//MaterialButton(
//onPressed: () {},
//minWidth: 300.0,
//height: 50.0,
//color: Colors.lightBlueAccent,
//child: Text(
//'Add',
//style: TextStyle(
//color: Colors.white,
//fontSize: 20.0,
//),
//),
//)
