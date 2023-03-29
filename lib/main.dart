import 'package:flutter/material.dart';
import 'package:ip_pro/home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  HomePage();
  }
}