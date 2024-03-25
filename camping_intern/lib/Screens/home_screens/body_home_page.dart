import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BodyHomePage extends StatefulWidget {
  const BodyHomePage({Key? key}) : super(key: key);

  @override
  State<BodyHomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BodyHomePage> {
  List<Widget> items = [
    Container(
      width: 252,
      height: 287,
      decoration: const BoxDecoration(
        color: Color(0xfff2e8080),
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(16),
          right: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 17, right: 16, top: 13, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/image.png',
              width: 219,
              height: 188,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Himalayan mountain peak',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffffecf9f9)),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/location.svg',
                    width: 6.13,
                    height: 8,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Himalayan',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffffecf9f9),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/icon_star.svg',
                    width: 12,
                    height: 10.67,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    '4.5',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffffecf9f9),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items,
      options: CarouselOptions(
        height: 300,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
      ),
    );
  }
}
