import 'package:flutter/material.dart';
// import 'dart:convert';

class ProviderScreen extends ChangeNotifier {
//   initialData() async {
//     setData = anime;
//   }

  final anime = {
    "data": [
      {
        "judul": "One Piece",
        "img": "assets/anime/img onepiece.jpg",
        'desc':
            "Di awal kisah, Raja Bajak Laut sebelumnya, Gol D. Roger, memang mengatakan telah mengumpulkan seluruh harta berharga yang telah ia dapatkan di suatu tempat. Ia menyerukan orang-orang untuk pergi ke laut dan mencarinya.One Piece mengangkat petualangan Luffy dan kawan-kawan dari pulau ke pulau. Namun, ceritanya tidak lantas jadi monoton sebatas pertarungan antara Kelompok Topi Jerami melawan musuh-musuhnya. One Piece berkembang melebihi batas-batas itu."
        // 'favorit': true
      },
      {
        "judul": "Jujutsu Kaisen",
        "img": "assets/anime/jujutsu.jpg",
        'desc':
            "Ceritanya mengikuti seorang siswa sekolah menengah bernama Yuji Itadori, yang menemukan benda terkutuk yang kuat, jari milik roh terkutuk kuno Ryomen Sukuna, dan tanpa disadari menyerap kekuatannya. Akibatnya, Yuji Itadori menjadi penyihir Jujutsu dan direkrut oleh sekolah menengah teknik Jujutsu di Tokyo.Tugasnya untuk membantu mengusir roh terkutuk dan melindungi orang-orang dari pengaruh jahat mereka.Bersama rekan-rekan barunya, termasuk guru Satoru Gojo penyihir Jujutsu terkuat di sekolah.",
      },
      {
        "judul": "Solo Leveling",
        "img": "assets/anime/solo leveling.webp",
        'desc':
            "Manhwa ini menceritakan pemuda bernama Sung Jin Woo yang mendapat julukan sebagai hunter terlemah di dunia. Julukan tersebut diberikan karena dirinya selalu terluka walaupun dia masuk Gate rank E yang merupakan rank paling rendah. Sebagai informasi, terdapat beberapa rank baik itu Hunter dan Gate mulai dari rank E,D,C,B,A dan paling tinggi ada rank S, namun khusus untuk Hunter, terdapat rank Hunter level nasional yang dikenal dengan kekuatan yang sangat besar .",
      },
      {
        "judul": "Legendary Youngest Son",
        "img": "assets/anime/youngest son legendary.jpg",
        'desc':
            "Legendary Youngest Son Of The Marquis House menceritakan tentang kisah seorang anak laki-laki yang ingin melakukan balas dendam. Ia ingin menggulingkan kerajaan Tulkan, satu-satunya negara yang mendominasi benua ini. Ia selalu berhasil mencapai kemenangan dan telah menyelesaikan semua yang harus kulakukan sehingga merasa puas. Akhirnya, ia menerima kematian yang hampir tiba. Hal ini karena ia tidak lagi punya alasan untuk hidup. Ia akhirnya merasakan jika jantungnya berhenti berdetak, namun tiba-tiba ......................",
      },
      {
        "judul": "Black Clover",
        "img": "assets/anime/img onepiece.jpg",
        'desc': ""
      },
      {
        "judul": "Boku no Hero Academia",
        "img": "assets/anime/img onepiece.jpg",
      },
      {
        "judul": "Boku no Hero Academia",
        "img": "assets/anime/img onepiece.jpg",
      },
      {
        "judul": "Boku no Hero Academia",
        "img": "assets/anime/img onepiece.jpg",
      },
      {
        "judul": "Boku no Hero Academia",
        "img": "assets/anime/img onepiece.jpg",
      },
    ]
  };

  dynamic _filtereddata = {"data": []};

  dynamic get filtereddata => _filtereddata;

  set setfilterdata(val) {
    _filtereddata["data"] = val;
    notifyListeners();

    // print(_filtereddata);
  }

  filter(value) {
    if (value.isNotEmpty) {
      setfilterdata = anime["data"]
          ?.where((element) =>
              element["judul"]!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    } else {
      setfilterdata = [];
    }

    // print(filter(value));
  }
}
