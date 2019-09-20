import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class StepCountFlutterPage extends StatefulWidget {
  @override
  _StepCountFlutterPageState createState() => _StepCountFlutterPageState();
}

class _StepCountFlutterPageState extends State<StepCountFlutterPage> {
  String _km = "0";
  String _calories = "0";

  int stepCountValue;
  int _initStep;
  String totalStep;
  String _stepCountValue = '0';
  StreamSubscription<int> _subscription;

  int _step=0;

  double _numerox; //numero pasos
  double _convert;
  double _kmx;
  double burnedx;
  // double percent=0.1;

  @override
  void initState() {
    super.initState();
    //initPlatformState();
    setUpPedometer();
    Timer(Duration(seconds: 5), () {
      popUp();
    });
  }


  void setUpPedometer() {
    // Pedometer pedometer = new Pedometer();
    // _subscription = pedometer.stepCountStream.listen(_onData,
    //     onError: _onError, onDone: _onDone, cancelOnError: true);
  }

  void popUp(){
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ListTile(
          title: Text('initStep : $_initStep'),
          subtitle: Text('Step Now : $_step'),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            } 
          )
        ],
      )
    );
  }

  void _onData(stepCountValue) async {
    _step = stepCountValue;

    _initStep = stepCountValue - _step;
    
    // print(stepCountValue);
    setState(() {
      _stepCountValue = "$stepCountValue";
      totalStep = "$_initStep"; 
      // print(_stepCountValue);
    });

    var dist = _step; //pasamos el entero a una variable llamada dist
    double y = (dist + .0); //lo convertimos a double una forma de varias

    setState(() {
      _numerox =
          y; //lo pasamos a un estado para ser capturado ya convertido a double
    });

    var long3 = (_numerox);
    long3 = num.parse(y.toStringAsFixed(2));
    var long4 = (long3 / 10000);

    int decimals = 1;
    int fac = pow(10, decimals);
    double d = long4;
    d = (d * fac).round() / fac;
    print("d: $d");

    getDistanceRun(_numerox);

    setState(() {
      _convert = d;
      print(_convert);
    });
  }

  void reset() {
    setState(() {
      int stepCountValue = 0;
      stepCountValue = 0;
      _stepCountValue = "$stepCountValue";
    });
  }

  void _onDone() {}

  void _onError(error) {
    print("Flutter Pedometer Error: $error");
  }

  //function to determine the distance run in kilometers using number of steps
  void getDistanceRun(double _numerox) {
    var distance = ((_numerox * 78) / 100000);
    distance = num.parse(distance.toStringAsFixed(2)); //dos decimales
    var distancekmx = distance * 1000000;//34;
    distancekmx = num.parse(distancekmx.toStringAsFixed(2));
    //print(distance.runtimeType);
    setState(() {
      _km = "$distance";
      //print(_km);
    });
    setState(() {
      _kmx = num.parse(distancekmx.toStringAsFixed(2));
    });
  }

  //function to determine the calories burned in kilometers using number of steps
  void getBurnedRun() {
    setState(() {
      var calories = _kmx; //dos decimales
      _calories = calories==null?"0":"$calories";
      //print(_calories);
    });
  }

  void _onCancel() => _subscription.cancel();
  
  @override
  Widget build(BuildContext context) {
    getBurnedRun();
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Plugin example app'),
        ),
        body: new Center(
          child: Column(
            children: <Widget>[
              new Text("Step : $totalStep Steps"),
              Divider(height: 20,),
              new Text('Steps taken: $_stepCountValue Steps'),
              new Text("Distance : $_km Km"),
              new Text("Calories : $_calories kCal"),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: () {
                    reset();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 2.0
                      )
                    ),
                    child: Text('Reset'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: () {
                    _onCancel();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 2.0
                      )
                    ),
                    child: Text('Cancel'),
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}