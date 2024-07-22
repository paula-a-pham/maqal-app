import 'package:flutter/material.dart';
import 'package:maqal/cubits/news_cubit/news_cubit.dart';
import 'package:maqal/widgets/news_item.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => NewsItem(
        imageUrl: NewsCubit.getNewsCubit(context).topNews[index]['image'],
        text: NewsCubit.getNewsCubit(context).topNews[index]['content'],
      ),
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey.withOpacity(0.15),
        height: 20,
      ),
      itemCount: NewsCubit.getNewsCubit(context).topNews.length,
    );
  }
}
