import 'package:flutter/material.dart';
// import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:testsample/rating/ratingPage.dart';

class RatingPageStart extends StatefulWidget {
  @override
  _RatingPageStartState createState() => _RatingPageStartState();
}

class _RatingPageStartState extends State<RatingPageStart> {

  String caseno;

  void showAlert(BuildContext context, _text){
    var alertDialog = AlertDialog(
      title: Text("Warning"),
      content: Text(_text),
    );

    showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialog;
      }
    );
  }

  Future barcodeScanning() async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode("#ff6666","Cancel",false);
    setState(() {
      caseno=barcodeScanRes; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rating Page"),),
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/4),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: caseno==null?Text(''):Text('$caseno'),
              ),
              Container(
                height: 40.0,
                child: Material(
                  borderRadius: BorderRadius.circular(8.0),
                  child: GestureDetector(
                    onTap: (){
                      barcodeScanning();
                    },
                    child: Container(
                      height: 40.0,
                      width: 140.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.green,
                            style: BorderStyle.solid,
                            width: 1.0
                          ),
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Center(
                          child: Text(
                            'Scan',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lato'
                            )
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/3, left: MediaQuery.of(context).size.width/3),
                child: Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => TestRatingPage()
                        ));
                      },
                      child: Container(
                        height: 40.0,
                        width: 140.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                              style: BorderStyle.solid,
                              width: 1.0
                            ),
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: Center(
                            child: Text(
                              'Next Page',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Lato'
                              )
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}