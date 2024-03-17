import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/pages/homepage.dart';

class preview extends StatefulWidget {
  const preview({super.key});

  @override
  State<preview> createState() => _previewState();
}

class _previewState extends State<preview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: new Icon(
                EvaIcons.arrowBack,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => homepage()),
                );
              },
            ),
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 55),
                child: Text(
                  "Preview",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('assets/images/1.jpeg'),
                        fit: BoxFit.fill)),
                width: 256,
                height: 512,
              ),
            ),
          )),
    );
  }
}
