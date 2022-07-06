import 'package:flutter/material.dart';
import 'package:nasa_apod/domain/models/nasa_model.dart';

class DetailPage extends StatelessWidget {
  final NasaModel model;
  const DetailPage({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(model.title!),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              child: Image.network(model.hdurl!),
              width: double.infinity,
              height: 300,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(model.date!.toString()),
                  if (model.copyright != null) Text(model.copyright!),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text(model.explanation!),
            )
          ]),
        ));
  }
}
