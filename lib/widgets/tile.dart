import 'package:emina_nejra/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:intl/intl.dart';

DateFormat formatter = DateFormat('dd.MM.yyyy');

class Tile extends StatelessWidget {
  final Destination city;
  final int i;
  final Function() onPressed;

  Tile({
    Key? key,
    required this.city,
    required this.onPressed,
    required this.i,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int n = i + 1;
    String cijena = city.price.toString();
    cijena = cijena + ' KM';
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE7E5E5),
        border: Border.all(
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: onPressed,
        child: SizedBox(
          height: 120,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(city.destination),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            city.city,
                            style: GoogleFonts.nunito(
                                fontSize: 14, color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Text(
                              'Vrijeme polaska: ',
                              style: GoogleFonts.nunito(
                                  fontSize: 14, color: Colors.black),
                            ),
                            Text(
                              formatter.format(city.date),
                              style: GoogleFonts.nunito(
                                  fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Text(
                              'Cijena: ',
                              style: GoogleFonts.nunito(
                                  fontSize: 14, color: Colors.black),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              cijena,
                              style: GoogleFonts.nunito(
                                  fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
