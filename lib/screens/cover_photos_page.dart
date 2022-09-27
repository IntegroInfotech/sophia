import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sophia/api/api_service.dart';
import 'package:sophia/cards/cover_photos_card.dart';
import 'package:sophia/models/cover_photos.dart';

class CoverPhotosPage extends StatelessWidget {
  const CoverPhotosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiService apiServices = ApiService();

    return FutureBuilder<List<SophiaCoverPhoto>>(
      future: apiServices.fetchCoverPhotos(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            print(snapshot.data);
            final sophiaCoverPhotos = snapshot.data ?? [];
            return CarouselSlider.builder(
              itemCount: sophiaCoverPhotos.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                SophiaCoverPhoto coverPhoto =
                    sophiaCoverPhotos.elementAt(itemIndex);
                return CoverPhotosCard(image:coverPhoto.image);
              },
              options: CarouselOptions(
                height: 250,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            );
          }
        } else {
          print(snapshot.connectionState);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
