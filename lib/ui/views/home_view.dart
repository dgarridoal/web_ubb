import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        //TODO: colocar logros en ves de noticias, o imagenes llamativas
        'Home View',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
