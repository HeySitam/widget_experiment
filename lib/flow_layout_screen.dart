import 'package:flutter/material.dart';

class FlowLayoutScreen extends StatelessWidget {
  const FlowLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flow(
        delegate: MyFlowDelegate(), // Custom logic for layout
        children: [
          // Widgets to layout
          Container(width: 50, height: 50, color: Colors.red),
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.blue),
          Container(width: 50, height: 50, color: Colors.red),
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.blue),
          Container(width: 50, height: 50, color: Colors.red),
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.blue),
          Container(width: 50, height: 50, color: Colors.red),
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.blue),
          Container(width: 50, height: 50, color: Colors.red),
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.blue),
          Container(width: 50, height: 50, color: Colors.red),
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.blue),
          Container(width: 50, height: 50, color: Colors.red),
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.blue),
          Container(width: 50, height: 50, color: Colors.red),
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.blue),
          Container(width: 50, height: 50, color: Colors.red),
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.blue),
          Container(width: 50, height: 50, color: Colors.red),
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.blue),
          Container(width: 50, height: 50, color: Colors.red),
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.blue),
          Container(width: 50, height: 50, color: Colors.red),
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.blue),
          Container(width: 50, height: 50, color: Colors.red),
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.blue),
          Container(width: 50, height: 50, color: Colors.red),
          Container(width: 50, height: 50, color: Colors.green),
          Container(width: 50, height: 50, color: Colors.blue),


        ],
      )
    );
  }
}

class MyFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    double x = 0.0;
    double y = 0.0;

    for (int i = 0; i < context.childCount; i++) {
      final childSize = context.getChildSize(i)!;

      if (x + childSize.width > context.size.width) {
        x = 0.0; // Move to next row
        y += childSize.height;
      }

      context.paintChild(
        i,
        transform: Matrix4.translationValues(x, y, 0),
      );

      x += childSize.width;
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) => false;
}
