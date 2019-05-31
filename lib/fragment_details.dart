import 'package:flutter/material.dart';

import 'bloc.dart';

class FragmentDetails extends StatelessWidget {
  final Bloc bloc;

  const FragmentDetails(
    this.bloc, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder(
        initialData: "Nothing selected",
        stream: bloc.selectedItem,
        builder: (BuildContext context, AsyncSnapshot<String> screenType) {
          final info = screenType.data;
          return _buildUi(context, info);
        },
      ),
    );
  }

  Widget _buildUi(BuildContext context, String info) {
    return Text(info);
  }
}
