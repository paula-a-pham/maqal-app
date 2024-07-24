import 'package:flutter/material.dart';
import 'package:maqal/cubits/news_cubit/news_cubit.dart';
import 'package:maqal/views/news_search_view.dart';
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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Directionality(
                    textDirection: TextDirection.rtl,
                    child: NewsSearchView(),
                  ),
                ),
              ).then(
                (value) => NewsCubit.getNewsCubit(context).searchNews = [],
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: const NewsViewBody(),
    );
  }
}
