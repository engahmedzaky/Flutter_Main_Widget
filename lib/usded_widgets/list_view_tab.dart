import 'package:flutter/material.dart';

class ListViewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(100, (index) {
        return Padding(
          padding: EdgeInsets.only(top: 20.0, left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Titel item $index',
                style: TextStyle(fontSize: 24),
              ),
              Text('List Content $index'),
            ],
          ),
        );
      }),
    );
  }
}
