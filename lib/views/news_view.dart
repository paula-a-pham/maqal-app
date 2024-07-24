import 'package:flutter/material.dart';
import 'package:maqal/widgets/news_view_body.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'آخر الأخبار',
        ),
      ),
      body: const NewsViewBody(),
    );
  }
}
