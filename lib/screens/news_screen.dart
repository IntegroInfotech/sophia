import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sophia/api/api_service.dart';
import 'package:sophia/cards/news_card.dart';
import 'package:sophia/models/news.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiService apiServices = ApiService();
    return FutureBuilder<List<SophiaNews>>(
      future: apiServices.fetchNews(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            print(snapshot.data);
            final sophiaNews = snapshot.data ?? [];
            return AlignedGridView.count(
              itemCount: sophiaNews.length,
              crossAxisCount: 1,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: NewsCard(
                    date: sophiaNews[index].date,
                    title: sophiaNews[index].title,
                    description: sophiaNews[index].description,
                    imageUrl: sophiaNews[index].image,
                  ),
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
    );
  }
}
