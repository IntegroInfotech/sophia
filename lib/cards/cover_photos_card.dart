import 'package:flutter/material.dart';

class CoverPhotosCard extends StatelessWidget {
  final String image;

  const CoverPhotosCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Image.network(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
