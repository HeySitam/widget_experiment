import 'package:flutter/material.dart';

class CustomGridLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    int count = 5;
    final double itemWidth = size.width / 3;
    final double itemHeight = size.height / 3;
    for (int i = 0; i < count; i++) {
      layoutChild(i, BoxConstraints.loose(size));
      final double xPos = (i % 3) * itemWidth;
      final double yPos = (i ~/ 3) * itemHeight;
      positionChild(i, Offset(xPos, yPos));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}

class GridItem extends StatelessWidget {
  final Color color;
  final int id;
  const GridItem({super.key, required this.color, required this.id});

  @override
  Widget build(BuildContext context) {
    // Layout id is used for mapping with childId (here it is mentioned as i) inside performlayout() method
    return LayoutId(id: id, child: Container(
      color: color,
    ));
  }
}

class CustomLayoutScreen extends StatelessWidget {
  const CustomLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomMultiChildLayout(
          delegate: CustomGridLayoutDelegate(),
          children: const [
            GridItem(color: Colors.red, id: 0),
            GridItem(color: Colors.deepPurple, id: 1),
            GridItem(color: Colors.green, id: 2),
            GridItem(color: Colors.cyan, id: 3),
            GridItem(color: Colors.blue, id: 4),
          ],
      ),
    );
  }
}

