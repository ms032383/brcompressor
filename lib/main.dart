import 'package:brcompressor/Extrafiles/colors.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/about_screen.dart';
import 'screens/services_screen.dart';
import 'screens/contact_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BR Compressor',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: bgcolor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/about': (context) => AboutScreen(),
        '/services': (context) => ServicesScreen(),
        '/contact': (context) => ContactScreen(),
      },
    );
  }
}
