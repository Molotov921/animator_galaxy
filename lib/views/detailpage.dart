import 'package:animator_galaxy/modules/model_planet.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class PlanetDetailScreen extends StatelessWidget {
  final PlanetModel planet;

  const PlanetDetailScreen({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/detail_background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop('/');
            },
            icon: const Icon(
              Icons.chevron_left_outlined,
              size: 30,
              color: Colors.white,
            ),
          ),
          title: Text(
            planet.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 150),
                  Hero(
                    tag: planet.name,
                    child: Center(
                      child: Image.network(
                        planet.image,
                        fit: BoxFit.contain,
                        height: 350,
                        width: 350,
                      ),
                    ),
                  ),
                  GlassmorphicContainer(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height - 150,
                    blur: 20,
                    borderRadius: 40,
                    border: 0.7,
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
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          GlassmorphicContainer(
                            margin: const EdgeInsets.all(10),
                            height: 50,
                            width: double.infinity,
                            blur: 20,
                            borderRadius: 40,
                            border: 0.7,
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
                            alignment: Alignment.center,
                            child: Text(
                              'Position: ${planet.position}',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GlassmorphicContainer(
                            margin: const EdgeInsets.all(10),
                            height: 50,
                            width: double.infinity,
                            blur: 20,
                            borderRadius: 40,
                            border: 0.7,
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
                            alignment: Alignment.center,
                            child: Text(
                              'Velocity: ${planet.velocity} km/s',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GlassmorphicContainer(
                            margin: const EdgeInsets.all(10),
                            height: 50,
                            width: double.infinity,
                            blur: 20,
                            borderRadius: 40,
                            border: 0.7,
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
                            alignment: Alignment.center,
                            child: Text(
                              'Distance: ${planet.distance} million km',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Description",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              planet.description,
                              style: const TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
