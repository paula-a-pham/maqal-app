import 'package:flutter/material.dart';
import 'package:maqal/theme/light_theme.dart';
import 'package:maqal/views/news_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maqal',
      theme: lightTheme,
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: NewsView(),
      ),
    );
  }
}
