import 'package:flutter/cupertino.dart';
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
      appBar: AppBar(
        title: Text('GirdView Demo'),
      ),
      body: MyGirdView(),
    );
  }
}

class MyGirdView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: GridView.extent(
          maxCrossAxisExtent: 150,
          padding: EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: _buildGirdTileList(30)
      ),
    );
  }
}

List<Widget> _buildGirdTileList(int conut) {
  List<Widget> containers = [];
  for(var i = 0; i <conut; i++){
    var image = Image.network('https；//picsum.photos/id/$i/150');
    containers.add(image);
  }
  return containers;
}