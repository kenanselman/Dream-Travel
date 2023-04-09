import 'package:flutter/material.dart';

class Destination {
  String city;
  double price;
  DateTime date;
  String desc;
  String destination;
  String image;
  Destination(this.city, this.price, this.date, this.desc, this.destination,
      this.image);
}

List<Destination> lista = [
  Destination(
      'BARCELONA, ŠPANIJA',
      1160.0,
      DateTime(2023, 2, 25),
      planPutovanja[0],
      'assets/images/destination1.jpg',
      'assets/images/image1.jpg'),
  Destination('BEČ, AUSTRIJA', 1230.0, DateTime(2023, 2, 28), planPutovanja[1],
      'assets/images/destination2.jpg', 'assets/images/image2.jpg'),
  Destination(
      'BUDIMPEŠTA, MAĐARSKA',
      1100.0,
      DateTime(2023, 3, 5),
      planPutovanja[2],
      'assets/images/destination3.jpg',
      'assets/images/image3.jpg'),
  Destination(
      'KANKUN, MEKSIKO',
      3450.0,
      DateTime(2023, 3, 15),
      planPutovanja[3],
      'assets/images/destination4.jpg',
      'assets/images/image4.jpg'),
  Destination('DUBAI, UAE', 2345.0, DateTime(2023, 4, 2), planPutovanja[4],
      'assets/images/destination5.jpg', 'assets/images/image5.jpg'),
  Destination(
      'ISTANBUL, TURSKA',
      850.0,
      DateTime(2023, 5, 17),
      planPutovanja[5],
      'assets/images/destination6.jpg',
      'assets/images/image6.jpg'),
  Destination('LONDON, UK', 1450.0, DateTime(2023, 6, 5), planPutovanja[6],
      'assets/images/destination7.jpg', 'assets/images/image7.jpg'),
  Destination('MALDIVI', 2600.0, DateTime(2023, 7, 12), planPutovanja[7],
      'assets/images/destination8.jpg', 'assets/images/image8.jpg'),
];

List<Destination> pom = [
  Destination(
      'BARCELONA, ŠPANIJA',
      1160.0,
      DateTime(2023, 2, 25),
      planPutovanja[0],
      'assets/images/destination1.jpg',
      'assets/images/image1.jpg'),
  Destination('BEČ, AUSTRIJA', 1230.0, DateTime(2023, 2, 28), planPutovanja[1],
      'assets/images/destination2.jpg', 'assets/images/image2.jpg'),
  Destination(
      'BUDIMPEŠTA, MAĐARSKA',
      1100.0,
      DateTime(2023, 3, 5),
      planPutovanja[2],
      'assets/images/destination3.jpg',
      'assets/images/image3.jpg'),
  Destination(
      'KANKUN, MEKSIKO',
      3450.0,
      DateTime(2023, 3, 15),
      planPutovanja[3],
      'assets/images/destination4.jpg',
      'assets/images/image4.jpg'),
  Destination('DUBAI, UAE', 2345.0, DateTime(2023, 4, 2), planPutovanja[4],
      'assets/images/destination5.jpg', 'assets/images/image5.jpg'),
  Destination(
      'ISTANBUL, TURSKA',
      850.0,
      DateTime(2023, 5, 17),
      planPutovanja[5],
      'assets/images/destination6.jpg',
      'assets/images/image6.jpg'),
  Destination('LONDON, UK', 1450.0, DateTime(2023, 6, 5), planPutovanja[6],
      'assets/images/destination7.jpg', 'assets/images/image7.jpg'),
  Destination('MALDIVI', 2600.0, DateTime(2023, 7, 12), planPutovanja[7],
      'assets/images/destination8.jpg', 'assets/images/image8.jpg'),
];

void sortPomAsc() {
  pom.sort((a, b) => a.price.compareTo(b.price));
}

void sortPomDesc() {
  pom.sort((a, b) => b.price.compareTo(a.price));
}

var planPutovanja = [
  'Barcelona je dragulj istočne španske provincije, Katalonije. Pored Madrida je ekonomski i turistički centar regije. Barcelona je poznata po mnogim historijskim lokacijama kao što su crkva Sagrada Familia, šareni dio grada Park Güell, kao i svjetski poznati stadion Camp Nou.\n\nPlan putovanja i boravka biće dostavljen naknadno.',
  'Beč je jedan od najposjećenijih gradova centralne Evrope. Posjeduje kulturne i historijske znamenitosti od koje će vam zauvijek ostati u sjećanju. Schönbrunn palata, Hofburg muzej i katedrala sv.Stephana, samo su neke od turističkih atrakcija u austrijskoj prijestolnici.\n\nPlan putovanja i boravka biće dostavljen naknadno.',
  'Budimpešta je biser Mađarske i cijelog Dunava. Spoj starog i novog, spoj različitih arhitektura i stilova, daju ovom gradu poseban šarm. Pored zgrade mađarskog parlamenta i bazilike sv.Stjepana, Budimpešta može ponuditi još mnogo zanimljivosti za svačiji ukus.\n\nPlan putovanja i boravka biće dostavljen naknadno.',
  'Kankun je već nekoliko desetljeća turistički hotspot u Meksičkom zaljevu. Prepun je turista tokom cijele godine iz zemalja Sjeverne i Južne Amerike, kao i iz ostatka svijeta. Otkrijte plaže Kankuna i još mnogo toga.\n\nPlan putovanja i boravka biće dostavljen naknadno.',
  'Vodimo vas na putovanje u Dubai, jedan od sedam emirata, poznat po luksuznom šopingu, modernoj arhitekturi i noćnom životu.\nDubai je danas jedna od najmodernijih i najaktuelnijih turističkih destinacija zahvaljujući brojnim atrakcijama kao što su Burdž Kalifa (Burj Kalifa), koja je ujedno i najviša zgrada na svijetu, Burdž Al Arab (Burj Al Arab), ostrvo The Palm, Dubai Mall, najveći tržni centar na svijetu.\n\nPlan putovanja i boravka biće dostavljen naknadno.',
  'Istanbul je jedini grad na dva kontinenta. I to je dovoljan razlog da ga posjetite. A tih razloga ima još. \nOsnovan oko 1000. godine prije Krista, iz Bizantskog carstva niknuo je veličanstven grad Konstantinopol, a poslije otomanskog osvajanja grada, zadržao je svoje važno mjesto u srcu imperija.\n\nPlan putovanja i boravka biće dostavljen naknadno.',
  'London je glavni i najnaseljeniji grad Engleske i Ujedinjenog Kraljevstva. On se nalazi na reci Temzi na jugoistočnom delu ostrva Velike Britanije. London su osnovali još stari Rimljani koji su ga nazivali Londinijum.\nLondon je vodeći globalni grad u umetnosti, trgovini, obrazovanju, zabavi, modi, finansijama, zdravstvu, medijima, turizmu i mnogo čemu drugom.\n\nPlan putovanja i boravka biće dostavljen naknadno.',
  'Maldivi se opravdano smatraju najegzotičnijom tropskom destinacijom i kao takvi predstavljaju pravo čudo prirode. Bijele pješčane plaže, mnoštvo palmi i netaknuti podvodni svet predstavljaju pravu turističku atrakciju. Još ako se tome dodaju nevjerovatno lijepi koralni grebeni i jedinstvene ronilačke mogućnosti sasvim je razumljivo zašto su Maldivi neodoljivi i nezaboravni.\n\nPlan putovanja i boravka biće dostavljen naknadno.',
];
//sortirat nekako i ovaj
