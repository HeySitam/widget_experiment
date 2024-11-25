import 'package:flutter/material.dart';

class CachedListScreen extends StatelessWidget {
  const CachedListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, pos) {
           return MyListItem();
      }),
    );
  }
}

class MyListItem extends StatefulWidget {
  @override
  _MyListItemState createState() => _MyListItemState();
}

class _MyListItemState extends State<MyListItem>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context); // Ensure AutomaticKeepAlive works
    return Text("Cached Item");
  }
}
