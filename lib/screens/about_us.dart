import 'package:emina_nejra/screens/home_screen.dart';
import 'package:emina_nejra/widgets/custom_button.dart';
import 'package:emina_nejra/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsScreen extends StatelessWidget {
  static const routeName = 'about-us';
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'O NAMA',
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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'Dragi ljubitelji putovanja\n\n',
                    style: GoogleFonts.jockeyOne(
                        fontSize: 26, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Turistička agencija “Dream travel” je privatna turistička agencija, u Sarajevu, kulturnom i administrativnom centru BiH.',
                    style: GoogleFonts.jockeyOne(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 91,
                    width: (275 / 360) * MediaQuery.of(context).size.width,
                    child: Image.asset('assets/images/dtravel.PNG'),
                  ),
                  Text(
                    'Naš širok spektar usluga uključuje:',
                    style: GoogleFonts.jockeyOne(
                        fontSize: 26, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '*prodaju avio karata\n *rezervaciju hotela\n *prodaju paket aranžmana\n *organizaciju ekskurzija\n',
                    style: GoogleFonts.jockeyOne(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Tim iskusnih i posvećenih profesionalaca će izaćiu susret zahtjevima i interesima svakog pojedinačnog putnika.  Dream travel osigurava udobnost, praktičnost i sigurnost bilo da ste ste na grupnom ili individualnom putovanju.Naša misija je da budemo jedna od vodećih putničkih agencija u Bosni i Hercegovini sa snažnom predanošću prema domaćem i inostranom putniku, te da ponudimo najbolji kvalitet usluga.',
                    style: GoogleFonts.jockeyOne(
                        fontSize: 18, fontWeight: FontWeight.w400),
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
          ),
        ),
      ),
    );
  }
}
