import 'package:emina_nejra/screens/congratulations.dart';
import 'package:emina_nejra/screens/home_screen.dart';
import 'package:emina_nejra/widgets/custom_button.dart';
import 'package:emina_nejra/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreen extends StatefulWidget {
  static const routeName = 'card';
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  TextEditingController name_controller = TextEditingController();
  TextEditingController card_controller = TextEditingController();
  TextEditingController date_controller = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  bool isNumeric(String str) {
    final numericRegex = RegExp(r'^[0-9]+$');
    return numericRegex.hasMatch(str);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'PLAĆANJE',
          style: GoogleFonts.pacifico(fontSize: 20, color: Colors.amber),
        ),
        backgroundColor: Colors.black,
      ),
      body: Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  left: (35 / 360) * MediaQuery.of(context).size.width,
                  right: (35 / 360) * MediaQuery.of(context).size.width,
                  top: 50),
              child: Column(
                children: [
                  Image.asset('assets/images/group9.png'),
                  SizedBox(
                    height: (30 / 800) * MediaQuery.of(context).size.height,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Ime vlasnika kartice: ',
                      style: GoogleFonts.nunito(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600]),
                    ),
                  ),
                  Form(
                    key: formKey1,
                    child: TextFormField(
                      controller: name_controller,
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
                      ),
                      validator: (value) {
                        if (value!.length < 4) {
                          return '\u26A0 Neispravan unos!.';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: (30 / 800) * MediaQuery.of(context).size.height,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Broj kartice: ',
                      style: GoogleFonts.nunito(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600]),
                    ),
                  ),
                  Form(
                    key: formKey2,
                    child: TextFormField(
                      controller: card_controller,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'XXXX-XXXX-XXXX-XXXX',
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
                      ),
                      validator: (value) {
                        if (value!.length != 16 || isNumeric(value) == false) {
                          return '\u26A0 Neispravan format kartice!.';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: (30 / 800) * MediaQuery.of(context).size.height,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Datum isteka CVV: ',
                      style: GoogleFonts.nunito(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: (160 / 360) * MediaQuery.of(context).size.width),
                    child: Form(
                      key: formKey3,
                      child: TextFormField(
                        controller: date_controller,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'ex: 01/24',
                          hintStyle: TextStyle(
                              color: const Color(0xFF4A4458),
                              fontWeight: FontWeight.w400,
                              fontSize: (14 / 360) *
                                  MediaQuery.of(context).size.width),
                          contentPadding: const EdgeInsets.only(
                              top: 20, bottom: 10, left: 12),
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 117, 117, 117),
                                width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 117, 117, 117),
                                width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                        ),
                        validator: (value) {
                          if (value!.length > 5 || value.isEmpty) {
                            return '\u26A0 Neispravan datum!.';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: (100 / 800) * MediaQuery.of(context).size.height,
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
                          title: 'POTVRDA',
                          colour: Colors.black,
                          width: 130,
                          onPressed: () {
                            if (formKey1.currentState!.validate() &&
                                formKey2.currentState!.validate() &&
                                formKey3.currentState!.validate()) {
                              Navigator.of(context)
                                  .pushNamed(CongratulationsScreen.routeName);
                            }
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
