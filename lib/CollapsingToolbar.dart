import 'package:flutter/material.dart';

class CollapsingToolBarPage extends StatefulWidget {
  @override
  _CollapsingToolBarPageState createState() => _CollapsingToolBarPageState();
}

class _CollapsingToolBarPageState extends State<CollapsingToolBarPage> {

  final String someText = 
    "    By using the online registration service, you have entrusted the information you provide to us for processing in accordance with purpose of registration services online\n"
    "    Your personal information will be stored in our system in accordance with the information you provide when registering on the online registration service.\n"
    "    We will not share your personal information to other parties without obtaining your consent first, unless otherwise required by law under the provisions of the legislation in force.\n"
    "    We can deliver information to the public, about an overview relevant to the trend of using online registration service without violating the confidentiality of your personal information.\n"
    "    We are committed to protect your personal information from manipulation, loss, forgery, or unauthorized access to other purposes in addition to registration services online.\n"
    "    This Privacy Policy may change at any time without prior notice. Privacy Policy that has been changed will be displayed on the page of this Privacy Policy. By continuing to access and use services online registration on this website, you agree to the changes in the provisions of this Privacy Policy.\n"
    "    If you need more information more related Privacy Policy on service online registration, please contact : \n\n"
    "Eka Hospital BSD\n"
    "Central Business District Lot IX, BSD City, Tangerang 15321\n"
    "Telp. (021) 25655555\n"
    "Email: infoBSD@ekahospital.com\n\n"
    "Eka Hospital Pekanbaru\n"
    "Jl. Soekarno Hatta Km 6,5 Pekanbaru 28282\n"
    "Telp. (0761) 6989999\n"
    "Email: infoPKU@ekahospital.com";
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height/2.5,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: GestureDetector(
                  onTap: (){
                    print(innerBoxIsScrolled);
                  },
                    child: Text("Privacy Policy",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      )),
                ),
                background: Image.asset(
                  "assets/eka.jpg",
                  fit: BoxFit.cover,
                  gaplessPlayback: true,
                )
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top :10.0),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan> [
                        new TextSpan(
                          text: someText,
                          style: new TextStyle(fontSize:16.0, color: Colors.black),
                        ),
                      ]
                    ),
                  )
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}