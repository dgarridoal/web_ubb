import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imgSlider = [
      'assets/img/imagen1.png',
      'assets/img/imagen2.png',
      'assets/img/imagen3.png',
    ];

    return Container(
      margin: const EdgeInsets.all(20),
      child: Center(
        child: CarouselSlider.builder(
            itemCount: imgSlider.length,
            itemBuilder: (context, index, realIndex) => Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imgSlider[index],
                  ),
                ),
            options: CarouselOptions(
              height: 500,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
            )),
      ),
    );
  }
}
