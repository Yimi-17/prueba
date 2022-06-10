import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:google_fonts/google_fonts.dart';
import './com/ButtonComp.dart';

void main() {
  runApp(const CalCApp());
}



class CalCApp extends StatefulWidget {
  const CalCApp({Key key}) : super(key: key);

  @override
  CalcAppState createState() => CalcAppState();


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Text('Hola'),
    );
  }
}

class CalcAppState extends State<CalCApp> {
  String _expression = '';
  String valorAnt = '';
  String operador = '';

  void numClick(String text) {
    setState(() => _expression += text);
  }

  void opeClick(String text) {
    setState(() => _expression += text);
  }

  void resultOperacion (String text){
    setState(() {
      switch(operador){

      }
    }
    );
  }


  void clear(String text) {
    setState(() {
      valorAnt = _expression;
      operador = text;
      _expression += text;
    });
  }


//Aquí Va codigo


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    _expression,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 48,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ButtonComp(
                    text: 'AC',
                    callback: clear,
                  ),
                  ButtonComp(
                    text: 'C',
                    callback: clear,
                  ),
                  ButtonComp(
                    text: '%',
                    fillColor: 0xFFFFD54F,
                    textColor: 0xFF65BDAC,
                    callback: numClick,
                  ),
                  ButtonComp(
                    text: '/',
                    fillColor: 0xFFFFD54F,
                    textColor: 0xFF65BDAC,
                    callback: numClick,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ButtonComp(
                    text: '7',
                    callback: clear,
                  ),
                  ButtonComp(
                    text: '8',
                    callback: clear,
                  ),
                  ButtonComp(
                    text: '9',
                    callback: numClick,
                  ),
                  ButtonComp(
                    text: '+',
                    fillColor: 0xFFFFD54F,
                    textColor: 0xFF65BDAC,
                    callback: numClick,
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }


}

