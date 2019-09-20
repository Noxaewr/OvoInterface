import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testsample/CollapsingToolbar.dart';
import 'package:testsample/ImagePickerForm.dart';
import 'package:testsample/PushNotification.dart';
import 'package:testsample/WifiScan.dart';
import 'package:testsample/rating/ratingPageStart.dart';
import 'package:testsample/stepcountFlutter.dart';

import 'OvoUI.dart';
import 'rating/ratingPage.dart';

class AnimationMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatefulWidget {
  @override
  _SnackBarPageState createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> with WidgetsBindingObserver{
  double opacityLevel = 0.0;
  double opacityLevel2 = 0.0;
  double opacityLevel3 = 0.0;
  double opacityLevel4 = 0.0;
  double opacityLevel5 = 0.0;
  double opacityLevel6 = 0.0;
  double opacityLevel7 = 0.0;
  double opacityLevel8 = 0.0;
  bool status=false;
  Image image1;

  @override
  void initState() {
    timer();
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    image1 = Image.asset("assets/eka.jpg");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(image1.image, context);
    precacheImage(Image.asset("assets/gpay.png").image, context);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Future<void> didChangeAppLifecycleState (AppLifecycleState state){
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.paused:
          setState(() {
            status=false;
          });
          print('paused');
        break;
      case AppLifecycleState.resumed:
          setState(() {
            status=true;
          });
          print('resumed');
        break;
      case AppLifecycleState.inactive:
          setState(() {
            status=false;
          });
          print('inactive');
        break;
      case AppLifecycleState.suspending:
          print('suspending');
        break;
    }
  }

  void _snackbar(){
    final snackBar = SnackBar(
      content: Text('Please Wait ! Still not done!'),
      action: SnackBarAction(
        label: '',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
    Timer(Duration(milliseconds: 500), (){
      Scaffold.of(context).hideCurrentSnackBar();
    });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double topRow = MediaQuery.of(context).size.height/50;
    return Container(
      color: Colors.blue.withOpacity(0.3),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.height/7),
            child: Container(
              child: AnimatedOpacity(
                opacity: opacityLevel,
                duration: Duration(milliseconds: 700),
                child: GestureDetector(
                  onTap: (){
                    if(status==false){
                        _snackbar();
                    }else{
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => OvoUI()
                      ));
                    }
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.home, 
                        size: 80, 
                        color: Colors.blue,
                      ),
                      Text('Home Ovo UI')
                    ],
                  )
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: topRow),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: size.width/5.5),
                  child: GestureDetector(
                    onTap: (){                
                      if(status==false){
                        _snackbar();
                      }else{
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ImagePickerForm()
                        ));
                      }
                    },
                    child: Container(
                      child: AnimatedOpacity(
                        opacity: opacityLevel8,
                        duration: Duration(milliseconds:700),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.panorama,
                              size:80,
                              color: Colors.blue,
                            ),
                            Text('Upload Image')
                          ],
                        )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width/4),
                  child: GestureDetector(
                    onTap: (){
                      if(status==false){
                        _snackbar();
                      }else{
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => PusNotif()
                        ));
                      }
                    },
                    child: Container(
                      child: AnimatedOpacity(
                        opacity: opacityLevel2,
                        duration: Duration(milliseconds: 700),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.notifications,
                              size:80,
                              color: Colors.blue,
                            ),
                            Text('Notification')
                          ],
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: topRow),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: size.width/30),
                  child: GestureDetector(
                    onTap: () {
                      if(status==false){
                        _snackbar();
                      }else{
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => WifiScanPage()
                        ));
                      }
                    },
                    child: Container(
                      child: AnimatedOpacity(
                        opacity: opacityLevel7,
                        duration: Duration(milliseconds: 700),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.wifi,
                              color: Colors.blue,
                              size: 80,
                            ),
                            Text('Wifi Scan')
                          ],
                        )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width/1.8),
                  child: GestureDetector(
                    onTap: () {
                      if(status==false){
                        _snackbar();
                      }else{
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => StepCountFlutterPage()
                        ));
                      }
                    },
                    child: Container(
                      child: AnimatedOpacity(
                        opacity: opacityLevel3,
                        duration: Duration(milliseconds: 700),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.person_pin,
                              color: Colors.blue,
                              size: 80,
                            ),
                            Text('Step Count')
                          ],
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: topRow),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: size.width/5.5),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => CollapsingToolBarPage() 
                      ));
                    },
                    child: Container(
                      child: AnimatedOpacity(
                        opacity: opacityLevel6,
                        duration: Duration(milliseconds: 700),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.straighten,
                              color: Colors.blue,
                              size: 80,
                            ),
                            Text('Collapse Header')
                          ],
                        ),
                      ),
                    )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width/4),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => RatingPageStart()
                      ));
                    },
                    child: Container(
                      child: AnimatedOpacity(
                        opacity: opacityLevel4,
                        duration: Duration(milliseconds: 700),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.blue,
                              size:80
                            ),
                            Text('Rating')
                          ],
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: topRow),
            child: AnimatedOpacity(
              opacity: opacityLevel5,
              duration: Duration(milliseconds: 700),
              child: Icon(
                Icons.sync,
                color: Colors.blue,
                size: 80,
              )
            ),
          ),
        ],
      ),
    );
  }

  void timer(){
    Timer(Duration(milliseconds: 500), () {
      setState(() {
        opacityLevel=1.0;
      });
    });

    Timer(Duration(milliseconds: 1000), () {
      setState(() {
        opacityLevel2=1.0;
      });
    });
    
    Timer(Duration(milliseconds: 1500), () {
      setState(() {
        opacityLevel3=1.0;
      });
    });
    
    Timer(Duration(milliseconds: 2000), () {
      setState(() {
        opacityLevel4=1.0;
      });
    });
    
    Timer(Duration(milliseconds: 2500), () {
      setState(() {
        opacityLevel5=1.0;
      });
    });
    
    Timer(Duration(milliseconds: 3000), () {
      setState(() {
        opacityLevel6=1.0;
      });
    });
    
    Timer(Duration(milliseconds: 3500), () {
      setState(() {
        opacityLevel7=1.0;
      });
    });

    Timer(Duration(milliseconds: 4000), () {
      setState(() {
        opacityLevel8=1.0;
      });
    });
    
    Timer(Duration(milliseconds: 4500), () {
      setState(() {
        status=true;
      });
    });
  }
}