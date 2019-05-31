import 'package:flutter/material.dart';

import 'bloc.dart';

class FragmentList extends StatelessWidget {
  final Bloc bloc;

  const FragmentList(
    this.bloc, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.selectedItem,
      initialData: "",
      builder: (BuildContext context, AsyncSnapshot<String> screenType) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              selected: bloc.items[index] == screenType.data,
              title: Text(bloc.items[index]),
              onTap: () {
                bloc.setSelected(bloc.items[index]);
              },
            );
          },
          itemCount: bloc.items.length,
        );
      },
    );
  }
}
