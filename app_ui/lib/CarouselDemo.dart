import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final List<String> imgList = [
  'Assets/images/blog_image.png',
  'Assets/images/blog_image.png',
  'Assets/images/blog_image.png',
  'Assets/images/blog_image.png',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    blurRadius: 2,
                    spreadRadius: 1,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              margin: EdgeInsets.only(top: 2, bottom: 2),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                      // Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    ],
                  )),
            ),
          ),
        ))
    .toList();

class CarouselDemo extends StatelessWidget {
  const CarouselDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              aspectRatio: 2,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: imgList.asMap().entries.map((entry) {
      //     return GestureDetector(
      //       onTap: () => _controller.animateToPage(entry.key),
      //       child: AnimatedSmoothIndicator(
      //         activeIndex: _current,
      //         count: imgList.length,
      //       ),
      //       // child: Container(
      //       //   width: 12.0,
      //       //   height: 12.0,
      //       //   margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      //       //   decoration: BoxDecoration(
      //       //       shape: BoxShape.circle,
      //       //       color: (Theme.of(context).brightness == Brightness.dark
      //       //               ? Colors.white
      //       //               : Colors.blue)
      //       //           .withOpacity(_current == entry.key ? 0.9 : 0.06)),
      //       // ),
      //     );
      //   }).toList(),
      // ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSmoothIndicator(
            activeIndex: _current,
            count: imgList.length,
            effect: WormEffect(
                activeDotColor: Colors.blueAccent,
                dotColor: Color.fromARGB(31, 42, 42, 42)),
          )
        ],
      ),
    ]);
  }
}
