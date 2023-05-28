import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scroll_indicator/scroll_indicator.dart';

class CarouselSliderWithIndicator extends StatefulWidget {
  @override
  _CarouselSliderWithIndicatorState createState() =>
      _CarouselSliderWithIndicatorState();
}

class _CarouselSliderWithIndicatorState
    extends State<CarouselSliderWithIndicator> {
  int _currentIndex = 0;

  final List<String> images = [
    'image1.jpg',
    'image2.jpg',
    'image3.jpg',
    // Add more image paths here
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: images.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 200.0,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.map((image) {
            int index = images.indexOf(image);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? Colors.blueAccent : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class CustomCarouel extends StatefulWidget {
  CustomCarouel({Key? key}) : super(key: key);

  @override
  State<CustomCarouel> createState() => _CustomCarouelState();
}

class _CustomCarouelState extends State<CustomCarouel> {
  void navigateToRoute(BuildContext context, Widget route) {
    Navigator.push(context, CupertinoPageRoute(builder: (context) => route));
  }

  int _currentIndex = 0;

  final List<String> images = [
    'assets/car.png',
    'assets/car.png',
    'assets/car.png',
    // Add more image paths here
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: List.generate(
              images.length,
              (index) => Card(
                color: Colors.transparent,
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              "assets/car.png",
                            ))),
                    child: Container(),
                  ),
                ),
              ),
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: images.map((image) {
          //     int index = images.indexOf(image);
          //     return Container(
          //       width: 8.0,
          //       height: 8.0,
          //       margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color:
          //             _currentIndex == index ? Colors.blueAccent : Colors.grey,
          //       ),
          //     );
          //   }).toList(),
          // ),
        ],
      ),
    );
  }
}
