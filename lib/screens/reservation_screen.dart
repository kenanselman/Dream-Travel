import 'package:email_validator/email_validator.dart';
import 'package:emina_nejra/screens/card_screen.dart';
import 'package:emina_nejra/screens/home_screen.dart';
import 'package:emina_nejra/widgets/custom_button.dart';
import 'package:emina_nejra/widgets/custom_drawer.dart';
import 'package:emina_nejra/widgets/tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const.dart';

class ReservationScreen extends StatefulWidget {
  final Destination destination;
  const ReservationScreen({super.key, required this.destination});
  static const routeName = 'reservation';

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController telephoneController = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'REZERVACIJA',
          style: GoogleFonts.pacifico(fontSize: 20, color: Colors.amber),
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            if (scaffoldKey.currentState!.isDrawerOpen == false) {
              scaffoldKey.currentState!.openDrawer();
            } else {
              scaffoldKey.currentState!.closeDrawer();
            }
          },
          icon: const Icon(Icons.menu),
        ),
      ),
      body: Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 60, right: 60),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'IME I PREZIME:',
                      style: GoogleFonts.nunito(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  Form(
                    key: formKey1,
                    child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'ex: John Doe',
                        hintStyle: TextStyle(
                            color: const Color(0xFF4A4458),
                            fontWeight: FontWeight.w400,
                            fontSize:
                                (14 / 360) * MediaQuery.of(context).size.width),
                        contentPadding:
                            const EdgeInsets.only(top: 20, bottom: 10, left: 8),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 117, 117, 117),
                              width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 117, 117, 117),
                              width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        filled: true,
                        fillColor: Colors.yellow,
                      ),
                      validator: (value) {
                        if (value!.length < 4) {
                          return '\u26A0 Neispravan unos!.';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'EMAIL:',
                      style: GoogleFonts.nunito(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  Form(
                    key: formKey2,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'example@mail.com',
                        hintStyle: TextStyle(
                            color: const Color(0xFF4A4458),
                            fontWeight: FontWeight.w400,
                            fontSize:
                                (14 / 360) * MediaQuery.of(context).size.width),
                        contentPadding:
                            const EdgeInsets.only(top: 20, bottom: 10, left: 8),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 117, 117, 117),
                              width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 117, 117, 117),
                              width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        filled: true,
                        fillColor: Colors.yellow,
                      ),
                      validator: (value) {
                        if (value!.isEmpty || !EmailValidator.validate(value)) {
                          return '\u26A0 Neispravan unos!.';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'TELEFON:',
                      style: GoogleFonts.nunito(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  Form(
                    key: formKey3,
                    child: TextFormField(
                      controller: telephoneController,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: '+1555555555',
                        hintStyle: TextStyle(
                            color: const Color(0xFF4A4458),
                            fontWeight: FontWeight.w400,
                            fontSize:
                                (14 / 360) * MediaQuery.of(context).size.width),
                        contentPadding:
                            const EdgeInsets.only(top: 20, bottom: 10, left: 8),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 117, 117, 117),
                              width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 117, 117, 117),
                              width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        filled: true,
                        fillColor: Colors.yellow,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return '\u26A0 Neispravan unos!.';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'DESTINACIJA:',
                      style: GoogleFonts.nunito(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.destination.city,
                      style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'DATUM POLASKA:',
                      style: GoogleFonts.nunito(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      formatter.format(widget.destination.date),
                      style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                          title: 'NAZAD',
                          colour: Colors.black,
                          width: 130,
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(HomeScreen.routeName);
                          }),
                      CustomButton(
                          title: 'PLATI',
                          colour: Colors.black,
                          width: 130,
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(CardScreen.routeName);
                          }),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
