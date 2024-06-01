import 'dart:convert';
import 'package:animator_galaxy/modules/model_planet.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class PlanetProvider extends ChangeNotifier {
  late List<PlanetModel> _planets;

  PlanetProvider() {
    _planets = [];
    _fetchPlanets();
  }

  List<PlanetModel> get planets => _planets;

  Future<void> _fetchPlanets() async {
    String jsonString =
        await rootBundle.loadString('assets/planets_details.json');
    List<dynamic> jsonList = json.decode(jsonString);
    _planets = jsonList.map((json) => PlanetModel.fromJson(json)).toList();
    notifyListeners();
  }
}
