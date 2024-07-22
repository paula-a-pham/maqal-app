import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:maqal/constants/end_points.dart';
import 'package:maqal/service/api/dio_helper.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  List topNews = [];
  void getTopNews() {
    emit(TopNewsLoading());
    DioHelper.getNews(
      endPoint: topHeadlines,
      queryParameters: {
        'country': 'eg',
        'category': 'general',
        'apikey': '43aa7214fdc3e25ee5e2a3e874cd6cc8',
      },
    ).then(
      (value) {
        topNews = value.data['articles'];
        emit(TopNewsSuccess());
      },
    ).catchError((error) {
      if (kDebugMode) {
        print(error.toString());
        emit(TopNewsFail(error: error.toString()));
      }
    });
  }
}
