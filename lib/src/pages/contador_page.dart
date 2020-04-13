import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState() => _ContadorPageState();
  
}
class _ContadorPageState extends State<ContadorPage>{
  TextStyle _text = new TextStyle(fontSize: 25);
  int _contador = 0;
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
            Text("Numero de click", style: _text),
             Text('$_contador', style: _text)
          ],
        ),
      ),
      floatingActionButton: _createButtons(),
    );
  }
 Widget _createButtons(){
   return Row(
     mainAxisAlignment: MainAxisAlignment.end,
     children: <Widget>[
      SizedBox(width: 30.0 ),
      FloatingActionButton(
        child: Icon(Icons.exposure_zero),
        onPressed: _reset
      ),
      Expanded( child: SizedBox()),
      FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: _subtract
      ),
      SizedBox(width: 15.0),
      FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _add
      ),
     ],
   );
  }
  void _add(){
    setState(() =>  _contador++);
  }
  void _subtract(){
    setState(() =>  _contador--);
  }
  void _reset(){
       setState(() =>  _contador =  0);
  }
}