import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.amber,
            child: Text('aaaa'),
          ),
          Expanded(
            child: Container(
              child: Text('bbb'),
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
