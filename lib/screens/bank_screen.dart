import 'package:flutter/material.dart';
import 'package:divitiae/widgets/button_list.dart';
import 'add_light_screen.dart';
import 'package:divitiae/model/data.dart';

class BankScreen extends StatefulWidget {
  static const String id = 'bank_screen';
  @override
  _BankScreenState createState() => _BankScreenState();
}

class _BankScreenState extends State<BankScreen> {
  int bankBalance = 100000;
  List<Data> valueList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD8C3BE),
      floatingActionButton: FloatingActionButton(
        heroTag: 'b1',
        backgroundColor: Color(0xFF36393B),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
                child: Container(
              child: AddLightScreen((addValue) {
                setState(() {
                  bankBalance += addValue;
                  valueList.add(
                    Data(addValue),
                  );
                });
              }),
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
            )),
            backgroundColor: Colors.transparent,
          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 60.0,
              left: 30.0,
              right: 30.0,
              bottom: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.all_inclusive,
                        size: 33.3,
                        color: Color(0xFF33211C),
                      ),
                      backgroundColor: Color(0xfff1e1c0),
                      radius: 30.0,
                    ),
                    SizedBox(
                      width: 22.2,
                    ),
                    Text(
                      bankBalance.toString(),
                      style: TextStyle(
                          color: Color(0xfff1e1c0),
                          fontSize: 33.3,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 88.8,
                    ),
                    FloatingActionButton(
                      heroTag: 'b2',
                      child: Icon(
                        Icons.calendar_view_day,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      backgroundColor: Color(0xFF36393B),
                      onPressed: () {},
                    ),
//                    Text(
//                      'Divitiae',
//                      style: TextStyle(
//                        fontStyle: FontStyle.italic,
//                        fontWeight: FontWeight.w700,
//                        color: Color(0xFF964e0e),
//                        fontSize: 40.0,
//                      ),
//                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 11.1,
//              left: 30.0,
//              right: 30.0,
              bottom: 10.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(111.1),
                topRight: Radius.circular(111.1),
                bottomLeft: Radius.circular(222.2),
                bottomRight: Radius.circular(222.2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Notes of Gratitude',
                    style: TextStyle(
                        color: Color(0xff33211C),
                        fontSize: 22.2,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: ButtonsList((addValue) {
                setState(() {
                  bankBalance += addValue;
                  valueList.add(
                    Data(addValue),
                  );
                });
              }),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 60.0,
              left: 30.0,
              right: 30.0,
              bottom: 30.0,
            ),
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
