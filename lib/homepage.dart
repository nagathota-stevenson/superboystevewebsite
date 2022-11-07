import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_rotation/animated_rotation.dart' as AnimatedRotation;
import 'package:model_viewer_plus/model_viewer_plus.dart';
//import 'package:animated_rotation/animated_rotation.dart';
import 'main.dart';
import 'dart:html' as html;

String text = "hello world! I am Stevenson Nagathota a.k.a. superboy steve";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  bool showScroll = false;
  bool page2Scroll = false;
  bool page3Scroll = false;
  bool page4Scroll = false;
  bool start = false;
  double scale = 1;
  bool changeHoverColor = false;
  bool changeHoverColor1 = false;
  bool changeHoverColor2 = false;
  bool scrollButtonHover = false;
  bool redORblack = false;
  List<bool> itemsColor = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<bool> itemsColor2 = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<bool> itemsColor3 = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  int x = 0;
  int y = 0;
  int z = 1;
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    // Last page text color change
    Widget onMousHoverChangeColor(String s, int i, int type) {
      return InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            type == 1 ? itemsColor[i] = value : itemsColor2[i] = value;
          });
        },
        child: Text(
          s,
          style: TextStyle(
            color: (type == 1 ? itemsColor[i] : itemsColor2[i]) ? r : w,
            fontSize: 24,
            fontFamily: GoogleFonts.courierPrime().fontFamily,
          ),
        ),
      );
    }

    // last page buttons with color change
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Widget customButton(String s, String link, int index, IconData icon) {
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          width: 300,
          child: ElevatedButton(
            onPressed: () {
              html.window.open(link, 'new tab');
            },
            onHover: (value) {
              setState(() {
                itemsColor3[index] = value;
              });
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.transparent,
              side: BorderSide(color: w),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                //width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      icon,
                      color: itemsColor3[index] ? r : w,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 218,
                      child: Center(
                        child: Text(
                          s,
                          style: TextStyle(color: itemsColor3[index] ? r : w),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    // print(redORblack);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0,
          bottomOpacity: 0,
          backgroundColor: Colors.transparent,
          title: SizedBox(
            width: width,
            child: Align(
              alignment: Alignment.centerRight,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onHover: (value) {
                        setState(() {
                          changeHoverColor = value;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        side: BorderSide(
                            color: changeHoverColor ? r : w.withOpacity(0.2)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          controller.animateTo(0,
                              duration: Duration(seconds: 2),
                              curve: Curves.easeInOut);
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          //width: 100,
                          child: Text(
                            "HOME",
                            style: TextStyle(
                                color:
                                    changeHoverColor ? r : w.withOpacity(0.2)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onHover: (value) {
                        setState(() {
                          changeHoverColor1 = value;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        side: BorderSide(
                            color: changeHoverColor1 ? r : w.withOpacity(0.2)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          controller.animateTo(height,
                              duration: Duration(seconds: 2),
                              curve: Curves.easeInOut);
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          //width: 100,
                          child: Text(
                            "ABOUT ME",
                            style: TextStyle(
                                color:
                                    changeHoverColor1 ? r : w.withOpacity(0.2)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onHover: (value) {
                        setState(() {
                          changeHoverColor2 = value;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        side: BorderSide(
                            color: changeHoverColor2 ? r : w.withOpacity(0.2)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          controller.animateTo(height * 4,
                              duration: Duration(seconds: 2),
                              curve: Curves.easeInOut);
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          //width: 100,
                          child: Text(
                            "CONTACT ME",
                            style: TextStyle(
                                color:
                                    changeHoverColor2 ? r : w.withOpacity(0.2)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
      backgroundColor: b,
      body: NotificationListener(
        onNotification: (notification) {
          // print(controller.position.pixels);
          if (controller.position.pixels > height * 0.6) {
            setState(() {
              showScroll = false;
              //redORblack = !redORblack;
            });
          } else {
            setState(() {
              showScroll = true;
            });
          }
          if (controller.position.pixels > height * 0.6) {
            setState(() {
              page2Scroll = true;
              // redORblack = !redORblack;
            });
          } else if (controller.position.pixels < height * 0.01) {
            setState(() {
              page2Scroll = false;
              //redORblack = !redORblack;
            });
          }
          if (controller.position.pixels > height * 2 * 0.6) {
            setState(() {
              scale = controller.position.pixels / 1000;
              page3Scroll = true;
              //redORblack = !redORblack;
            });
          } else if (controller.position.pixels < height * 3 * 0.01) {
            setState(() {
              page4Scroll = false;
              // redORblack = !redORblack;
            });
          }
          if (controller.position.pixels > height * 3 * 0.6) {
            setState(() {
              scale = controller.position.pixels / 1000;
              page4Scroll = true;
              //redORblack = !redORblack;
            });
          } else if (controller.position.pixels < height * 3 * 0.01) {
            setState(() {
              page4Scroll = false;
            });
          }
          return true;
        },
        child: SingleChildScrollView(
          physics: RangeMaintainingScrollPhysics(),
          controller: controller,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  FadeIn(
                    delay: const Duration(seconds: 2),
                    duration: const Duration(seconds: 2),
                    child: Center(
                      child: Lottie.asset('json/bg2.json',
                          width: width, height: height),
                    ),
                  ),
                  Container(
                    width: width,
                    height: height,
                    //color: b,
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FadeIn(
                                    delay: const Duration(seconds: 2),
                                    duration: const Duration(seconds: 2),
                                    child: AnimatedContainer(
                                      curve: Curves.easeInOutSine,
                                      duration: Duration(seconds: 0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'superboy ',
                                          style: TextStyle(
                                              fontSize: 48.0,
                                              fontFamily: 'radhiumz',
                                              color: r),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'steve.',
                                              style: TextStyle(
                                                  fontSize: 48.0,
                                                  fontFamily: 'radhiumz',
                                                  color: w),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  FadeIn(
                                    duration: const Duration(seconds: 1),
                                    child: AnimatedTextKit(
                                      onFinished: () {
                                        setState(() {
                                          showScroll = true;
                                          start = true;
                                        });
                                      },
                                      totalRepeatCount: 1,
                                      animatedTexts: [
                                        TyperAnimatedText(
                                          text,
                                          speed:
                                              const Duration(milliseconds: 50),
                                          textStyle: TextStyle(
                                              fontSize: 24,
                                              fontFamily:
                                                  GoogleFonts.courierPrime()
                                                      .fontFamily,
                                              color: w),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              AnimatedOpacity(
                                opacity: showScroll ? 1.0 : 0.0,
                                duration: Duration(seconds: 2),
                                child: FadeIn(
                                  delay: !start
                                      ? Duration(seconds: 3)
                                      : Duration(seconds: 0),
                                  duration: !start
                                      ? Duration(seconds: 2)
                                      : Duration(seconds: 0),
                                  child: Center(
                                    child: ElevatedButton(
                                      onHover: (value) {
                                        setState(() {
                                          scrollButtonHover = value;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: b,
                                        side: BorderSide(
                                            color: scrollButtonHover
                                                ? r
                                                : w.withOpacity(0.2)),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          controller.animateTo(height,
                                              duration: Duration(seconds: 2),
                                              curve: Curves.easeInOut);
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          width: 100,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.arrow_downward,
                                                size: 18,
                                                color: scrollButtonHover
                                                    ? r
                                                    : w.withOpacity(0.2),
                                              ),
                                              Text(
                                                "SCROLL",
                                                style: TextStyle(
                                                    color: scrollButtonHover
                                                        ? r
                                                        : w.withOpacity(0.2)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                ],
              ),
              Container(
                  width: width,
                  height: height,
                  color: r,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      page2Scroll
                          ? FadeIn(
                              delay: const Duration(seconds: 0),
                              duration: const Duration(seconds: 2),
                              child:
                                  // Image(image: AssetImage("/hand.png"))
                                  AnimatedRotation.AnimatedRotation(
                                      curve: Curves.easeInOutSine,
                                      angle: (controller.position.pixels -
                                              height) *
                                          0.15,
                                      duration: const Duration(milliseconds: 0),
                                      child: Transform.scale(
                                        scale: width > 900 ? 1 : 2,
                                        child: const Image(
                                            filterQuality: FilterQuality.high,
                                            image: AssetImage(
                                              "images/hand.png",
                                            )),
                                      )))
                          : const SizedBox.shrink(),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            page2Scroll
                                ? FadeIn(
                                    // from: width,
                                    // delay: const Duration(seconds: 1),
                                    duration: const Duration(seconds: 2),
                                    child: FadeIn(
                                      delay: const Duration(seconds: 1),
                                      duration: const Duration(seconds: 2),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: 'UI/UX ',
                                              style: TextStyle(
                                                  fontSize: 48.0,
                                                  fontFamily: 'radhiumz',
                                                  color: b),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'DESIGNER            ',
                                                  style: TextStyle(
                                                      fontSize: 48.0,
                                                      fontFamily: 'radhiumz',
                                                      color: w),
                                                ),
                                              ],
                                            ),
                                          ),
                                          page2Scroll
                                              ? FadeIn(
                                                  delay: const Duration(
                                                      seconds: 1),
                                                  duration: const Duration(
                                                      seconds: 2),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'I am a designer who makes apps feel & look good.',
                                                        style: TextStyle(
                                                            fontSize: 24.0,
                                                            fontFamily: GoogleFonts
                                                                    .courierPrime()
                                                                .fontFamily,
                                                            color: w),
                                                      ),
                                                      // Text(
                                                      //   'It\'s that simple.',
                                                      //   style: TextStyle(
                                                      //       fontSize: 24.0,
                                                      //       fontFamily: GoogleFonts
                                                      //               .courierPrime()
                                                      //           .fontFamily,
                                                      //       color: w),
                                                      // ),
                                                    ],
                                                  ),
                                                )
                                              : SizedBox.shrink(),
                                        ],
                                      ),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                            page2Scroll
                                ? Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Transform.scale(
                                        scale: width > 900 ? 1 : 2,
                                        child: SlideInLeft(
                                          //  from: width,
                                          duration: Duration(seconds: 5),
                                          child: FadeIn(
                                            // delay: Duration(seconds: 5),
                                            duration: Duration(seconds: 5),
                                            child: Lottie.asset('json/bg.json',
                                                width: width * 0.3,
                                                height: height * 0.4),
                                          ),
                                        ),
                                      ),
                                      Transform.scale(
                                        scale: width > 900 ? 1 : 2,
                                        child: SlideInRight(
                                          // from: width,
                                          // delay: Duration(seconds: 5),
                                          duration: const Duration(seconds: 5),
                                          child: FadeIn(
                                            duration: Duration(seconds: 5),
                                            //  delay: Duration(seconds: 5),
                                            child: Lottie.asset('json/bg.json',
                                                width: width * 0.3,
                                                height: height * 0.4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : SizedBox.shrink(),
                            page2Scroll
                                ? Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      page2Scroll
                                          ? FadeIn(
                                              delay: const Duration(seconds: 1),
                                              duration:
                                                  const Duration(seconds: 2),
                                              child: Column(
                                                mainAxisAlignment: width > 900
                                                    ? MainAxisAlignment.end
                                                    : MainAxisAlignment.start,
                                                crossAxisAlignment: width > 900
                                                    ? CrossAxisAlignment.end
                                                    : CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'I understand how important it is',
                                                    style: TextStyle(
                                                        fontSize: 24.0,
                                                        fontFamily: GoogleFonts
                                                                .courierPrime()
                                                            .fontFamily,
                                                        color: w),
                                                  ),
                                                  Text(
                                                    'for an app to look good & work perfectly at the same time.',
                                                    style: TextStyle(
                                                        fontSize: 24.0,
                                                        fontFamily: GoogleFonts
                                                                .courierPrime()
                                                            .fontFamily,
                                                        color: w),
                                                  ),
                                                ],
                                              ),
                                            )
                                          : SizedBox.shrink(),
                                      FadeIn(
                                        // from: width,
                                        //delay: const Duration(seconds: 1),
                                        duration: const Duration(seconds: 2),
                                        child: FadeIn(
                                          delay: const Duration(seconds: 1),
                                          duration: const Duration(seconds: 2),
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'FULL STACK ',
                                              style: TextStyle(
                                                  fontSize: 48.0,
                                                  fontFamily: 'radhiumz',
                                                  color: b),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'DEVELOPER',
                                                  style: TextStyle(
                                                      fontSize: 48.0,
                                                      fontFamily: 'radhiumz',
                                                      color: w),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : const SizedBox.shrink(),
                          ],
                        ),
                      ),
                      // page2Scroll
                      //     ? FadeIn(
                      //         delay: const Duration(seconds: 0),
                      //         duration: const Duration(seconds: 2),
                      //         child: AnimatedRotation.AnimatedRotation(
                      //             angle: controller.position.pixels,
                      //             duration: Duration(seconds: 5),
                      //             child:
                      //                 Image(image: AssetImage("/hand2.png"))))
                      //     : SizedBox.shrink(),
                    ],
                  )),
              Container(
                width: width,
                height: height,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedScale(
                      filterQuality: FilterQuality.high,
                      curve: Curves.easeInOutSine,
                      scale: scale - 0.3,
                      duration: Duration(milliseconds: 0),
                      child: page3Scroll
                          ? FadeIn(
                              // delay: const Duration(seconds: 2),
                              duration: const Duration(seconds: 2),
                              child: Opacity(
                                opacity: 0.2,
                                child: Center(
                                  child: Lottie.asset('json/dots.json',
                                      frameRate: FrameRate(60),
                                      width: width,
                                      height: height),
                                ),
                              ),
                            )
                          : SizedBox.shrink(),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: width,
                        height: height,
                        // child: ModelViewer(
                        //   autoRotateDelay: 0,
                        //   src: 'assets/myhead.glb',
                        //   ar: true,
                        //   autoRotate: true,
                        //   cameraControls: true,
                        // ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          page3Scroll
                              ? FadeIn(
                                  // from: width,
                                  // delay: const Duration(seconds: 1),
                                  duration: const Duration(seconds: 2),
                                  child: FadeIn(
                                    delay: const Duration(seconds: 1),
                                    duration: const Duration(seconds: 2),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: 'FLUTTER ',
                                            style: TextStyle(
                                                fontSize: 48.0,
                                                fontFamily: 'radhiumz',
                                                color: w),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'DEVELOPER        ',
                                                style: TextStyle(
                                                    fontSize: 48.0,
                                                    fontFamily: 'radhiumz',
                                                    color: r),
                                              ),
                                            ],
                                          ),
                                        ),
                                        page3Scroll
                                            ? FadeIn(
                                                delay:
                                                    const Duration(seconds: 2),
                                                duration:
                                                    const Duration(seconds: 2),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Flutter is awesome.',
                                                      style: TextStyle(
                                                          fontSize: 24.0,
                                                          fontFamily: GoogleFonts
                                                                  .courierPrime()
                                                              .fontFamily,
                                                          color: w),
                                                    ),
                                                    // Text(
                                                    //   'It\'s that simple.',
                                                    //   style: TextStyle(
                                                    //       fontSize: 24.0,
                                                    //       fontFamily: GoogleFonts
                                                    //               .courierPrime()
                                                    //           .fontFamily,
                                                    //       color: w),
                                                    // ),
                                                  ],
                                                ),
                                              )
                                            : SizedBox.shrink(),
                                      ],
                                    ),
                                  ),
                                )
                              : const SizedBox.shrink(),
                          page3Scroll
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    page3Scroll
                                        ? FadeIn(
                                            delay: const Duration(seconds: 2),
                                            duration:
                                                const Duration(seconds: 2),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  'I am also a graphic designer bringing ideas to design.',
                                                  style: TextStyle(
                                                      fontSize: 24.0,
                                                      fontFamily: GoogleFonts
                                                              .courierPrime()
                                                          .fontFamily,
                                                      color: w),
                                                ),
                                                // Text(
                                                //   'for an app to look good & work perfectly at the same time.',
                                                //   style: TextStyle(
                                                //       fontSize: 24.0,
                                                //       fontFamily: GoogleFonts
                                                //               .courierPrime()
                                                //           .fontFamily,
                                                //       color: w),
                                                // ),
                                              ],
                                            ),
                                          )
                                        : SizedBox.shrink(),
                                    FadeIn(
                                      //from: width,
                                      //delay: const Duration(seconds: 1),
                                      duration: const Duration(seconds: 2),
                                      child: FadeIn(
                                        delay: const Duration(seconds: 1),
                                        duration: const Duration(seconds: 2),
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'GRAPHIC ',
                                            style: TextStyle(
                                                fontSize: 48.0,
                                                fontFamily: 'radhiumz',
                                                color: w),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'DESIGNER',
                                                style: TextStyle(
                                                    fontSize: 48.0,
                                                    fontFamily: 'radhiumz',
                                                    color: r),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width,
                height: height,
                color: r,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: Lottie.asset('json/waves.json',
                          frameRate: FrameRate(60), fit: BoxFit.fill),
                    ),
                    ModelViewer(
                      autoRotateDelay: 0,
                      src: 'assets/images/myhead.glb',
                      ar: true,
                      autoRotate: true,
                      cameraControls: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          page4Scroll
                              ? FadeIn(
                                  // from: width,
                                  // delay: const Duration(seconds: 1),
                                  duration: const Duration(seconds: 2),
                                  child: FadeIn(
                                    delay: const Duration(seconds: 1),
                                    duration: const Duration(seconds: 2),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: 'MUSIC ',
                                            style: TextStyle(
                                                fontSize: 48.0,
                                                fontFamily: 'radhiumz',
                                                color: w),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'PRODUCER        ',
                                                style: TextStyle(
                                                    fontSize: 48.0,
                                                    fontFamily: 'radhiumz',
                                                    color: b),
                                              ),
                                            ],
                                          ),
                                        ),
                                        page4Scroll
                                            ? FadeIn(
                                                delay:
                                                    const Duration(seconds: 2),
                                                duration:
                                                    const Duration(seconds: 2),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'I also produce music on Ableton.',
                                                      style: TextStyle(
                                                          fontSize: 24.0,
                                                          fontFamily: GoogleFonts
                                                                  .courierPrime()
                                                              .fontFamily,
                                                          color: w),
                                                    ),
                                                    // Text(
                                                    //   '(Ableton >>> Fl Studio)',
                                                    //   style: TextStyle(
                                                    //       fontSize: 24.0,
                                                    //       fontFamily: GoogleFonts
                                                    //               .courierPrime()
                                                    //           .fontFamily,
                                                    //       color: w),
                                                    // ),
                                                  ],
                                                ),
                                              )
                                            : SizedBox.shrink(),
                                      ],
                                    ),
                                  ),
                                )
                              : const SizedBox.shrink(),
                          page4Scroll
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    page4Scroll
                                        ? FadeIn(
                                            delay: const Duration(seconds: 2),
                                            duration:
                                                const Duration(seconds: 2),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  'I do a lot of video editing as well.',
                                                  style: TextStyle(
                                                      fontSize: 24.0,
                                                      fontFamily: GoogleFonts
                                                              .courierPrime()
                                                          .fontFamily,
                                                      color: w),
                                                ),
                                                // Text(
                                                //   'for an app to look good & work perfectly at the same time.',
                                                //   style: TextStyle(
                                                //       fontSize: 24.0,
                                                //       fontFamily: GoogleFonts
                                                //               .courierPrime()
                                                //           .fontFamily,
                                                //       color: w),
                                                // ),
                                              ],
                                            ),
                                          )
                                        : SizedBox.shrink(),
                                    FadeIn(
                                      //from: width,
                                      //delay: const Duration(seconds: 1),
                                      duration: const Duration(seconds: 2),
                                      child: FadeIn(
                                        delay: const Duration(seconds: 1),
                                        duration: const Duration(seconds: 2),
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'VIDEO ',
                                            style: TextStyle(
                                                fontSize: 48.0,
                                                fontFamily: 'radhiumz',
                                                color: w),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'PRODUCTION',
                                                style: TextStyle(
                                                    fontSize: 48.0,
                                                    fontFamily: 'radhiumz',
                                                    color: b),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width,
                height: height,
                color: b,
                child: Stack(
                  children: [
                    width > 900
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "TECHNOLOGIES",
                                        style:
                                            TextStyle(fontSize: 30, color: r),
                                      ),
                                      onMousHoverChangeColor("Java", 0, 1),
                                      onMousHoverChangeColor("C", 1, 1),
                                      onMousHoverChangeColor("C++", 2, 1),
                                      onMousHoverChangeColor(
                                          "Javascript", 3, 1),
                                      onMousHoverChangeColor("Dart", 4, 1),
                                      onMousHoverChangeColor("Python", 5, 1),
                                      onMousHoverChangeColor("SQL", 6, 1),
                                    ],
                                  ),
                                  // SizedBox(
                                  //   width: width * 0.3,
                                  // ),
                                  Column(
                                    children: [
                                      customButton(
                                          "Connect on Github",
                                          "https://github.com/nagathota-stevenson",
                                          0,
                                          FontAwesomeIcons.github),
                                      customButton(
                                          "Connect on Instagram",
                                          "https://www.instagram.com/superboy_steve/",
                                          1,
                                          FontAwesomeIcons.instagram),
                                      customButton(
                                          "Connect on Facebook",
                                          "https://www.facebook.com/stevenson.nagathota/",
                                          2,
                                          FontAwesomeIcons.facebook),
                                      customButton(
                                          "Connect on Linkedin",
                                          "https://www.linkedin.com/in/stevenson-nagathota-b83678183",
                                          3,
                                          FontAwesomeIcons.linkedin),
                                      customButton(
                                          "Listen on Spotify",
                                          "https://open.spotify.com/artist/0nVMi9CGb8l9BsR6uMkNW6",
                                          4,
                                          FontAwesomeIcons.spotify),
                                    ],
                                  ),
                                  // SizedBox(
                                  //   width: width * 0.3,
                                  // ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "APPLICATIONS",
                                        style:
                                            TextStyle(fontSize: 30, color: r),
                                      ),
                                      onMousHoverChangeColor("VS Code", 0, 2),
                                      onMousHoverChangeColor("Xcode", 1, 2),
                                      onMousHoverChangeColor("Photoshop", 2, 2),
                                      onMousHoverChangeColor(
                                          "Illustrator", 3, 2),
                                      onMousHoverChangeColor(
                                          "After Effects", 4, 2),
                                      onMousHoverChangeColor("Ableton", 5, 2),
                                      onMousHoverChangeColor(
                                          "Logic Pro X", 6, 2),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "TECHNOLOGIES",
                                        style:
                                            TextStyle(fontSize: 30, color: r),
                                      ),
                                      onMousHoverChangeColor("Java", 0, 1),
                                      onMousHoverChangeColor("C", 1, 1),
                                      onMousHoverChangeColor("C++", 2, 1),
                                      onMousHoverChangeColor(
                                          "Javascript", 3, 1),
                                      onMousHoverChangeColor("Dart", 4, 1),
                                      onMousHoverChangeColor("Python", 5, 1),
                                      onMousHoverChangeColor("SQL", 6, 1),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "APPLICATIONS",
                                        style:
                                            TextStyle(fontSize: 30, color: r),
                                      ),
                                      onMousHoverChangeColor("VS Code", 0, 2),
                                      onMousHoverChangeColor("Xcode", 1, 2),
                                      onMousHoverChangeColor("Photoshop", 2, 2),
                                      onMousHoverChangeColor(
                                          "Illustrator", 3, 2),
                                      onMousHoverChangeColor(
                                          "After Effects", 4, 2),
                                      onMousHoverChangeColor("Ableton", 5, 2),
                                      onMousHoverChangeColor(
                                          "Logic Pro X", 6, 2),
                                    ],
                                  ),
                                  // SizedBox(
                                  //   width: width * 0.3,
                                  // ),
                                  Column(
                                    children: [
                                      customButton(
                                          "Connect on Github",
                                          "https://github.com/nagathota-stevenson",
                                          0,
                                          FontAwesomeIcons.github),
                                      customButton(
                                          "Connect on Instagram",
                                          "https://www.instagram.com/superboy_steve/",
                                          1,
                                          FontAwesomeIcons.instagram),
                                      // customButton(
                                      //     "Connect on Facebook",
                                      //     "https://www.facebook.com/stevenson.nagathota/",
                                      //     2,
                                      //     FontAwesomeIcons.facebook),
                                      customButton(
                                          "Connect on Linkedin",
                                          "https://www.linkedin.com/in/stevenson-nagathota-b83678183",
                                          3,
                                          FontAwesomeIcons.linkedin),
                                      customButton(
                                          "Listen on Spotify",
                                          "https://open.spotify.com/artist/0nVMi9CGb8l9BsR6uMkNW6",
                                          4,
                                          FontAwesomeIcons.spotify),
                                    ],
                                  ),
                                  // SizedBox(
                                  //   width: width * 0.3,
                                  // ),
                                ],
                              ),
                            ],
                          ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
