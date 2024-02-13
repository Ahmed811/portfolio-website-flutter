import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: size.height / 1.2,
      constraints: BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi,\nIam Ahmed Zidan,\na Mobile developer",
                style: TextStyle(
                    // color: CustomColor.whitePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    height: 1.5),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 250,
                height: 30,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            ThemeData.dark().BgRaisedButton)),
                    onPressed: () {},
                    child: Text("Get in touch")),
              )
            ],
          ),
          Image.asset(
            "assets/images/profile.png",
            width: screenWidth / 3,
          ),
        ],
      ),
    );
  }
}
