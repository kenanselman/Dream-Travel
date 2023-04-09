import 'package:emina_nejra/const.dart';
import 'package:emina_nejra/data_provider.dart';
import 'package:emina_nejra/screens/city_screen.dart';
import 'package:emina_nejra/widgets/custom_drawer.dart';
import 'package:emina_nejra/widgets/tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelectedCities extends StatefulWidget {
  static const routeName = 'selected';
  const SelectedCities({super.key});

  @override
  State<SelectedCities> createState() => _SelectedCitiesState();
}

class _SelectedCitiesState extends State<SelectedCities> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DataProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'FAVORITI',
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
        body: Consumer<DataProvider>(builder: (context, value, child) {
          return value.imeGrada.isEmpty
              ? const Center(
                  child: Text(
                    'Nema odabranih favorita!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                )
              : SafeArea(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: ListView.separated(
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: provider.imeGrada.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Tile(
                          city: value.imeGrada[index],
                          i: index,
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CityPage(
                                i: index,
                                destination: value.imeGrada[index],
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 15,
                        );
                      },
                    ),
                  ),
                );
        }),
      ),
    );
  }
}
