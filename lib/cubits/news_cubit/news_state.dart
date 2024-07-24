part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}

final class TopNewsLoading extends NewsState {}

final class TopNewsSuccess extends NewsState {}

final class TopNewsFail extends NewsState {
  final String error;

  TopNewsFail({required this.error});
}

final class SearchNewsLoading extends NewsState {}

final class SearchNewsSuccess extends NewsState {}

final class SearchNewsFail extends NewsState {
  final String error;

  SearchNewsFail({required this.error});
}
