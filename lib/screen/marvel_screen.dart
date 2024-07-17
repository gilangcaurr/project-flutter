import 'package:flutter/material.dart';
import 'detail_screen.dart';

class ListMarvelScreen extends StatelessWidget {
  final List<Map<String, dynamic>> marvelData = [
    {
      "nama": "Iron Man (Tony Stark)",
      "image": "assets/images/marvel 2 (ironman).jpg",
      "gallery": [
        "assets/images/iron.jpg",
        "assets/images/irontwo.jpg",
        "assets/images/ironthrree.jpg"
      ],
      "desc": "Seorang jenius miliarder yang menciptakan baju besi canggih untuk menjadi pahlawan super setelah mengalami cedera parah. Dikenal dengan kecerdasan dan kemampuannya dalam teknologi."
    },
    {
      "nama": "Captain America (Steve Rogers)",
      "image": "assets/images/marvel 3 (captain amerika).jpg",
      "gallery": [
        "assets/images/captainone.jpg",
        "assets/images/captaintwo.jpg",
        "assets/images/captainthree.jpg"
      ],
      "desc": "Seorang prajurit yang diberikan serum super-soldier selama Perang Dunia II, menjadikannya sangat kuat, cepat, dan tahan lama. Dia memegang perisai yang terbuat dari vibranium dan dikenal karena moral dan kepemimpinannya yang kuat."
    },
    {
      "nama": "Thor",
      "image": "assets/images/marvel 4 (thor).jpg",
      "gallery": [
        "assets/images/thorone.jpg",
        "assets/images/thortwo.jpg",
        "assets/images/thorthree.jpg"
      ],
      "desc": "Dewa petir dari mitologi Norse yang menggunakan palu ajaib bernama Mjolnir. Dia adalah putra Odin dan salah satu anggota Avengers terkuat."
    },
    {
      "nama": "Hulk (Bruce Banner)",
      "image": "assets/images/marvel 5 (hulk).jpg",
      "gallery": [
        "assets/images/hulkone.jpg",
        "assets/images/hulktwo.jpg",
        "assets/images/hulkthree.jpg"
      ],
      "desc": "Seorang ilmuwan yang terpapar radiasi gamma dan berubah menjadi monster hijau raksasa dengan kekuatan super setiap kali marah. Bruce Banner berusaha mengendalikan amarahnya untuk menghindari transformasi."
    },
    {
      "nama": "Spider-Man (Peter Parker)",
      "image": "assets/images/marvel 1 (spiderman).jpg",
      "gallery": [
        "assets/images/spiderone.jpg",
        "assets/images/spidertwo.jpg",
        "assets/images/spiderthree.jpg"
      ],
      "desc": "Seorang remaja yang mendapatkan kekuatan laba-laba setelah digigit oleh laba-laba radioaktif. Dia menggunakan kekuatan ini untuk melindungi New York dan sekitarnya dari berbagai ancaman."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marvel Universe'),
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/tikelback.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: marvelData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailMarvelScreen(
                        nama: marvelData[index]["nama"],
                        image: marvelData[index]["image"],
                        gallery: marvelData[index]["gallery"],
                        desc: marvelData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(marvelData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    marvelData[index]["nama"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}