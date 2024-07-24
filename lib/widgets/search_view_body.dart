import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maqal/cubits/news_cubit/news_cubit.dart';
import 'package:maqal/widgets/custom_text_field.dart';
import 'package:maqal/widgets/news_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          CustomTextField(
            onChanged: (value) {
              if (value.isEmpty) {
                NewsCubit.getNewsCubit(context).searchNews = [];
              }
              NewsCubit.getNewsCubit(context).getSearchNews(text: value);
            },
          ),
          const SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: BlocBuilder<NewsCubit, NewsState>(
              builder: (context, state) {
                return state is SearchNewsLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : NewsListView(
                        myList: NewsCubit.getNewsCubit(context).searchNews);
              },
            ),
          ),
        ],
      ),
    );
  }
}
