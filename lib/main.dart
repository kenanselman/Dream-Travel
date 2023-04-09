import 'package:emina_nejra/const.dart';
import 'package:emina_nejra/data_provider.dart';
import 'package:emina_nejra/screens/about_us.dart';
import 'package:emina_nejra/screens/congratulations.dart';
import 'package:emina_nejra/screens/contact_us.dart';
import 'package:emina_nejra/screens/home_screen.dart';
import 'package:emina_nejra/screens/card_screen.dart';
import 'package:emina_nejra/screens/reservation_screen.dart';
import 'package:emina_nejra/screens/selected_cities.dart';
import 'package:emina_nejra/screens/sorted_screen.dart';
import 'package:emina_nejra/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DataProvider()),
      ],
      child: const DreamTravelApp(),
    ),
  );
}

class DreamTravelApp extends StatelessWidget {
  const DreamTravelApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        CardScreen.routeName: (context) => const CardScreen(),
        CongratulationsScreen.routeName: (context) =>
            const CongratulationsScreen(),
        ReservationScreen.routeName: (context) => ReservationScreen(
              destination: Destination('', 0, DateTime.now(), '', '', ''),
            ),
        SelectedCities.routeName: (context) => const SelectedCities(),
        AboutUsScreen.routeName: (context) => const AboutUsScreen(),
        SortedScreen.routeName: (context) => const SortedScreen(lista: []),
        ContactScreen.routeName: (context) => const ContactScreen(),
      },
    );
  }
}
