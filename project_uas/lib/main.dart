import 'package:flutter/material.dart';
import 'package:project_uas/carousel_img.dart';
import 'package:project_uas/provider.dart';
import 'package:project_uas/screen_home.dart';
import 'package:project_uas/screen_login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ProviderScreen())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      // home: const ScreenLogin(),
      // const ScreenCarousel(),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
