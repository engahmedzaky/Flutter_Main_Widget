import 'package:flutter/material.dart';

class GridViewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(100, (index) {
        return Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
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
