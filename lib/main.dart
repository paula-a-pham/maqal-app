import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maqal/cubits/bloc_observer.dart';
import 'package:maqal/cubits/news_cubit/news_cubit.dart';
import 'package:maqal/service/api/dio_helper.dart';
import 'package:maqal/theme/light_theme.dart';
import 'package:maqal/views/news_view.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  DioHelper.dioInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maqal',
      theme: lightTheme,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: BlocProvider(
          create: (context) => NewsCubit()..getTopNews(),
          child: const NewsView(),
        ),
      ),
    );
  }
}
