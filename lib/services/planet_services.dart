import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:planets/models/planets.dart';

class PlanetService {
  final String _url =
      'https://planets-info-by-newbapi.p.rapidapi.com/api/v1/planet/list';

  Future<List<Planet>> getPlanets() async {
    final response = await http.get(Uri.parse(_url), headers: <String, String>{
      'Context-type': 'applcation/json; charset=UTF-8',
      'x-RapidAPI-Key': '5e63c3b71amsh23322dff397b496p139575jsnbb1f7014177e',
      'x-RapidAPI-Host': 'planets-info-by-newbapi.p.rapidapi.com'
    });

    List<dynamic> list = List.from(jsonDecode(response.body));

    List<Planet> planets =
        list.map((planet) => Planet.fromJson(planet)).toList();

    planets.sort((a, b) {
      return a.id.compareTo(b.id);
    });

    return planets;
  }
}
