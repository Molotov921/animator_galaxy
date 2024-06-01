import 'package:animator_galaxy/provider/provider_planets.dart';
import 'package:animator_galaxy/views/homepage.dart';
import 'package:animator_galaxy/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PlanetProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'splash',
        routes: {
          '/': (context) => const HomePage(),
          'splash': (context) => const SplashScreen(),
        },
      ),
    );
  }
}
