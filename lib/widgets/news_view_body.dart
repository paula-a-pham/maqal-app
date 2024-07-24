import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maqal/cubits/news_cubit/news_cubit.dart';
import 'package:maqal/widgets/news_list_view.dart';

class NewsViewBody extends StatelessWidget {
  const NewsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        return state is TopNewsLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.only(
                    bottom: 15.0, left: 15.0, right: 15.0),
                child: NewsListView(
                  myList: NewsCubit.getNewsCubit(context).topNews,
                ),
              );
      },
    );
  }
}
