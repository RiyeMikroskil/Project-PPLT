import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_uas/detail_screen.dart';
import 'package:project_uas/provider.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  List<String> dataList = [];

  int selectedTabIndex = 0;
  int activatedIndex = 0;

  final carouselImg = [
    'assets/car1.png',
    'assets/anime/carouselHome.jpg',
  ];

  final TextEditingController searchController = TextEditingController();

  // get value => null;
  @override
  Widget build(BuildContext context) {
    // final prov = Provider.of<ProviderScreen>(context);
    void onNavBarTapped(int newindex) {
      setState(() {
        selectedTabIndex = newindex;
      });
    }

    final listPage = [
      showHome(context),
      showTrend(context),
      showList(context),
      showSetting(context),
    ];

    final bottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          FontAwesomeIcons.fire,
          color: Colors.red,
        ),
        label: 'Trend',
      ),
      const BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.solidBookmark),
        label: 'List',
      ),
      const BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.circleUser),
        label: 'Akun',
      )
    ];

    final bottomNavBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      items: bottomNavBarItems,
      currentIndex: selectedTabIndex,
      unselectedItemColor: Colors.white38,
      selectedItemColor: Colors.white,
      onTap: onNavBarTapped,
    );

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff382b5c),
            Color(0xff2e2a3e),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   title: const Text('Contoh'),
        //   automaticallyImplyLeading: true,
        // ),
        drawer: Drawer(
          child: Column(
            children: [
              // Text(widget.username.text),
              // Text(widget.firstname.text),
            ],
          ),
        ),
        body: listPage[selectedTabIndex],
        bottomNavigationBar: bottomNavBar,
      ),
    );
  }

//
  showHome(BuildContext context) {
    final prov = Provider.of<ProviderScreen>(context);
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: const Color(0xff259be),
          title: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  onChanged: prov.filter,
                  controller: searchController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white60,
                      suffixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: const Icon(Icons.more_vert),
              )
            ],
          ),
        ),
        body: prov.filtereddata['data'].length == 0
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 100,
                        child: CarouselSlider.builder(
                            itemCount: carouselImg.length,
                            itemBuilder: ((context, index, realIndex) {
                              final carouselImage = carouselImg[index];

                              return buildImages(carouselImage, index);
                            }),
                            options: CarouselOptions(
                              height: 200,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 2),
                              viewportFraction: 1,
                              enableInfiniteScroll: true,
                              onPageChanged: (index, reason) =>
                                  setState(() => activatedIndex = index),
                            )),
                      ),
                      Positioned(
                        right: 1,
                        left: 3,
                        bottom: 10,
                        child: indicator(),
                      ),
                    ],
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Reading',
                      style: TextStyle(
                          fontFamily: 'JollyLodger',
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:
                          List.generate(prov.anime['data']!.length, (index) {
                        var item = prov.anime['data']![index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ScreenDetail(data: item)));
                          },
                          child: Card(
                            color: Color(0xff403c3c),
                            child: Column(children: [
                              Image.asset(
                                item['img'].toString(),
                                width: 50,
                              ),
                              Text(item['judul'].toString()),
                            ]),
                          ),
                        );
                      }),
                    ),
                  ),
                  const Divider(),
                ],
              )
            : SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Center(
                  child: Column(
                    children: prov.filtereddata['data'].length == 0
                        ? [Container()]
                        : List.generate(prov.filtereddata['data']!.length,
                            (index) {
                            var item = prov.filtereddata['data']![index];
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ScreenDetail(
                                              data: item,
                                            )));
                              },
                              child: Card(
                                color: Colors.transparent,
                                child: Column(children: [
                                  Image.asset(
                                    item['img'].toString(),
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    item['judul'].toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ]),
                              ),
                            );
                          }),
                  ),
                ),
              ));
  }

  Widget buildImages(String carouselImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        color: Colors.transparent,
        child: Image.asset(
          carouselImage,
          fit: BoxFit.cover,
        ),
      );

  Widget indicator() => AnimatedSmoothIndicator(
      activeIndex: activatedIndex, count: carouselImg.length);

  showList(BuildContext context) {
    final prov = Provider.of<ProviderScreen>(context);
    return Center(
      child: Column(
        children: [
          Text(prov.anime['data']![1]['judul'].toString()),
          Image.asset(
            prov.anime['data']![0]['img'].toString(),
            width: 200,
          ),
        ],
      ),
    );
  }

  showSetting(BuildContext context) {
    return Center(
      child: Column(
        children: const [Text('Settings')],
      ),
    );
  }

  showTrend(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          Text('Trend'),
        ],
      ),
    );
  }
}
