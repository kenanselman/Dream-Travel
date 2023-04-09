import 'package:emina_nejra/const.dart';
import 'package:emina_nejra/data_provider.dart';
import 'package:emina_nejra/screens/city_screen.dart';
import 'package:emina_nejra/widgets/custom_drawer.dart';
import 'package:emina_nejra/widgets/tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SortedScreen extends StatefulWidget {
  static const routeName = 'sorted';
  final List<Destination> lista;
  const SortedScreen({super.key, required this.lista});

  @override
  State<SortedScreen> createState() => _SortedScreenState();
}

class _SortedScreenState extends State<SortedScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DataProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'SORTIRANO',
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
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.lista.length,
              itemBuilder: (BuildContext context, int index) {
                return Tile(
                  city: widget.lista[index],
                  i: index,
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CityPage(
                        i: index,
                        destination: lista[index],
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
