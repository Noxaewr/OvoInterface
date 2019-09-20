import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:testsample/customIcon/custom_icons_icons.dart';


class HomeOvoPage extends StatefulWidget {
  @override
  _HomeOvoPageState createState() => _HomeOvoPageState();
}

class _HomeOvoPageState extends State<HomeOvoPage> {
  
  int homeOvo=0;
  int noIndex=0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white,width: 1))
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 1),
          child: Stack(
            children: <Widget>[
              Container(
                color: Color(0xFFB4c2a86),
                height: size.height/3.2,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 9, left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child : new Text(
                          'OVO CASH', 
                          style: new TextStyle(color: Colors.white, fontSize: 15.0),)
                        ),
                      ),
                    ),
                    FractionalTranslation(
                      translation: Offset(0.06, 0.10),
                      child: Row(
                        children: <Widget>[
                          FractionalTranslation(
                            translation: Offset(-1, -0.8),
                            child: Container(
                              child: new Text(
                                'Rp', 
                                style: new TextStyle(color: Colors.orange[200], fontSize: 12.0),
                              ),
                            ),
                          ),
                          FractionalTranslation(
                            translation: Offset(-0.03, 0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: new Text(
                                    '19.071.995', 
                                    style: new TextStyle(color: Colors.orange[200], fontSize: 30.0),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: size.width/6),
                                  child: Container(
                                    child: Icon(CustomIcons.refresh, color: Colors.white, size: 25,)
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: size.width/20),
                                  child: Container(
                                    width: size.width/4.5,
                                    height: size.height/15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF06b3ba),
                                      borderRadius: BorderRadius.circular(10.0)
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Top Up', 
                                        style: TextStyle(color:Colors.white, fontSize: 15.0)
                                      )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ),
                    FractionalTranslation(
                      translation: Offset(0.03, 0.35),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            new Text(
                              'OVO POINTS', 
                              style: new TextStyle(color: Colors.white, fontSize: 15.0),
                            ),
                            new Text(
                              ' 9.081.992', 
                              style: new TextStyle(color: Colors.orange[200], fontSize: 15.0),
                            ),
                          ], 
                        ),
                      ),
                    ),
                    FractionalTranslation(
                      translation: Offset(0, 0.35),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black.withOpacity(0.25),
                          ),
                          child: Container(
                            height: size.height/15,
                            width: size.width/1.3,
                            child: Padding(
                              padding: const EdgeInsets.only(left:15.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: <Widget>[
                                    RichText(
                                      text: TextSpan(
                                        children: <TextSpan> [
                                          new TextSpan(
                                            text: 'OVO PAYLATER',
                                            style: new TextStyle(fontSize:13.0, color: Colors.white),
                                          ),
                                          new TextSpan(
                                            text: '                      Sisa Limit  ',
                                            style: new TextStyle(fontSize:13.0, color: Colors.white),
                                          ),
                                          new TextSpan(
                                            text: '631.892',
                                            style: new TextStyle(fontSize:13.0, color: Colors.orange[200]),
                                          ),
                                        ]
                                      ),
                                    ),
                                    new Icon(Icons.chevron_right, color: Colors.white)
                                  ],
                                )
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FractionalTranslation(
                      translation: Offset(0.0, 0.4),
                      child: Container(
                        height: 75,
                        width: size.width/1.1,
                        color: Colors.white,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 0.25)
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                constraints: BoxConstraints(
                                  maxHeight: 100,
                                  maxWidth: size.width/3.55,
                                ),
                                height: 100,
                                width: size.width/3.19,
                                color: Colors.white,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black, width: 0.3)
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: Image.asset("assets/transferOvo.png", fit: BoxFit.contain,),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100,
                                width: size.width/3.19,
                                color: Colors.white,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black, width: 0.3)
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(12),
                                    child: Image.asset("assets/scanOvo.png", fit: BoxFit.contain,),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100,
                                width: size.width/3.19,
                                color: Colors.white,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black, width: 0.3)
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(14),
                                    child: Image.asset("assets/idOvo.png", fit: BoxFit.contain,),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height/2.8),
                child: Container(
                  color: Colors.white,
                  child: ListView(
                    children: <Widget>[
                      FractionalTranslation(
                        translation: Offset(0.07, 0.1),
                        child: Container(
                          height: 100,
                          width: size.width/1.2,
                          color: Colors.white,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                            ),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      constraints: BoxConstraints(
                                        maxHeight: 100,
                                        maxWidth: size.width/3.4,
                                      ),
                                      height: 70,
                                      width: size.width/6,
                                      color: Colors.white,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Color(0xFFBcff2f4), width: 1),
                                          borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.all(17),
                                          child: Image.asset("assets/plnOvo.png", fit: BoxFit.contain,),
                                        ),
                                      ),
                                    ),
                                    Text('PLN', style: TextStyle(fontSize: 11, color: Colors.black54),)
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: size.width/15),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        constraints: BoxConstraints(
                                          maxHeight: 100,
                                          maxWidth: size.width/3.4,
                                        ),
                                        height: 70,
                                        width: size.width/6,
                                        color: Colors.white,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Color(0xFFBcff2f4), width: 1),
                                            borderRadius: BorderRadius.circular(100)
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.all(17),
                                            child: Image.asset("assets/pulsaOvo.png", fit: BoxFit.contain,),
                                          ),
                                        ),
                                      ),
                                      Text('Pulsa', style: TextStyle(fontSize: 11, color: Colors.black54),)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: size.width/15),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        constraints: BoxConstraints(
                                          maxHeight: 100,
                                          maxWidth: size.width/3.4,
                                        ),
                                        height: 70,
                                        width: size.width/6,
                                        color: Colors.white,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Color(0xFFBcff2f4), width: 1),
                                            borderRadius: BorderRadius.circular(100)
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.all(17),
                                            child: Image.asset("assets/paketdataOvo.png", fit: BoxFit.contain,),
                                          ),
                                        ),
                                      ),
                                      Text('Paket Data', style: TextStyle(fontSize: 10, color: Colors.black54),)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: size.width/15),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        constraints: BoxConstraints(
                                          maxHeight: 100,
                                          maxWidth: size.width/3.4,
                                        ),
                                        height: 70,
                                        width: size.width/6,
                                        color: Colors.white,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Color(0xFFBcff2f4), width: 1),
                                            borderRadius: BorderRadius.circular(100)
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.all(17),
                                            child: Image.asset("assets/pascabayarOvo.png", fit: BoxFit.contain,),
                                          ),
                                        ),
                                      ),
                                      Text('Pascabayar', style: TextStyle(fontSize: 10, color: Colors.black54),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      FractionalTranslation(
                        translation: Offset(0.07, 0.1),
                        child: Container(
                          height: 100,
                          width: size.width/1.2,
                          color: Colors.white,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                            ),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      constraints: BoxConstraints(
                                        maxHeight: 100,
                                        maxWidth: size.width/3.4,
                                      ),
                                      height: 70,
                                      width: size.width/6,
                                      color: Colors.white,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Color(0xFFBcff2f4), width: 1),
                                          borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.all(17),
                                          child: Image.asset("assets/bpjsOvo.png", fit: BoxFit.contain,),
                                        ),
                                      ),
                                    ),
                                    Text('BPJS', style: TextStyle(fontSize: 10, color: Colors.black54),)
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: size.width/15),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        constraints: BoxConstraints(
                                          maxHeight: 100,
                                          maxWidth: size.width/3.4,
                                        ),
                                        height: 70,
                                        width: size.width/6,
                                        color: Colors.white,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Color(0xFFBcff2f4), width: 1),
                                            borderRadius: BorderRadius.circular(100)
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.all(17),
                                            child: Image.asset("assets/paylaterOvo.png", fit: BoxFit.contain,),
                                          ),
                                        ),
                                      ),
                                      Text('OVO PayLater', style: TextStyle(fontSize: 10, color: Colors.black54),)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: size.width/15),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        constraints: BoxConstraints(
                                          maxHeight: 100,
                                          maxWidth: size.width/3.4,
                                        ),
                                        height: 70,
                                        width: size.width/6,
                                        color: Colors.white,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Color(0xFFBcff2f4), width: 1),
                                            borderRadius: BorderRadius.circular(100)
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.all(17),
                                            child: Image.asset("assets/streamingOvo.png", fit: BoxFit.contain,),
                                          ),
                                        ),
                                      ),
                                      Text('Streaming', style: TextStyle(fontSize: 10, color: Colors.black54),)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: size.width/15),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        constraints: BoxConstraints(
                                          maxHeight: 100,
                                          maxWidth: size.width/3.4,
                                        ),
                                        height: 70,
                                        width: size.width/6,
                                        color: Colors.white,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Color(0xFFBcff2f4), width: 1),
                                            borderRadius: BorderRadius.circular(100)
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.all(17),
                                            child: Image.asset("assets/lihatsemuaOvo.png", fit: BoxFit.contain,),
                                          ),
                                        ),
                                      ),
                                      Text('Lihat Semua', style: TextStyle(fontSize: 10, color: Colors.black54),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 180,
                        child: CarouselSlider(
                          enableInfiniteScroll: false,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          height: 200.0,
                          viewportFraction: 0.9,
                          onPageChanged: (index) {
                            setState(() {
                              noIndex=index;
                            });
                          },
                          items: [
                            'assets/promo1Ovo.png',
                            'assets/promo2Ovo.png',
                          ].map((i){
                            return Builder(
                              builder: (BuildContext context) {
                                return Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      if(noIndex==0){
                                        print("noIndex : $noIndex");
                                      }else if(noIndex==1){
                                        print("noIndex : $noIndex");
                                      }else{
                                        print(3);
                                      }
                                    },
                                    child: Container(
                                      height: 200.0,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.red.withOpacity(0)
                                      ),
                                      child: Image.asset(i, fit: BoxFit.contain)
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}