import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: size.height,
      constraints: BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(colors: [
              ThemeData.dark().HeaderShaderMaskColor.withOpacity(.6),
              ThemeData.dark().HeaderShaderMaskColor.withOpacity(.6)
            ]).createShader(bounds),
            child: Image.asset(
              "assets/images/profile.png",
              width: screenWidth / 2,
            ),
            blendMode: BlendMode.srcATop,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Hi,\nIam Ahmed Zidan,\na Mobile developer",
            style: TextStyle(
                // color: CustomColor.whitePrimary,
                fontWeight: FontWeight.bold,
                fontSize: 24,
                height: 1.5),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 190,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      ThemeData.dark().BgRaisedButton)),
              onPressed: () {},
              child: Text("Get in touch"),
            ),
          )
        ],
      ),
    );
  }
}
