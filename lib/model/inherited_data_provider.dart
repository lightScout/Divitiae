import 'package:flutter/material.dart';
import 'package:divitiae/model/data.dart';

class InheritedDataProvider extends InheritedWidget {
  final Data data;
  InheritedDataProvider({this.data, Widget myChild}) : super(child: myChild);

  static InheritedDataProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedDataProvider>();

  @override
  bool updateShouldNotify(InheritedDataProvider old) => data != old.data;
}
