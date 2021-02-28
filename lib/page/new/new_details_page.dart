import "package:flutter/material.dart";

class NewDetailsPage extends StatefulWidget {
  @override
  _NewDetailsPageState createState() => _NewDetailsPageState();
}

class _NewDetailsPageState extends State<NewDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('资讯详情'),
        ),
        body: SafeArea(
        child: Text('1111111')
        )
    );
  }
}
