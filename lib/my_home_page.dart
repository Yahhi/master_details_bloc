import 'package:flutter/material.dart';

import 'bloc.dart';
import 'fragment_details.dart';
import 'fragment_list.dart';

class MyHomePage extends StatelessWidget {
  final Bloc bloc = new Bloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Master-detail"),
      ),
      body: LayoutBuilder(builder: (context, constraint) {
        double borderHeight = 1.0;
        double listHeight = constraint.biggest.height / 3;
        double itemHeight =
            constraint.biggest.height - listHeight - borderHeight;
        return Column(
          children: <Widget>[
            Container(
              height: listHeight,
              child: FragmentList(bloc),
            ),
            Container(
              height: borderHeight,
              color: Colors.black54,
            ),
            Container(
              height: itemHeight,
              child: FragmentDetails(bloc),
            ),
          ],
        );
      }),
    );
  }
}
