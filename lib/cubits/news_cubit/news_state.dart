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
