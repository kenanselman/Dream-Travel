import 'dart:async';

import 'package:emina_nejra/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CongratulationsScreen extends StatefulWidget {
  static const routeName = 'congratulations';
  const CongratulationsScreen({super.key});

  @override
  State<CongratulationsScreen> createState() => _CongratulationsScreenState();
}

class _CongratulationsScreenState extends State<CongratulationsScreen> {
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/checkcircle.png'),
                    Text(
                      'Hvala!',
                      style: GoogleFonts.nunito(
                        fontSize: 32,
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Rezervacija je\n',
                        style: GoogleFonts.nunito(
                            fontSize:
                                (26 / 360) * MediaQuery.of(context).size.width,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'uspješno završena!\n',
                            style: GoogleFonts.nunito(
                              fontSize: (26 / 360) *
                                  MediaQuery.of(context).size.width,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        : HomeScreen();
  }
}
