import 'package:flutter/material.dart';

import 'package:wallpaper/pages/homepage.dart';
void main(){
  runApp(loginapp(
  ));
}

class loginapp extends StatelessWidget {
  const loginapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      darkTheme: ThemeData(
          brightness: Brightness.dark
      ),
      themeMode: ThemeMode.dark,// won't work for the emulators having os lower that of the Android 10.
      home: homepage(),
    );
  }
}