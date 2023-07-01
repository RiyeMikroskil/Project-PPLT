import 'package:flutter/material.dart';

class ScreenDetail extends StatefulWidget {
  final Map data;
  const ScreenDetail({Key? key, required this.data});

  @override
  State<ScreenDetail> createState() => _ScreenDetailState();
}

class _ScreenDetailState extends State<ScreenDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              "${widget.data['judul']}",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset(
              widget.data['img'],
              width: 200,
            ),
            Text(widget.data['desc'].toString())
          ],
        ),
      ),
    );
  }
}
