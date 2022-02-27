import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          buildRow(),
          Row(
            children: <Widget>[
              Expanded(flex:1,child: Text('row1',style: TextStyle(fontSize: 30)),
              ),
              Expanded(flex:2,child: Center(child: Text('row1',style: TextStyle(fontSize: 30)))),
            ],
          )
        ],
      )
    );
  }

  Row buildRow() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              Text('row1',style: TextStyle(fontSize: 30)),
              Text('row2',style: TextStyle(fontSize: 30)),
              Text('row3',style: TextStyle(fontSize: 30)),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('col1',style: TextStyle(fontSize: 30)),
                  Text('col2',style: TextStyle(fontSize: 30)),
                ],
              )
            ]
        );
  }
}