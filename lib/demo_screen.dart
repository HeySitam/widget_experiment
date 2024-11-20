import 'package:flutter/material.dart';

class DemoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Container(height: 100, color: Colors.red,)),
              Expanded(
                  flex: 1,
                  child: Container(width: 100, height: 100, color: Colors.blue,)),
            ],
          ),
        ),
    );
  }

}