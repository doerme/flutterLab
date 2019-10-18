import 'package:flutter/material.dart';

class PageTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('page1 build');
    return RepaintBoundary(
      child: Scaffold(
        appBar: AppBar(
          title: Text('小型实验室'),
        ),
        body: Container(
          child: Text('1'),
        ),
      ),
    );
  }
}
