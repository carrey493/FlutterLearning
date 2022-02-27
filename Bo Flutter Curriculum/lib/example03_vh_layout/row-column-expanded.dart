import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MyText('row-1'),
              MyText('row-2'),
              MyText('row-3'),
              Column(
                children: <Widget>[
                  MyText('col-1'),
                  MyText('col-2'),
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: MyText('row-1')),
              Expanded(
                flex: 2,
                child: Center(
                    child: MyText('row-2')
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MyText extends StatelessWidget {
  final String txt;

  MyText(this.txt);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      txt,
      style: TextStyle(fontSize: 30),
    );
  }
}