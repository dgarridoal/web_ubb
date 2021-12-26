import 'package:flutter/material.dart';

import 'desktop_mode.dart';
import 'mobile_mode.dart';

class HomeLayout extends StatelessWidget {
  final Widget child;
  const HomeLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        children: [
          size.width > 1024
              ? DesktopMode(child: child)
              : MobileMode(child: child),
          size.width < 1024
              ? Container(
                  color: const Color(0xFF242424),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Concepción: Avda. Collao 1202, Casilla 5-C - CP: 4051381. Fono: +56 413111200',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                          'Chillán: Avda. Andrés Bello 720, Casilla 447-C - CP: 3800708. Fono: +56 422463000',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
