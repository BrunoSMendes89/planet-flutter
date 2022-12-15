import 'package:flutter/material.dart';
import 'package:planets/components/planet_item.dart';
import 'package:planets/models/planets.dart';
import 'package:planets/services/planet_services.dart';

class PlanetsPage extends StatefulWidget {
  const PlanetsPage({super.key});

  final String title = "Solar System Planets";

  @override
  State<PlanetsPage> createState() => _PlanetsPageState();
}

class _PlanetsPageState extends State<PlanetsPage> {
  Future<List<Planet>> fetchPlanets() async {
    PlanetService service = PlanetService();
    return await service.getPlanets();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchPlanets(),
        builder: (context, AsyncSnapshot<List<Planet>> snapshot) {
          final List<Planet> planets = snapshot.data ?? [];

          return Scaffold(
              appBar: AppBar(
                title: Text(widget.title),
              ),
              body: ListView.builder(
                  itemCount: planets.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        PlanetItem(planet: planets[index]),
                        const Divider()
                      ],
                    );
                  })));
        });
  }
}
