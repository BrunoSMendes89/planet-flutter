import 'package:flutter/material.dart';
import 'package:planets/Pages/detail_page.dart';
import 'package:planets/models/planets.dart';

class PlanetItem extends StatelessWidget {
  const PlanetItem({super.key, required this.planet});

  final Planet planet;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(planet.name, style: const TextStyle(fontSize: 18)),
      subtitle: Text(
        "${planet.id}º planet",
        textAlign: TextAlign.right,
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(planet: planet)));
      },
    );
  }
}
