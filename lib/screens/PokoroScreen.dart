import 'package:flutter/material.dart';
import 'package:harugo/widgets/pokoroContainerWidget.dart';

class PokoroScreen extends StatelessWidget {
  const PokoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            "나의 포코로",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xffFFE7DD),
      body: Stack(
        children: [
          Positioned(
            top: -80,
            left: 0,
            right: 0,
            child: Image.asset("./assets/first_pokoro.png"),
          ),
          Transform.translate(
            offset: Offset(260, 70),
            child: Image.asset(
              'assets/icons/hanger.png',
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 380,
            left: MediaQuery.of(context).size.width / 2 - 92,
            child: Container(
              width: 190,
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xffFD6929),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "현재 착용 의상",
                      style: TextStyle(
                        fontSize: 6,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "봄 포코로",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 460, left: 20, right: 20),
              child: PokoroContainerWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
