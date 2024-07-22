import 'package:flutter/material.dart';
import 'package:maqal/widgets/news_item.dart';

class NewsListView extends StatelessWidget {
  final String imageUrl;
  final String text;
  const NewsListView({
    super.key,
    required this.imageUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => NewsItem(
        imageUrl: imageUrl,
        text: text,
      ),
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey.withOpacity(0.15),
        height: 20,
      ),
      itemCount: 15,
    );
  }
}
