import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:easy_search_bar/easy_search_bar.dart';

class ListFavPage extends StatefulWidget {
  const ListFavPage({super.key});

  @override
  State<ListFavPage> createState() => _ListFavPageState();
}

class _ListFavPageState extends State<ListFavPage> {
  final TextEditingController _searchController = TextEditingController();
  String searchValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Container(
          margin: EdgeInsets.only(bottom: 3, top: 5),
          child: AppBar(
            title: Container(
              margin: EdgeInsets.only(top: 4),
              child: TextField(
                controller: _searchController,
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.white54),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onChanged: (value) {
                  // Perform search functionality here
                },
              ),
            ),
            backgroundColor: Colors.brown,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_left_outlined),
              color: Colors.white,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                color: Colors.red,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          'images/jujutsu_kaisen.jpg',
                          fit: BoxFit.cover,
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jujutsu Kaisen",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            ElevatedButton(
                                onPressed: () {}, child: Text("Chapter 129")),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              width: 350,
                              child: Text(
                                "Ceritanya mengikuti seorang siswa sekolah menengah bernama Yuji Itadori, yang menemukan benda terkutuk yang kuat, jari milik roh terkutuk kuno Ryomen Sukuna, dan tanpa disadari menyerap kekuatannya. Akibatnya, Yuji Itadori menjadi penyihir Jujutsu dan direkrut oleh sekolah menengah teknik Jujutsu di Tokyo.Tugasnya untuk membantu mengusir roh terkutuk dan melindungi orang-orang dari pengaruh jahat mereka.Bersama rekan-rekan barunya, termasuk guru Satoru Gojo penyihir Jujutsu terkuat di sekolah .",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                                softWrap: false,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          'images/wanp1s.jpeg',
                          fit: BoxFit.cover,
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "One Piece",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            ElevatedButton(
                                onPressed: () {}, child: Text("Chapter 1071")),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              width: 350,
                              child: Text(
                                "Anime One Piece menceritakan perjalanan Luffy, seorang anak laki-laki yang bertemu bajak laut hebat bernama Shanks, dimana Luffy terinspirasi oleh kehebatan Shanks dan bermimpi suatu hari nanti ingin menjadi bajak laut. Kemudian Shanks menjanjikan Luffy untuk reuni di masa depan dan memberikan topi jeraminya .",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                                softWrap: false,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          'images/legendary.jpeg',
                          fit: BoxFit.cover,
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Legendary Youngest Son",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            ElevatedButton(
                                onPressed: () {}, child: Text("Chapter 39")),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              width: 350,
                              child: Text(
                                "Legendary Youngest Son Of The Marquis House menceritakan tentang kisah seorang anak laki-laki yang ingin melakukan balas dendam. Ia ingin menggulingkan kerajaan Tulkan, satu-satunya negara yang mendominasi benua ini. Ia selalu berhasil mencapai kemenangan dan telah menyelesaikan semua yang harus kulakukan sehingga merasa puas. Akhirnya, ia menerima kematian yang hampir tiba. Hal ini karena ia tidak lagi punya alasan untuk hidup. Ia akhirnya merasakan jika jantungnya berhenti berdetak, namun tiba-tiba .",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                                softWrap: false,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          'images/solo.jpeg',
                          fit: BoxFit.cover,
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Solo Leveling",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            ElevatedButton(
                                onPressed: () {}, child: Text("Chapter 88")),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              width: 350,
                              child: Text(
                                "Manhwa ini menceritakan pemuda bernama Sung Jin Woo yang mendapat julukan sebagai hunter terlemah di dunia. Julukan tersebut diberikan karena dirinya selalu terluka walaupun dia masuk Gate rank E yang merupakan rank paling rendah. Sebagai informasi, terdapat beberapa rank baik itu Hunter dan Gate mulai dari rank E,D,C,B,A dan paling tinggi ada rank S, namun khusus untuk Hunter, terdapat rank Hunter level nasional yang dikenal dengan kekuatan yang sangat besar .",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                                softWrap: false,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
