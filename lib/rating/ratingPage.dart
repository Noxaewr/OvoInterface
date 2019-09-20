import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:testsample/rating/ratingPage2.dart';

class TestRatingPage extends StatefulWidget {
  @override
  _TestRatingPageState createState() => _TestRatingPageState();
}

class _TestRatingPageState extends State<TestRatingPage> {
  String q1='3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Rating Page'),
        leading: Container(),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/5, left: 10,right: 10),
              child: Container(
                height: MediaQuery.of(context).size.height/10,
                child: Text("Apakah anda", style: TextStyle(fontSize: 40),),
              ),
            ),
            Container(
              child: Center(
                child: RatingBar(
                  initialRating: 3,
                  itemCount: 4,
                  itemSize: 90,
                  itemPadding: EdgeInsets.only(left: MediaQuery.of(context).size.width/50),
                  itemBuilder: (context, index) {
                    switch (index) {
                      case 0:
                        return Container(
                          child: Column(
                            children: <Widget>[
                            Icon(
                              Icons.sentiment_dissatisfied,
                              size: 60,
                              color: Colors.redAccent,
                            ),
                            Text('Tidak Puas')
                            ],
                          )
                        );
                      case 1:
                        return Container(
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.sentiment_neutral,
                                size: 70,
                                color: Colors.amber,
                              ),
                              Text('Kurang Puas')
                            ],
                          )
                        );
                      case 2:
                        return Container(
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.sentiment_satisfied,
                                size: 60,
                                color: Colors.lightGreen,
                              ),
                              Text('Puas')
                            ],
                          )
                        );
                      case 3:
                          return Container(
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.sentiment_very_satisfied,
                                color: Colors.green,
                                size: 60,
                              ),
                              Text('Sangat Puas')
                            ],
                          )
                        );
                    }
                  },
                  onRatingUpdate: (rating) {
                    print(rating.round().toString());
                    q1=rating.round().toString(); 
                  },
                ),
              ),
            ),
            Divider(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/4),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/2),
                    child: Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => RatingPage2()
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
              )
            ),
          ],
        ),
      ),
    );
  }
}