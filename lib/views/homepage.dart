import 'package:animator_galaxy/componets/planets_details.dart';
import 'package:animator_galaxy/provider/provider_planets.dart';
import 'package:animator_galaxy/views/detailpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    PlanetProvider planetProvider = Provider.of<PlanetProvider>(context);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assets/images/planets_background.avif',
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            'PLANETS',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: planetProvider.planets.length,
          itemBuilder: (BuildContext context, int index) {
            final planet = planetProvider.planets[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlanetDetailScreen(planet: planet),
                  ),
                );
              },
              child: SizedBox(
                height: 220,
                child: PlanetCard(
                  planets: [planet],
                  currentIndex: index,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
