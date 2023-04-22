import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
        title: Text('Grid Extended'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150,
        childAspectRatio: 2/3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        padding: EdgeInsets.all(10),
        children: gridChildren(),
      ),
    );
  }

  List<Widget> gridChildren() => List.generate(10, (index) => ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.network('https://picsum.photos/250?random=$index',fit: BoxFit.cover,),
  ));
}
