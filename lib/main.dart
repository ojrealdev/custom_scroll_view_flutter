import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text('App Brewery'),
                floating: true,
                flexibleSpace: Placeholder(),
                expandedHeight: 150,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                    title: Text('Item #$index'),
                  ),
                  childCount: 11,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
