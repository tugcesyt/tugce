import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:yemekuygulamasi/pages/menuanayemek.dart';
import 'package:yemekuygulamasi/pages/menukahvalti.dart';
import 'package:yemekuygulamasi/pages/sayfa3.dart';

import 'menudiyet.dart';
import 'menutatli.dart';

void main() {
  runApp(flutter_app4());
}

class flutter_app4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Quicksand"),
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(

          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => flutter_app3()));
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.search,
                size: 20.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: Colors.brown,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Profilim"),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.brown,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Ayarlar"),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.brown,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Çıkış Yap"),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.question_answer,
                          color: Colors.brown,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Sıkça Sorulan Sorular"),
                        ),
                      ],
                    ),
                  ),
                ],
                child: Icon(
                  Icons.menu,
                  size: 20.0,
                ),
              ),
            ),
          ],
          backgroundColor: Colors.brown[400],
          centerTitle: true,
          title: Text(
            "MENÜ",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => flutter_app5(),
                    ));
                print("Kahvaltı tıklandı.");
              },
              child: Image.asset("assets/images/breakfeast.jpg"),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => flutter_app6(),
                      ));
                  print("Ana yemek tıklandı.");
                },
                child: Image.asset("assets/images/dinner.jpg")),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => flutter_app7(),
                      ));
                  print("Diyet tıklandı.");
                },
                child: Image.asset("assets/images/diet.jpg")),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => flutter_app8(),
                    ));
                print("Tatli tıklandı.");
              },
              child: Image.asset("assets/images/tatli.jpeg"),
            ),
          ),
        ),
      ],
    ));
  }
}
