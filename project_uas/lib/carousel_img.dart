import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_uas/screen_home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScreenCarousel extends StatefulWidget {
  final TextEditingController userName_;
  const ScreenCarousel({super.key, required this.userName_});

  @override
  State<ScreenCarousel> createState() => _ScreenCarouselState();
}

class _ScreenCarouselState extends State<ScreenCarousel> {
  int activeIndex = 0;
  final assetsImages = [
    'assets/anime/carousel1.jpg',
    'assets/anime/carousel2.png',
    'assets/anime/carouse3.png'
  ];

  // final String username_;

  @override
  Widget build(BuildContext context) {
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Hello ${widget.userName_.text} Welcome to AHA Comic \nHint : Click Next to next page!!',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'JollyLodger'),
                ),
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 400,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                ),
                itemCount: assetsImages.length,
                itemBuilder: (context, index, realIndex) {
                  final assetsImage = assetsImages[index];

                  return buildImage(assetsImage, index);
                },
              ),
              const SizedBox(height: 32),
              buildIndicator(),
              const SizedBox(
                height: 30,
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.red[900],
                            side: const BorderSide(color: Colors.transparent),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'JollyLodger',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.red[900],
                            side: const BorderSide(color: Colors.transparent),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'JollyLodger',
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String assetsImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 50),
        color: Colors.transparent,
        child: Image.asset(
          assetsImage,
          fit: BoxFit.cover,
        ),
      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: assetsImages.length,
      );
}
