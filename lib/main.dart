import 'package:flutter/material.dart';
import 'package:whatsapp/whatsAppHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: new Color(0xff075e54)
      ),
      home:Directionality(textDirection: TextDirection.rtl, child: WhatsAppHome())
    );
  }
}

