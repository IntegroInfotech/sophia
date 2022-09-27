import 'package:flutter/material.dart';
import 'package:sophia/custom_widgets/custom_text.dart';

class AlbumCard extends StatelessWidget {
  final String? image;
  final String title;

  const AlbumCard({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: SizedBox(
          height: 300,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Image.network(
                  height: 200,
                  width: double.infinity,
                  "$image",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                  title: title,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
