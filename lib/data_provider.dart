import 'package:emina_nejra/const.dart';
import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  List<Destination> _imeGrada = [];
  List<int> _indexi = [];
  List<Destination> pom = [];
  String textError = '';
  double textHeight = 0;

  List<Destination> get imeGrada => _imeGrada;
  List<int> get indexi => _indexi;

  void dodaj(Destination s) {
    _imeGrada.add(s);

    notifyListeners();
  }

  void setError() {
    textError = '\u26A0 Neispravan format kartice!.';
    textHeight = 20;
    notifyListeners();
  }

  void resetError() {
    textError = '';
    textHeight = 0;
    notifyListeners();
  }

  void skloni(Destination s) {
    _imeGrada.remove(s);
    notifyListeners();
  }

  void dodajPolazak(int t) {
    _indexi.add(t);
    notifyListeners();
  }

  void skloniPolazak(int t) {
    _indexi.remove(t);
    notifyListeners();
  }
}
