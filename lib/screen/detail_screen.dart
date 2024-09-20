import 'package:flutter/material.dart';
import 'package:travel_app/model/tourism_place.dart';
import 'package:travel_app/screen/layout/detail_screen/detail_mobile_page.dart';
import 'package:travel_app/screen/layout/detail_screen/detail_web_page.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;
  const DetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      },
    );
  }
}
