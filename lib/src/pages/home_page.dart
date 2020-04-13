import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final TextStyle text = new TextStyle(fontSize: 25);
  final int contador = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numero de click", style: text),
             Text("$contador", style: text)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          //contador = contador + 1;
          print("Valor de conteo");
        }
      ),
    );
  }
}