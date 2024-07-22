import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
      ),
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.justify,
    );
  }
}
