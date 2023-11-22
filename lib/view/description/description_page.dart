import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:webant_project/data/models/photo_model.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key, required this.model});
  final PhotoModel? model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          CachedNetworkImage(
            imageUrl: 'https://gallery.prod1.webant.ru/media/${model?.image.name}',
            height: 200,
            width: 360,
              errorWidget: (BuildContext context, String s, Object o) =>
                  Image.asset('assets/images/error.jpeg'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 16,
              right: 16,
            ),
            child: Text(
              model?.name ?? 'Фото в ремонте',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF2F1767)),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(
              top: 5,
              left: 16,
              right: 16,
            ),
            child: Text(
              model?.name ?? 'Фото в ремонте',
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFFED5992)),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 16,
              right: 16,
            ),
            child: Text(
              model?.description ?? 'Фото в ремонте',
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 16,
              right: 16,
            ),
            child: Text(
              model?.dateCreate ?? 'Фото в ремонте',
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF8C8C8C)),
            ),
          ),
        ],
      ),
    );
  }
}
