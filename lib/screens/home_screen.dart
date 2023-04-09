import 'package:emina_nejra/const.dart';
import 'package:emina_nejra/screens/city_screen.dart';
import 'package:emina_nejra/screens/selected_cities.dart';
import 'package:emina_nejra/screens/sorted_screen.dart';
import 'package:emina_nejra/widgets/custom_drawer.dart';
import 'package:emina_nejra/widgets/tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'PONUDE',
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
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Filtriraj'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            title: Text('PO CIJENI'),
                            onTap: () {},
                            trailing: PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return <PopupMenuEntry>[
                                  PopupMenuItem(
                                    child: Text('Prvo najskuplje'),
                                    value: 1,
                                    onTap: () {
                                      sortPomDesc();
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text('Prvo najeftinije'),
                                    value: 2,
                                    onTap: () {
                                      sortPomAsc();
                                    },
                                  ),
                                ];
                              },
                              onSelected: (value) {
                                // Perform action when a menu item is selected
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => SortedScreen(
                                      lista: lista,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          ListTile(
                            title: Text('PO FAVORITIMA'),
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(SelectedCities.routeName);
                            },
                          ),
                        ],
                      ),
                    );
                  });
            },
            icon: const Icon(Icons.filter_alt_outlined),
          ),
        ],
      ),
      body: Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: lista.length,
              itemBuilder: (BuildContext context, int index) {
                return Tile(
                  city: lista[index],
                  i: index,
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CityPage(
                        destination: lista[index],
                        i: index,
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
        ),
      ),
    );
  }
}
