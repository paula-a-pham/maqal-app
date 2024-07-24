import 'package:flutter/material.dart';
import 'package:maqal/widgets/search_view_body.dart';

class NewsSearchView extends StatelessWidget {
  const NewsSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SearchViewBody(),
    );
  }
}
