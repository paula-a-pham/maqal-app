import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String imageUrl;
  const CustomImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        errorWidget: (context, url, error) => Container(
          color: Colors.grey.withOpacity(0.15),
          child: const Icon(
            Icons.error_outline_rounded,
            size: 35.0,
          ),
        ),
        fit: BoxFit.cover,
        height: 120.0,
        repeat: ImageRepeat.noRepeat,
        width: 120.0,
      ),
    );
  }
}
