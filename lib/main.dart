import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:web_ubb/routers/router.dart';

import 'package:web_ubb/services/navigation_service.dart';

import 'package:web_ubb/ui/layouts/home_layout.dart';

void main() {
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ingeniería Civil en Informática || Univeridad del Bío-Bío',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      initialRoute: Flurorouter.rootRoute,
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: NavigatorService.navigatorKey,
      builder: (context, child) {
        return HomeLayout(child: child!);
      },
    );
  }
}
