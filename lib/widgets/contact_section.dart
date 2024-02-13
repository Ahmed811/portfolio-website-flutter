import 'package:flutter/material.dart';
import 'package:zidanportfolio/constants/colors.dart';
import 'package:zidanportfolio/constants/size.dart';
import 'package:zidanportfolio/widgets/custom_text_field.dart';
// import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: ThemeData.dark().BgContainer2,
      child: Column(
        children: [
          Text(
            "Get in touch",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: ThemeData.dark().BgTextColor1,
                fontSize: 24),
          ),
          SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(builder: (context, constraint) {
              if (constraint.maxWidth >= KMinDesktopWidth) {
                return buildNameEmailDesktop(nameController: nameController);
              }
              return buildNameEmailMobile(nameController: nameController);
            }),
          ),
          SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: CustomTextField(
              hintText: "Your Message",
              controller: nameController,
              maxLine: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: SizedBox(
              height: 30,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        ThemeData.dark().BgRaisedButton)),
                onPressed: () {},
                child: Text("Get in touch"),
              ),
              width: double.maxFinite,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ConstrainedBox(
            child: Divider(),
            constraints: BoxConstraints(maxWidth: 300),
          ),
          SizedBox(
            height: 15,
          ),
          Wrap(
            children: [
              InkWell(
                  onTap: () {
                    //   js.context.callMethod("open",[]);
                  },
                  child: Image.asset(
                    "assets/images/github_2.png",
                    width: 28,
                  )),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/images/linkedin.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/images/facebook.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/images/instgram.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/images/telegram.png",
                  width: 28,
                ),
              ),
            ],
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
          )
        ],
      ),
    );
  }
}

class buildNameEmailDesktop extends StatelessWidget {
  const buildNameEmailDesktop({
    super.key,
    required this.nameController,
  });

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: CustomTextField(
          hintText: "Your Name",
          controller: nameController,
        )),
        SizedBox(
          width: 15,
        ),
        Flexible(
            child: CustomTextField(
          hintText: "Your Email",
          controller: nameController,
        )),
      ],
    );
  }
}

class buildNameEmailMobile extends StatelessWidget {
  const buildNameEmailMobile({
    super.key,
    required this.nameController,
  });

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            child: CustomTextField(
          hintText: "Your Name",
          controller: nameController,
        )),
        SizedBox(
          height: 15,
        ),
        Flexible(
            child: CustomTextField(
          hintText: "Your Email",
          controller: nameController,
        )),
      ],
    );
  }
}
