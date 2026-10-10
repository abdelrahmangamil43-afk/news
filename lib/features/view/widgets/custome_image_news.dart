import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomeImageNews extends StatelessWidget {
  const CustomeImageNews({super.key, this.height = 200});
  final double height;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(12),
      child: CachedNetworkImage(
        imageUrl: image,
        placeholder: (context, url) => Column(
          mainAxisAlignment: .center,
          children: [CircularProgressIndicator()],
        ), // Column
        errorWidget: (context, url, error) => Icon(Icons.error),
        width: double.infinity,
        height: height,
        fit: .cover,
      ), // CachedNetworkImage
    );
  }
}

String image =
    "https://static.vecteezy.com/system/resources/thumbnails/050/393/628/small/cute-curious-gray-and-white-kitten-in-a-long-shot-photo.jpg";
