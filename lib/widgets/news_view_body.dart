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
            : const Padding(
                padding: EdgeInsets.all(15),
                child: NewsListView(),
              );
      },
    );
  }
}
