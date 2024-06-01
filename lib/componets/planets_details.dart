import 'package:animator_galaxy/modules/model_planet.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class PlanetCard extends StatelessWidget {
  final List<PlanetModel> planets;
  final int currentIndex;

  const PlanetCard(
      {super.key, required this.planets, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: planets.length,
      controller: PageController(
        initialPage: currentIndex,
      ),
      itemBuilder: (context, index) {
        final planet = planets[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: GlassmorphicContainer(
            height: 200,
            width: double.infinity,
            blur: 15,
            borderRadius: 20,
            border: 2,
            linearGradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.1),
                Colors.black.withOpacity(0.2),
              ],
              stops: const [0.1, 1],
            ),
            borderGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.5),
                Colors.white.withOpacity(0.5),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: planet.name,
                      child: Image.network(
                        planet.image,
                        fit: BoxFit.cover,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      planet.name,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Position: ${planet.position}",
                      style: const TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Velocity: ${planet.velocity} km/s",
                      style: const TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Distance: ${planet.distance} million km",
                      style: const TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Icon(
                      Icons.double_arrow_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
