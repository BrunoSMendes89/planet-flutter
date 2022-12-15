import 'package:flutter/material.dart';

import '../models/planets.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.planet});

  final Planet planet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(planet.name)),
      body: _buildDetail(),
    );
  }

  Widget _buildDetail() {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(planet.imgUrl, fit: BoxFit.fitWidth),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                planet.description,
                textAlign: TextAlign.justify,
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                "Mass: ${planet.mass}",
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                "Volume: ${planet.volume}",
                textAlign: TextAlign.left,
              ),
            )
          ]),
    );
  }
}
