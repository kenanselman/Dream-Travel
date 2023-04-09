import 'package:emina_nejra/screens/home_screen.dart';
import 'package:emina_nejra/widgets/custom_button.dart';
import 'package:emina_nejra/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactScreen extends StatelessWidget {
  static const routeName = 'contact';
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'KONTAKT',
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
        backgroundColor: const Color(0xFFE7E5E5),
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                  child: Image.asset('assets/images/sl1.PNG'),
                ),
                const Divider(
                  color: Colors.black,
                  height: 2,
                ),
                SizedBox(
                  height: 120,
                  child: Image.asset('assets/images/sl2.PNG'),
                ),
                const Divider(
                  color: Colors.black,
                  height: 2,
                ),
                SizedBox(
                  height: 120,
                  child: Image.asset('assets/images/sl3.PNG'),
                ),
                const Divider(
                  color: Colors.black,
                  height: 2,
                ),
                SizedBox(
                  height: 120,
                  child: Image.asset('assets/images/sl4.PNG'),
                ),
                const Divider(
                  color: Colors.black,
                  height: 2,
                ),
                SizedBox(
                  height: 120,
                  child: Image.asset('assets/images/sl5.PNG'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: CustomButton(
                      title: 'NAZAD',
                      colour: Colors.black,
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(HomeScreen.routeName);
                      },
                      width: (130 / 360) * MediaQuery.of(context).size.width),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
