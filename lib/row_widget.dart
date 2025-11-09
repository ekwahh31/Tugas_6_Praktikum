import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Row'),
      ),
      body: Row(
        children: const [
          Text('row 1'),
          Text('row 2'),
          Text('row 3'),
          Text('row 4'),
        ],
      ),
    );
  }
}