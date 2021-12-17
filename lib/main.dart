import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_ubb/ui/core/theme/app_theme.dart';

import 'routers/router.dart';
import 'services/navigation_service.dart';
import 'ui/layouts/home_layout.dart';

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
      theme: AppThemeCustom.lightTheme,
      darkTheme: AppThemeCustom.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: Flurorouter.rootRoute,
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: NavigatorService.navigatorKey,
      builder: (context, child) {
        return HomeLayout(child: child!);
      },
    );
  }
}
