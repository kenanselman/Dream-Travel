import 'package:emina_nejra/const.dart';
import 'package:emina_nejra/data_provider.dart';
import 'package:emina_nejra/screens/home_screen.dart';
import 'package:emina_nejra/screens/card_screen.dart';
import 'package:emina_nejra/screens/reservation_screen.dart';
import 'package:emina_nejra/widgets/custom_button.dart';
import 'package:emina_nejra/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CityPage extends StatefulWidget {
  final Destination destination;
  final int i;
  const CityPage({super.key, required this.i, required this.destination});

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context, listen: false);
    int n = widget.i + 1;
    return Scaffold(
      key: scaffoldKey,
      appBar: null,
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 0.4 * MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.destination.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, left: 21),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color(0xFFD9D9D9),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          if (scaffoldKey.currentState!.isDrawerOpen == false) {
                            scaffoldKey.currentState!.openDrawer();
                          } else {
                            scaffoldKey.currentState!.closeDrawer();
                          }
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: (236 / 800) * MediaQuery.of(context).size.height,
                      left: (280 / 360) * MediaQuery.of(context).size.width,
                    ),
                    child: Container(
                      height: (60 / 360) * MediaQuery.of(context).size.width,
                      width: (60 / 360) * MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFD9D9D9),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          dataProvider.imeGrada.contains(widget.destination)
                              ? dataProvider.skloni(widget.destination)
                              : dataProvider.dodaj(widget.destination);
                          // dataProvider.indexi.contains(widget.i)
                          //     ? dataProvider.skloniPolazak(widget.i)
                          //     : dataProvider.dodajPolazak(widget.i);
                        },
                        child: Consumer<DataProvider>(
                            builder: (context, value, child) {
                          if (dataProvider.imeGrada
                              .contains(widget.destination)) {
                            return const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            );
                          } else {
                            return const Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.red,
                            );
                          }
                        }),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFD9D9D9),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      right: (30 / 390) * MediaQuery.of(context).size.width,
                      left: (30 / 390) * MediaQuery.of(context).size.width),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.destination.city,
                          style: GoogleFonts.nunito(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        widget.destination.desc,
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 85,
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
                              title: 'REZERVIŠI',
                              colour: Colors.black,
                              width: 130,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ReservationScreen(
                                      destination: widget.destination,
                                    ),
                                  ),
                                );
                              }),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
