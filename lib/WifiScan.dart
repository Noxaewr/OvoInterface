import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:connectivity/connectivity.dart';

class WifiScanPage extends StatefulWidget {
  @override
  _WifiScanPageState createState() => _WifiScanPageState();
}

class _WifiScanPageState extends State<WifiScanPage> {
  var wifiBSSID;
  var wifiIP;
  var wifiName;

  wifiConnection() async {
    // try {
    //   var wBSSID = await (Connectivity().getWifiBSSID());
    //   var wIP = await (Connectivity().getWifiIP()); //--network
    //   var wName =  await(Connectivity().getWifiName()); //-- wifi network  
    //   setState(() {
    //     wifiBSSID=wBSSID.toString();
    //     wifiIP=wIP.toString();
    //     wifiName=wName.toString();
    //   });
    // } on PlatformException catch (e) {
    //   print(e.toString());
    //   wifiBSSID = "Failed to get Wifi BSSID";
    // }
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    wifiConnection();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Wifi Scan'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/8),
        child: Center(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  wifiConnection();
                },
                child: Container(
                  child: Icon(Icons.android, size: 64,),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/8),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: 
                      wifiBSSID==null?new Text('wifiBSSID : ', style: new TextStyle(fontSize: 28),):
                      new Text('wifiBSSID : '+wifiBSSID, style: new TextStyle(fontSize: 28),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: 
                      wifiIP==null?new Text('wifiIP : ', style: new TextStyle(fontSize: 28),):
                      new Text('wifiIP : '+wifiIP, style: new TextStyle(fontSize: 28),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: 
                      wifiName==null?new Text('wifiName : ', style: new TextStyle(fontSize: 28),):
                      new Text('wifiName : '+ wifiName, style: new TextStyle(fontSize: 28),)
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}