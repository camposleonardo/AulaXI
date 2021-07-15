import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Projeto Aula';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Home(
        ),

      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child:SingleChildScrollView(
            child: Card(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              child: Column(
              children: <Widget>[
                Image.asset("imagens/a.jpg"),
                new SizedBox(
                  width: 200,
                  height: 25,
                  child: new RaisedButton(
                    color: Colors.purple,
                    onPressed:()=>print("você apertou mesmo em"),
                    child: new Text("<-- Back"),
                  ),
                ), // padding: EdgeInsets.all(3),
              ],),
            ),),
    )
      );
  }
}
