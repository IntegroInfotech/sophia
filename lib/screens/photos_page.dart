import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sophia/api/api_service.dart';
import 'package:sophia/cards/album_card.dart';
import 'package:sophia/cards/cover_photos_card.dart';
import 'package:sophia/custom_widgets/constants.dart';
import 'package:sophia/custom_widgets/custom_text.dart';
import 'package:sophia/models/photos.dart';

class PhotosPage extends StatelessWidget {
  const PhotosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiService apiServices = ApiService();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.primaryColor,
        title: const CustomText(
          title: "SOPHIA PHOTOS GALLERY",
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<List<SophiaPhoto>>(
        future: apiServices.fetchPhotos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              print(snapshot.data);
              final sophiaPhotos = snapshot.data ?? [];
              print("sophiaPhotos data is ${sophiaPhotos[1].image}");
              return AlignedGridView.count(
                itemCount: sophiaPhotos.length,
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: AlbumCard(
                        image: sophiaPhotos[index].image,
                        title: sophiaPhotos[index].title),
                  );
                },
              );
            }
          } else {
            print(snapshot.connectionState);
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
