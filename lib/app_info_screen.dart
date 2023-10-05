import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

import 'encyclopedia_screen.dart';
import 'home_screen.dart';

class AppInfoScreen extends StatefulWidget {
  const AppInfoScreen({Key? key}) : super(key: key);

  @override
  State<AppInfoScreen> createState() => _AppInfoScreenState();
}

class _AppInfoScreenState extends State<AppInfoScreen> {
  Color backgroundColor = const Color(0xffe9edf1);
  Color secondaryColor = const Color(0xffe1e6ec);
  Color accentColor = const Color(0xff2d5765);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          //todo implement transition to other screens
          // print(index);
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Encyclopedia(),
              ),
            );
          }
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          }
          if (index == 2) {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => AppInfoScreen(),
            //   ),
            // );
          }
        },
        index: 2,
        backgroundColor: backgroundColor,
        color: secondaryColor,
        buttonBackgroundColor: backgroundColor,
        animationDuration: const Duration(
          milliseconds: 300,
        ),
        items: [
          NeumorphicIcon(
            Icons.menu_book_rounded,
            style: NeumorphicStyle(
              color: accentColor,
              intensity: 20,
            ),
          ),
          NeumorphicIcon(
            Icons.home_rounded,
            style: NeumorphicStyle(
              color: accentColor,
              intensity: 20,
            ),
          ),
          NeumorphicIcon(
            Icons.info_rounded,
            style: NeumorphicStyle(
              color: accentColor,
              intensity: 20,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/app_icon.svg',
                        width: 30,
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          "DiseaseLab",
                          style: TextStyle(
                            fontFamily: 'odibeeSans',
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    'assets/tensorflow-icontxt.svg',
                    width: 40,
                    height: 40,
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Neumorphic(
                        padding: const EdgeInsets.all(10),
                        style: NeumorphicStyle(
                          color: accentColor,
                          intensity: 20,
                          depth: 20,
                        ),
                        child: Text(
                          'Our Team',
                          style: TextStyle(
                            fontFamily: 'odibeeSans',
                            fontSize: 35,
                            color: backgroundColor,
                          ),
                        ),
                      ),
                      LottieBuilder.asset(
                        'assets/106709-hanging-plant-gently-swinging.json',
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Neumorphic(
                                margin: const EdgeInsets.only(
                                  left: 20,
                                ),
                                style: NeumorphicStyle(
                                  border: NeumorphicBorder(
                                    color: accentColor,
                                    width: 2,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/picprofile.png'),
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                margin: const EdgeInsets.only(
                                  top: 10,
                                  left: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                        right: 10,
                                      ),
                                      child: NeumorphicText(
                                        'Amit Verma',
                                        style: const NeumorphicStyle(
                                          color: Colors.black,
                                        ),
                                        textStyle: NeumorphicTextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () async {
                                            String surl =
                                                'https://www.linkedin.com/in/amit-verma-4345ab214/';
                                            Uri url = Uri.parse(surl);
                                            await launchUrl(url,
                                                mode: LaunchMode
                                                    .externalApplication);
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                              right: 10,
                                            ),
                                            child: SvgPicture.asset(
                                              'assets/linkedin.svg',
                                              width: 20,
                                              height: 20,
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            String surl =
                                                'https://github.com/amitv212';
                                            Uri url = Uri.parse(surl);
                                            await launchUrl(url,
                                                mode: LaunchMode
                                                    .externalApplication);
                                          },
                                          child: SvgPicture.asset(
                                            'assets/github.svg',
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Neumorphic(
                                margin: const EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                style: NeumorphicStyle(
                                  border: NeumorphicBorder(
                                    color: accentColor,
                                    width: 2,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/picprofile.png'),
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                margin: const EdgeInsets.only(
                                  top: 10,
                                  left: 20,
                                  right: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                        right: 10,
                                      ),
                                      child: NeumorphicText(
                                        'Shreya Gupta',
                                        style: const NeumorphicStyle(
                                          color: Colors.black,
                                        ),
                                        textStyle: NeumorphicTextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () async {
                                            String surl =
                                                'https://www.linkedin.com/in/shreya-gupta-778723209/';
                                            Uri url = Uri.parse(surl);
                                            await launchUrl(url,
                                                mode: LaunchMode
                                                    .externalApplication);
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                              right: 10,
                                            ),
                                            child: SvgPicture.asset(
                                              'assets/linkedin.svg',
                                              width: 20,
                                              height: 20,
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            String surl =
                                                'https://github.com/Shreya0706';
                                            Uri url = Uri.parse(surl);
                                            await launchUrl(url,
                                                mode: LaunchMode
                                                    .externalApplication);
                                          },
                                          child: SvgPicture.asset(
                                            'assets/github.svg',
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Neumorphic(
                                margin: const EdgeInsets.only(
                                  top: 20,
                                  left: 20,
                                ),
                                style: NeumorphicStyle(
                                  border: NeumorphicBorder(
                                    color: accentColor,
                                    width: 2,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/picprofile.png'),
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                margin: const EdgeInsets.only(
                                  top: 10,
                                  left: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                        right: 10,
                                      ),
                                      child: NeumorphicText(
                                        'Shantanu Kasana',
                                        style: const NeumorphicStyle(
                                          color: Colors.black,
                                        ),
                                        textStyle: NeumorphicTextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () async {
                                            String surl =
                                                'https://www.linkedin.com/in/shanu017/';
                                            Uri url = Uri.parse(surl);
                                            await launchUrl(url,
                                                mode: LaunchMode
                                                    .externalApplication);
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                              right: 10,
                                            ),
                                            child: SvgPicture.asset(
                                              'assets/linkedin.svg',
                                              width: 20,
                                              height: 20,
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            String surl =
                                                'https://github.com/ShantanuKasana17';
                                            Uri url = Uri.parse(surl);
                                            await launchUrl(url,
                                                mode: LaunchMode
                                                    .externalApplication);
                                          },
                                          child: SvgPicture.asset(
                                            'assets/github.svg',
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                      Neumorphic(
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        style: NeumorphicStyle(
                          color: backgroundColor,
                          intensity: 20,
                          depth: 5,
                        ),
                        margin: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                          right: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'About DiseaseLab',
                              style: TextStyle(
                                fontFamily: 'odibeeSans',
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: const Text(
                                'DiseaseLab was created as part of our mini project work during the penultimate year of our CS Engineering Graduation course.\n\nDiseaseLab was developed with an intention to reduce the time taken to identify various plant diseases with a high detection accuracy. Early detection and counter measures will help prevent large scale losses to the farmers, also improving crop productivity.',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                        ),
                        child: SvgPicture.asset(
                          'assets/made-with-love-in-india.svg',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                            ),
                            child: SvgPicture.asset(
                              'assets/flutter.svg',
                              width: 100,
                              height: 35,
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(
                              top: 10,
                              left: 10,
                            ),
                            child: SvgPicture.asset(
                              'assets/tensorflow.svg',
                              width: 100,
                              height: 35,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}