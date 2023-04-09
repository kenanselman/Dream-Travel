import 'package:emina_nejra/data_provider.dart';
import 'package:emina_nejra/screens/congratulations.dart';
import 'package:emina_nejra/screens/home_screen.dart';
import 'package:emina_nejra/widgets/custom_button.dart';
import 'package:emina_nejra/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CardScreen extends StatefulWidget {
  static const routeName = 'card';
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  final formKey1 = GlobalKey<FormState>();
  final formKey21 = GlobalKey<FormState>();
  final formKey22 = GlobalKey<FormState>();
  final formKey23 = GlobalKey<FormState>();
  final formKey24 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  TextEditingController name_controller = TextEditingController();
  TextEditingController card_controller1 = TextEditingController();
  TextEditingController card_controller2 = TextEditingController();
  TextEditingController card_controller3 = TextEditingController();
  TextEditingController card_controller4 = TextEditingController();
  TextEditingController date_controller = TextEditingController();
  final firstFocusNode = FocusNode();
  final secondFocusNode = FocusNode();
  final thirdFocusNode = FocusNode();
  final fourthFocusNode = FocusNode();

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: (70 / 360) * MediaQuery.of(context).size.width,
                        child: Form(
                          key: formKey21,
                          child: TextFormField(
                            controller: card_controller1,
                            focusNode: firstFocusNode,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'XXXX',
                              hintStyle: TextStyle(
                                  color: const Color(0xFF4A4458),
                                  fontWeight: FontWeight.w400,
                                  fontSize: (14 / 360) *
                                      MediaQuery.of(context).size.width),
                              contentPadding: const EdgeInsets.only(
                                  top: 20, bottom: 10, left: 8),
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
                              if (value!.length != 4 ||
                                  isNumeric(value) == false) {
                                return '';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: (70 / 360) * MediaQuery.of(context).size.width,
                        child: Form(
                          key: formKey22,
                          child: TextFormField(
                            controller: card_controller2,
                            focusNode: secondFocusNode,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'XXXX',
                              hintStyle: TextStyle(
                                  color: const Color(0xFF4A4458),
                                  fontWeight: FontWeight.w400,
                                  fontSize: (14 / 360) *
                                      MediaQuery.of(context).size.width),
                              contentPadding: const EdgeInsets.only(
                                  top: 20, bottom: 10, left: 8),
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
                              if (value!.length != 4 ||
                                  isNumeric(value) == false) {
                                return '';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: (70 / 360) * MediaQuery.of(context).size.width,
                        child: Form(
                          key: formKey23,
                          child: TextFormField(
                            controller: card_controller3,
                            focusNode: thirdFocusNode,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'XXXX',
                              hintStyle: TextStyle(
                                  color: const Color(0xFF4A4458),
                                  fontWeight: FontWeight.w400,
                                  fontSize: (14 / 360) *
                                      MediaQuery.of(context).size.width),
                              contentPadding: const EdgeInsets.only(
                                  top: 20, bottom: 10, left: 8),
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
                              if (value!.length != 4 ||
                                  isNumeric(value) == false) {
                                return '';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: (70 / 360) * MediaQuery.of(context).size.width,
                        child: Form(
                          key: formKey24,
                          child: TextFormField(
                            controller: card_controller4,
                            focusNode: fourthFocusNode,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'XXXX',
                              hintStyle: TextStyle(
                                  color: const Color(0xFF4A4458),
                                  fontWeight: FontWeight.w400,
                                  fontSize: (14 / 360) *
                                      MediaQuery.of(context).size.width),
                              contentPadding: const EdgeInsets.only(
                                  top: 20, bottom: 10, left: 8),
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
                              if (value!.length != 4 ||
                                  isNumeric(value) == false) {
                                return '';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Consumer<DataProvider>(builder: (context, value, child) {
                    return SizedBox(
                      height: value.textHeight,
                      child: Text(
                        value.textError,
                        style: const TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    );
                  }),
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
                                formKey21.currentState!.validate() &&
                                formKey22.currentState!.validate() &&
                                formKey23.currentState!.validate() &&
                                formKey24.currentState!.validate() &&
                                formKey3.currentState!.validate()) {
                              Provider.of<DataProvider>(context, listen: false)
                                  .resetError();
                              Navigator.of(context)
                                  .pushNamed(CongratulationsScreen.routeName);
                            }
                            if (!formKey21.currentState!.validate() ||
                                !formKey22.currentState!.validate() ||
                                !formKey23.currentState!.validate() ||
                                !formKey24.currentState!.validate()) {
                              Provider.of<DataProvider>(context, listen: false)
                                  .setError();
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
