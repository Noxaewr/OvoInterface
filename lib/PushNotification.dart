import 'package:flutter/material.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:testsample/AnimationMenu.dart';
import 'package:testsample/ImagePickerForm.dart';
// import 'package:url_launcher/url_launcher.dart';

import 'dart:async';

class PusNotif extends StatefulWidget {
  @override
  _PusNotifState createState() => _PusNotifState();
}

class _PusNotifState extends State<PusNotif> with WidgetsBindingObserver {
  // final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  String tokenFCM;
  String notif = '0';
  // getToken(){
  //   _firebaseMessaging.getToken().then((token) {
  //     print(token); // Print the Token in Console
  //     setState(() {
  //       tokenFCM=token;
  //     });
  //   });
  // }

  // snackbardialog(){
  //   _firebaseMessaging.configure(
  //     onMessage: (Map<String, dynamic> message) async{
  //       print("onMessage : $message");
  //       final snackbar = SnackBar(
  //         content: Text(message['notification']['title']),
  //         action: SnackBarAction(
  //           label: 'Go',
  //           onPressed: ()=>null,
  //         ),
  //       );

  //       Scaffold.of(context).showSnackBar(snackbar);
  //     },
  //   );
  // }

  @override
  void initState() {
    // _firebaseMessaging.configure(
    //   onMessage: (Map<String, dynamic> message) async{
    //     print("onMessage : $message");
    //     print('run notif');
    //     if(notif=='1'){
    //       showDialog(
    //         context: context,
    //         builder: (context) => AlertDialog(
    //           content: ListTile(
    //             title: Text(message['notification']['title']),
    //             subtitle: Text(message['notification']['body']),
    //           ),
    //           actions: <Widget>[
    //             FlatButton(
    //               child: Text('Ok'),
    //               onPressed: () {
    //                 Navigator.of(context).pop();
    //                 print('run refresh');
    //               } 
    //             )
    //           ],
    //         )
    //       );
    //     }else{
    //       showDialog(
    //         context: context,
    //         builder: (context) => AlertDialog(
    //           content: ListTile( 
    //             title: Text('Flutter in App Notification'),
    //             subtitle: Text('Get new Data'),
    //           ),
    //         )
    //       );
    //       // new Timer(new Duration(milliseconds: 1500), (){
    //       //   Navigator.of(context).pop();
    //       // });
    //     }
    //   },
    //   onResume: (Map<String, dynamic> message) async{
    //     new Timer(new Duration(milliseconds: 500), () {
    //       showDialog(
    //         context: context,
    //         builder: (context) => AlertDialog(
    //           content: ListTile( 
    //             title: Text('in App Notification'),
    //             subtitle: Text('Get new Data'),
    //           ),
    //           actions: <Widget>[
    //             FlatButton(
    //               child: Text('Go'),
    //               onPressed: () {
    //                 //launch(message['data']['approve']);
    //                 Navigator.of(context).pop();
    //               },
    //             )
    //           ],
    //         )
    //       );
    //     });
    //   }
    // );
    super.initState();
    WidgetsBinding.instance.addObserver(this);
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
            notif='1';
          });
          print('paused');
        break;
      case AppLifecycleState.resumed:
          setState(() {
            notif='0';
          });
          print('resumed');
        break;
      case AppLifecycleState.inactive:
          setState(() {
            notif='1';
          });
          print('inactive');
        break;
      case AppLifecycleState.suspending:
          print('suspending');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PushNotification'),
        actions: <Widget>[
          Container(
            child: IconButton(
              icon: new Icon(Icons.assignment_ind),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ImagePickerForm()
                ));
              },
            )
          ),
          Container(
            child: IconButton(
              icon: new Icon(Icons.android),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => AnimationMenuPage()
                ));
              },
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/4),
            child: Center(
              child: Container(
                child: Text('Test Push Notification'),
              ),
            ),
          ),
          Center(
            child: Container( 
                child: Text('getToken'),
              // child: FlatButton(
              //   // onPressed: () => getToken(),
              // ),
            ),
          ),
          Center(
            child: Container(
              child: tokenFCM==null?Text('Generate Token Here'):Text(tokenFCM),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top : 50.0),
            child: 
            tokenFCM==null?
            Center(
              child: Container(),
            )
            :
            Center(
              child : new InkWell(
                child: new Text('Open Browser'),
                  // onTap: () => launch('https://www3.ekahospital.com/giatrosweb/appointment/queue/queue_pharmacy/queue/send_notification_by_token?token='+tokenFCM)
              ),
            ),
          ),
        ],
      )
    );
  }
}