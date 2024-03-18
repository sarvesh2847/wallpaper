import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'preview.dart';

void main() {
  runApp(homepage());
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: FloatingNavbar(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            onTap: (int val) {
              //returns tab id which is user tapped
            },
            currentIndex: 0,
            items: [
              FloatingNavbarItem(
                  icon: EvaIcons.gridOutline, title: 'Wallpaper'),
              FloatingNavbarItem(icon: EvaIcons.compass, title: 'Explore'),
              FloatingNavbarItem(icon: EvaIcons.settings, title: 'Settings'),
            ],
          ),
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.black),
              ),
              SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/2.jpeg'),
                                      fit: BoxFit.fitHeight)),
                              width: 150,
                              height: 300,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => preview()),
                              );
                            },
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/1.jpeg'),
                                      fit: BoxFit.fill)),
                              width: 150,
                              height: 300,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => preview()),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/3.jpeg'),
                                      fit: BoxFit.fill)),
                              width: 150,
                              height: 300,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => preview()),
                              );
                            },
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/4.jpeg'),
                                      fit: BoxFit.fill)),
                              width: 150,
                              height: 300,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => preview()),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
