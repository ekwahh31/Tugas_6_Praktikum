import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Column'),
      ),
      body: Column(
        children: const [
          Text('column 1'),
          Text('column 2'),
          Text('column 3'),
          Text('column 4'),
        ],
      ),
    );
  }

}