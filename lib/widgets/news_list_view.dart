import 'package:flutter/material.dart';
import 'package:maqal/views/news_web_view.dart';
import 'package:maqal/widgets/news_item.dart';

class NewsListView extends StatelessWidget {
  final List myList;
  const NewsListView({
    super.key,
    required this.myList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => InkWell(
        borderRadius: BorderRadius.circular(15.0),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Directionality(
                  textDirection: TextDirection.rtl,
                  child: NewsWebView(url: myList[index]['url'])),
            ),
          );
        },
        child: NewsItem(
          imageUrl: myList[index]['image'],
          text: myList[index]['content'],
        ),
      ),
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey.withOpacity(0.15),
        height: 25,
      ),
      itemCount: myList.length,
    );
  }
}
