import 'package:flutter/material.dart';
import 'package:testsample/customIcon/custom_icons_icons.dart';
import 'package:testsample/statelessPage/dealsOvo.dart';
import 'package:testsample/statelessPage/financeOvo.dart';
import 'package:testsample/statelessPage/historyOvo.dart';
import 'package:testsample/statelessPage/homeOvo.dart';
import 'package:testsample/statelessPage/walletOvo.dart';



class OvoUI extends StatefulWidget {
  @override
  _OvoUIState createState() => _OvoUIState();
}

class _OvoUIState extends State<OvoUI> with SingleTickerProviderStateMixin  {
  TabController _tabController;
  int _homeIndex=0,
      _dealsIndex=0,
      _financeIndex=0,
      _walletIndex=0,
      _historyIndex=0;

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Home', icon: Icon(Icons.adjust)),//Image.asset("asset/eka.jpg", fit: BoxFit.fill,),),
    Tab(text: 'Deals', icon: Icon(CustomIcons.shopping_bag)),
    Tab(text: 'Finance', icon: Icon(CustomIcons.strongbox)),
    Tab(text: 'Wallet', icon: Icon(CustomIcons.wallet)),
    Tab(text: 'History', icon: Icon(CustomIcons.historybar)),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Container(
          width: 70,
          child: Image.asset("assets/ovoLogo.png"),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFB4c2a86),
        bottom: new TabBar(
          indicatorWeight: 1,
          indicatorColor: Colors.white.withOpacity(0),
          isScrollable: false,
          controller: _tabController,
          tabs: myTabs
        )
      ),        
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          HomeOvoPage(), 
          DealsOvoPage(),
          FinanceOvoPage(),
          WalletOvoPage(),
          HistoryOvoPage()
        ],
      ),
    );
  }
}