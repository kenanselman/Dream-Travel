import 'package:emina_nejra/screens/home_screen.dart';
import 'package:emina_nejra/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/Welcome';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/pozadina1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dream Travel',
              style: GoogleFonts.pacifico(fontSize: 45, color: Colors.black),
            ),
            const SizedBox(
              height: 100,
            ),
            CustomButton(
              title: 'Nastavi',
              colour: Colors.black,
              width: (250 / 300) * MediaQuery.of(context).size.width,
              onPressed: (() =>
                  Navigator.of(context).pushNamed(HomeScreen.routeName)),
            ),
          ],
        ),
      ),
    );
  }
}
