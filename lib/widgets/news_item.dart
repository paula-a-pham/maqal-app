import 'package:flutter/cupertino.dart';
import 'package:maqal/widgets/custom_image.dart';
import 'package:maqal/widgets/custom_text.dart';

class NewsItem extends StatelessWidget {
  final String imageUrl;
  final String text;
  const NewsItem({
    super.key,
    required this.imageUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CustomImage(
          imageUrl: imageUrl,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: CustomText(
            text: text,
          ),
        ),
      ],
    );
  }
}
